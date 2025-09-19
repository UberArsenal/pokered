; checks if the player's coordinates match an arrow movement tile's coordinates
; and if so, decodes the RLE movement data
; b = player Y
; c = player X
DecodeArrowMovementRLE::
        farjp DecodeArrowMovementRLE_

TextScript_ItemStoragePC::
	call SaveScreenTilesToBuffer2
	ld b, BANK(PlayerPC)
	ld hl, PlayerPC
	jr BankswitchAndContinue

TextScript_BillsPC::
	call SaveScreenTilesToBuffer2
	ld b, BANK(BillsPC_)
	ld hl, BillsPC_
	jr BankswitchAndContinue

TextScript_GameCornerPrizeMenu::
	ld b, BANK(CeladonPrizeMenu)
	ld hl, CeladonPrizeMenu
BankswitchAndContinue::
	call Bankswitch
	jp HoldTextDisplayOpen        ; continue to main text-engine function

TextScript_PokemonCenterPC::
	ld b, BANK(ActivatePC)
	ld hl, ActivatePC
	jr BankswitchAndContinue

StartSimulatingJoypadStates::
	xor a
	ld [wOverrideSimulatedJoypadStatesMask], a
	ld [wSpritePlayerStateData2MovementByte1], a
	ld hl, wStatusFlags5
	set BIT_SCRIPTED_MOVEMENT_STATE, [hl]
	ret

IsItemInBag::
; given an item_id in b
; set zero flag if item isn't in player's bag
; else reset zero flag
; related to Pokémon Tower and ghosts
	predef GetQuantityOfItemInBag
	ld a, b
	and a
	ret

DisplayPokedex::
	ld [wPokedexNum], a
	farjp _DisplayPokedex

SetSpriteFacingDirectionAndDelay::
	call SetSpriteFacingDirection
	ld c, 6
	jp DelayFrames

SetSpriteFacingDirection::
	ld a, SPRITESTATEDATA1_FACINGDIRECTION
	ldh [hSpriteDataOffset], a
	call GetPointerWithinSpriteStateData1
	ldh a, [hSpriteFacingDirection]
	ld [hl], a
	ret

SetSpriteImageIndexAfterSettingFacingDirection::
	ld de, SPRITESTATEDATA1_IMAGEINDEX - SPRITESTATEDATA1_FACINGDIRECTION
	add hl, de
	ld [hl], a
	ret

; tests if the player's coordinates are in a specified array
; INPUT:
; hl = address of array
; OUTPUT:
; [wCoordIndex] = if there is match, the matching array index
; sets carry if the coordinates are in the array, clears carry if not
ArePlayerCoordsInArray::
	ld a, [wYCoord]
	ld b, a
	ld a, [wXCoord]
	ld c, a
	; fallthrough

CheckCoords::
	xor a
	ld [wCoordIndex], a
.loop
	ld a, [hli]
	cp $ff ; reached terminator?
	jr z, .notInArray
	push hl
	ld hl, wCoordIndex
	inc [hl]
	pop hl
.compareYCoord
	cp b
	jr z, .compareXCoord
	inc hl
	jr .loop
.compareXCoord
	ld a, [hli]
	cp c
	jr nz, .loop
.inArray
	scf
	ret
.notInArray
	and a
	ret

; tests if a boulder's coordinates are in a specified array
; INPUT:
; hl = address of array
; [hSpriteIndex] = index of boulder sprite
; OUTPUT:
; [wCoordIndex] = if there is match, the matching array index
; sets carry if the coordinates are in the array, clears carry if not
CheckBoulderCoords::
	push hl
	ld hl, wSpritePlayerStateData2MapY
	ldh a, [hSpriteIndex]
	swap a
	ld d, $0
	ld e, a
	add hl, de
	ld a, [hli]
	sub $4 ; because sprite coordinates are offset by 4
	ld b, a
	ld a, [hl]
	sub $4 ; because sprite coordinates are offset by 4
	ld c, a
	pop hl
	jp CheckCoords

GetPointerWithinSpriteStateData1::
       farjp GetPointerWithinSpriteStateData1_

GetPointerWithinSpriteStateData2::
       farjp GetPointerWithinSpriteStateData2_

; decodes a $ff-terminated RLEncoded list
; each entry is a pair of bytes <byte value> <repetitions>
; the final $ff will be replicated in the output list and a contains the number of bytes written
; de: input list
; hl: output list
DecodeRLEList::
        farjp DecodeRLEList_

; sets movement byte 1 for sprite [hSpriteIndex] to $FE and byte 2 to [hSpriteMovementByte2]
SetSpriteMovementBytesToFE::
        farjp SetSpriteMovementBytesToFE_

; sets both movement bytes for sprite [hSpriteIndex] to $FF
SetSpriteMovementBytesToFF::
        farjp SetSpriteMovementBytesToFF_

; returns the sprite movement byte 1 pointer for sprite [hSpriteIndex] in hl
GetSpriteMovementByte1Pointer::
        farjp GetSpriteMovementByte1Pointer_

; returns the sprite movement byte 2 pointer for sprite [hSpriteIndex] in hl
GetSpriteMovementByte2Pointer::
        farjp GetSpriteMovementByte2Pointer_
