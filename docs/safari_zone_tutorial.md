# Safari Zone System Walkthrough

This guide explains the Safari Zone feature from the Pokémon Red and Blue disassembly (`pokered`) in approachable language. Each step traces the code path from stepping up to the gate worker through the end-of-game cleanup, while also unpacking the Game Boy assembly instructions that drive the flow. References to source files use the repository's folder structure so that you can jump straight to the relevant sections.

---

## Step 0 – Key RAM Variables and Events

Before any script runs, the engine allocates a few work-RAM variables that represent Safari Zone state:

- `wNumSafariBalls`: how many Safari Balls you have left (`ram/wram.asm`). It starts at `30` when you pay the entry fee.
- `wSafariSteps`: a 16-bit countdown (max 502) tracking how many steps you can walk inside (`ram/wram.asm`).
- `wSafariZoneGameOver`: a flag set to `1` once time or balls run out so the overworld loop knows to force an exit (`ram/wram.asm`).
- `wSafariEscapeFactor` and `wSafariBaitFactor`: temporary battle modifiers changed by bait/rock choices (`ram/wram.asm`).
- `wSafariZoneGateCurScript` and `wNextSafariZoneGateScript`: script indices for the gate map; they tell the map engine which routine to run next (`ram/wram.asm`).
- Event flags such as `EVENT_IN_SAFARI_ZONE` and `EVENT_SAFARI_GAME_OVER` let other systems know whether you are in an active Safari Game (`macros/scripts/events.asm`).

These variables are read and written by every stage described below.

---

## Step 1 – Gate Script Dispatch

When you enter the Safari Zone Gate map, the dispatcher at the top of `scripts/SafariZoneGate.asm` executes:

```asm
SafariZoneGate_Script:
    call EnableAutoTextBoxDrawing
    ld hl, SafariZoneGate_ScriptPointers
    ld a, [wSafariZoneGateCurScript]
    jp CallFunctionInTable
```

- `call EnableAutoTextBoxDrawing` readies the engine to draw dialogue boxes automatically.
- `ld hl, …` loads the pointer table location into the `HL` register pair.
- `ld a, [wSafariZoneGateCurScript]` pulls the current script index from RAM.
- `jp CallFunctionInTable` jumps to the pointer in the table indexed by `a`.

The script table enumerates entry points like `SCRIPT_SAFARIZONEGATE_DEFAULT`, `SCRIPT_SAFARIZONEGATE_PLAYER_MOVING_RIGHT`, and so on, ensuring the gate reacts differently if you are walking in, exiting, or already in dialogue.

### Instruction spotlight
- `ld` (load) moves data between registers or between memory and registers. Here it loads the script state.
- `call` pushes the current program counter to the stack, then jumps to a subroutine. After the subroutine executes a `ret` (return), execution resumes right after the `call`.
- `jp` jumps unconditionally without saving a return address. Because `CallFunctionInTable` handles the jump internally, it never returns to the dispatcher.

---

## Step 2 – Approaching the Receptionist

The default script (`SafariZoneGateDefaultScript`) runs while the player stands near the front desk.

1. It checks whether you are next to the worker by comparing your coordinates to a short list. (`call ArePlayerCoordsInArray`)
2. If you just walked up from the lower tile, it turns your sprite to face right and enqueues an auto-walk to align you with the counter (`SafariZoneEntranceAutoWalk`).
3. Once aligned, it switches to `SCRIPT_SAFARIZONEGATE_WOULD_YOU_LIKE_TO_JOIN`, which opens the payment dialogue.

The helper `SafariZoneEntranceAutoWalk` is a small routine that sets up simulated joypad states:

```asm
SafariZoneEntranceAutoWalk:
    push af
    ld b, 0
    ld a, c
    ld [wSimulatedJoypadStatesIndex], a
    ld hl, wSimulatedJoypadStatesEnd
    pop af
    call FillMemory
    jp StartSimulatingJoypadStates
```

- `push`/`pop` temporarily store register values on the stack while the routine writes the auto-walk command list.
- `FillMemory` writes the desired button value (`a`) into the simulated joypad buffer `c` times so the overworld loop will keep moving the player automatically.
- `StartSimulatingJoypadStates` flips a flag that tells the overworld loop to read the simulated input instead of the physical buttons.

### Instruction spotlight
- `push` saves register contents onto the stack; `pop` restores them.
- `and` performs a bitwise AND. Scripts often use `and a` as a quick way to set the CPU's zero flag according to whether `a` is zero.
- `ret` pops the return address from the stack and jumps there, ending the current subroutine.

---

## Step 3 – Paying the Entry Fee

`SafariZoneGateSafariZoneWorker1WouldYouLikeToJoinText` contains the main decision logic:

1. The script opens the money box (`ld a, MONEY_BOX`) and calls `YesNoChoice`.
2. If you decline (`jp nz, .PleaseComeAgain`), it plays the farewell text, simulates a short walk down, and returns to the default script.
3. If you accept, the routine loads 500 PokéYen into `hMoney` and calls `HasEnoughMoney`.
4. On success, it subtracts the fee via the `SubBCDPredef`, sets `wNumSafariBalls` to 30, and writes `502` into `wSafariSteps`.
5. It enqueues a three-step upward walk to move you into the inner room, sets `EVENT_IN_SAFARI_ZONE`, clears `EVENT_SAFARI_GAME_OVER`, and switches to `SCRIPT_SAFARIZONEGATE_PLAYER_MOVING`.
6. The concluding `jp TextScriptEnd` is a macro that finalizes the text engine and returns control to the overworld.

Notice how the script uses both `ld` (to write constants into memory) and `ldh` (see below) to interact with high-memory (I/O) registers like `hMoney`.

### Instruction spotlight
- `ldh [address], a` is a Game Boy shorthand for writing to high-memory addresses `$FF00–$FFFF`. It internally adds `$FF00` to the one-byte address. Example: `ldh [hMoney], a` stores the contents of `a` in memory location `$FF8B` without needing a 16-bit immediate operand.
- `xor a` zeroes the `a` register while clearing the carry flag. It is the standard idiom for `a = 0`.
- `jr z, label` is a short (relative) jump that runs if the zero flag is set—commonly used after comparisons or `and a` checks.

---

## Step 4 – Overworld Loop Hooks

Two hooks in `home/overworld.asm` keep the Safari Game state machine in sync with player movement:

1. **Frame hook** (`OverworldLoop`): every frame, after reading inputs, it calls `farcall SafariZoneCheck`. That routine ends the session immediately if `wNumSafariBalls` hit zero. If `wSafariZoneGameOver` was set, the overworld skips normal handling and jumps to the warp-out logic.
2. **Step hook** (`.doneStepCounting` block): when a walking animation finishes, the engine checks `EVENT_IN_SAFARI_ZONE` and, if set, calls `farcall SafariZoneCheckSteps`. That routine decrements `wSafariSteps`. When both bytes reach zero, it triggers the same game-over flow as above.

Both hooks read `wSafariZoneGameOver` right afterwards. If the flag is `1`, the overworld stops further processing and transitions directly to the warp that returns you to the gate attendant.

---

## Step 5 – Countdown and Game Over Routine

`engine/events/hidden_objects/safari_game.asm` houses the shared logic:

### `SafariZoneCheck`
- Uses `CheckEventHL EVENT_IN_SAFARI_ZONE` to bail out quickly if you are not in the zone.
- Checks `wNumSafariBalls`; if zero, it jumps to `SafariZoneGameOver`.

### `SafariZoneCheckSteps`
- Optionally lets debug builds skip the countdown when the B button is held.
- Loads the two bytes of `wSafariSteps` into registers `b` and `c`.
- `or b` combines them to see if either byte is non-zero. If both are zero, it triggers game over.
- Otherwise `dec bc` subtracts one step, and the result is written back into RAM.

### `SafariZoneGameOver`
1. Stops the music (`ld [wAudioFadeOutControl], 0` then `PlaySound` with `SFX_STOP_ALL_MUSIC`).
2. Plays the PA announcement SFX and waits in a loop until the sound channel reports that the effect has started.
3. Displays `TEXT_SAFARI_GAME_OVER` via `DisplayTextID`.
4. Resets the player's movement direction, sets the warp destination to the gate map, and forces `wSafariZoneGateCurScript` to `SCRIPT_SAFARIZONEGATE_LEAVING_SAFARI` so the attendant plays the wrap-up dialogue.
5. Sets `EVENT_SAFARI_GAME_OVER` and `wSafariZoneGameOver` to 1 so the overworld hooks know the session has ended.

### `PrintSafariGameOverText`
- Prints “Times up!” if you still had balls, then “Game over!” from the text table.

---

## Step 6 – Leaving the Safari Zone

Back in `scripts/SafariZoneGate.asm`, the `SafariZoneGateLeavingSafariScript` handles both forced and voluntary exits:

1. Faces the player downward and checks `EVENT_SAFARI_GAME_OVER`.
2. If the event is set (time/bait/balls expired), it clears `EVENT_IN_SAFARI_ZONE`, updates sprites, displays the congratulatory “good haul” text, zeroes `wNumSafariBalls`, and auto-walks the player down three tiles to the payment counter.
3. If the event is clear (you chose to leave early), it prints the prompt asking whether you are ready to quit. Accepting returns remaining balls (`_ReturnSafariBallsText`) and resets both events before simulating the walk out of the gate.
4. In both cases the script eventually lands on `SCRIPT_SAFARIZONEGATE_PLAYER_MOVING_DOWN`, then `SCRIPT_SAFARIZONEGATE_DEFAULT`, restoring normal gate behaviour.

The helper `SafariZoneGateReturnSimulatedJoypadStateScript` simply checks whether the simulated movement finished by testing `wSimulatedJoypadStatesIndex` with `and a`—a common idiom to set the zero flag according to whether the counter has reached zero.

---

## Step 7 – Safari Battle Menu Flow

When a wild encounter starts, `engine/battle/core.asm` inspects `wBattleType` and routes Safari battles through a custom loop:

1. The battle menu is displayed (`DisplayBattleMenu`). Options map to Safari actions instead of moves: `Ball`, `Bait`, `Rock`, and `Run`.
2. After you choose an action, the engine checks `wNumSafariBalls`. If it reached zero, it prints `_OutOfSafariBallsText` and exits the loop.
3. Otherwise it prints the Safari battle narration (`PrintSafariZoneBattleText`) and evaluates whether the Pokémon runs away:
   - Start with `b = enemy speed * 2 (mod 256)`.
   - If bait has been thrown (`wSafariBaitFactor` ≠ 0), divide `b` by four.
   - If rocks were thrown (`wSafariEscapeFactor` ≠ 0), double `b` (capped at 255).
   - Draw a random number; if it is less than `b`, the enemy flees.

### Ball throws
- `ItemUseSafariBall` (same core logic as Ultra Ball) decrements `wNumSafariBalls`, calculates catch odds, and displays the capture animation.

### Bait and rocks
The implementations in `engine/items/item_effects.asm` share a helper (`BaitRockCommon`):

1. Print either “Threw some bait!” or “Threw a rock!”.
2. Adjust `wEnemyMonActualCatchRate`: bait halves it, rocks double it.
3. Zero the opposing factor (`wSafariEscapeFactor` for bait, `wSafariBaitFactor` for rocks) and add a random boost between 1 and 5 to the primary factor, making the effect temporary but stackable.
4. Trigger the corresponding animation and pause 70 frames.

These routines rely heavily on `ld`, `add`, `srl` (shift right logical), and `sla` (shift left arithmetic) to scale escape odds without using multiplication instructions.

---

## Step 8 – HUD Overlay

`PrintSafariZoneSteps` in `engine/overworld/player_state.asm` draws the top-left HUD while you are in any Safari Zone map:

1. Verifies the current map lies between `SAFARI_ZONE_EAST` and `CERULEAN_CAVE_2F` (the Safari map block).
2. Draws a 3×7 text box and prints the remaining steps (`wSafariSteps`) and Safari Ball count (`wNumSafariBalls`).
3. Ensures single-digit ball counts are padded with a blank so the display stays aligned.

This routine is called during the overworld HUD update and relies on helper macros like `hlcoord` (position a tile cursor) and `PrintNumber` to format the values.

---

## Step 9 – Instruction Glossary (quick reference)

| Instruction | Meaning | Safari Zone usage |
|-------------|---------|-------------------|
| `ld r1, r2` | Copy the value from register/memory `r2` into `r1`. | Loading script indices, transferring counters. |
| `ldh [addr], a` | Store `a` into high memory `$FF00 + addr`. | Writing to hardware registers like the money box. |
| `ld [addr], a` | Store `a` into the 16-bit address specified. | Updating `wNumSafariBalls`, `wSafariSteps`. |
| `call label` | Jump to `label`, saving the return point on the stack. | Running helper routines (`YesNoChoice`, `FillMemory`). |
| `ret` | Return from the last `call`. | Ends helper routines like `SafariZoneEntranceAutoWalk`. |
| `jp label` | Jump unconditionally without saving a return point. | Dispatching to script tables (`CallFunctionInTable`). |
| `jr cond, label` | Short jump relative to the current address when the condition is true. | Branches like `jr z, .player_not_next_to_worker`. |
| `xor a` | `a := a XOR a`; result is zero and carry cleared. | Fast way to reset a register or flag. |
| `and a` | Bitwise AND of `a` with itself; leaves `a` unchanged but updates zero flag. | Quick zero test after loading counters. |
| `srl r` | Shift right logical (`r = r >> 1`), filling the top bit with 0. | Halving escape odds after bait. |
| `sla r` | Shift left arithmetic (`r = r << 1`), doubling with carry handling. | Doubling escape odds after rocks. |
| `push r` / `pop r` | Save/restore registers using the stack. | Preserving `af` around buffer setup. |

---

## Step 10 – Putting It All Together

1. **Approach the desk** – default script faces you toward the attendant and optionally nudges you into place with simulated input.
2. **Pay 500** – the dialogue subtracts your money, seeds `wNumSafariBalls`/`wSafariSteps`, flags the Safari Game as active, and walks you through the inner gate.
3. **Explore** – overworld hooks decrement steps and monitor ball count every frame, updating the HUD through `PrintSafariZoneSteps`.
4. **Battles** – Safari-specific battle logic handles bait, rocks, and catch attempts using escape/catch factors stored in work RAM.
5. **End conditions** – hitting zero balls or steps triggers `SafariZoneGameOver`, plays the PA announcement, and warps you back to the gate.
6. **Exit dialogue** – the receptionist either praises your haul or asks whether you really want to leave, then clears the Safari events and restores normal controls.

Understanding each instruction (`ldh`, `xor a`, `ret`, etc.) clarifies how the disassembly tracks state: loads move data into the right registers, XOR zeroes registers cleanly, and `ret` unwinds helper calls. Following the script transitions and work-RAM variables reveals the complete Safari Zone loop from fee payment to forced exit.

