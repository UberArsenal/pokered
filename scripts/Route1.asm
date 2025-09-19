Route1_Script:
        call EnableAutoTextBoxDrawing
        ld hl, Route1TrainerHeaders
        ld de, Route1_ScriptPointers
        ld a, [wRoute1CurScript]
        call ExecuteCurMapScriptInTable
        ld [wRoute1CurScript], a
        ret

Route1_ScriptPointers:
        def_script_pointers
        dw_const Route1DefaultScript,               SCRIPT_ROUTE1_DEFAULT
        dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_ROUTE1_START_BATTLE
        dw_const EndTrainerBattle,                      SCRIPT_ROUTE1_END_BATTLE
        dw_const Route1NoopScript,                      SCRIPT_ROUTE1_NOOP

Route1DefaultScript:
        ld hl, wCurrentMapScriptFlags
        bit BIT_CUR_MAP_LOADED_1, [hl]
        jr z, .skip_init
        res BIT_CUR_MAP_LOADED_1, [hl]
        call Route1UpdateOak
.skip_init
        jp CheckFightingMapTrainers

Route1UpdateOak:
        ld a, HS_ROUTE_1_OAK
        ld [wMissableObjectIndex], a
        CheckEvent EVENT_BEAT_CHAMPION_RIVAL
        jr z, .hide_oak
        CheckEvent EVENT_BEAT_MEWTWO
        jr z, .hide_oak
        call Route1SetOakTrainerSet
        predef ShowObject
        CheckEvent EVENT_OAK_BATTLE_COOLDOWN
        jr nz, .clear_cooldown
        ResetEvent EVENT_BEAT_PROF_OAK
        ret

.hide_oak:
        ResetEvent EVENT_OAK_BATTLE_COOLDOWN
        ResetEvent EVENT_BEAT_PROF_OAK
        predef HideObject
        ret

.clear_cooldown:
        ResetEvent EVENT_OAK_BATTLE_COOLDOWN
        ret

Route1SetOakTrainerSet:
        ld a, [wPlayerStarter]
        cp STARTER1
        jr nz, .not_starter1
        ld b, $1
        jr .store_set

.not_starter1
        cp STARTER2
        jr nz, .not_starter2
        ld b, $2
        jr .store_set

.not_starter2
        ld b, $0

.store_set
        ld hl, wMapSpriteExtraData
        ld a, ROUTE1_OAK
        dec a
        add a
        ld e, a
        ld d, 0
        add hl, de
        inc hl
        ld [hl], b
        ret

Route1NoopScript:
        ret

Route1_TextPointers:
        def_text_pointers
        dw_const Route1Youngster1Text, TEXT_ROUTE1_YOUNGSTER1
        dw_const Route1Youngster2Text, TEXT_ROUTE1_YOUNGSTER2
        dw_const Route1SignText,       TEXT_ROUTE1_SIGN
        dw_const Route1OakText,        TEXT_ROUTE1_OAK

Route1Youngster1Text:
        text_asm
        CheckAndSetEvent EVENT_GOT_POTION_SAMPLE
        jr nz, .got_item
        ld hl, .MartSampleText
        call PrintText
        lb bc, POTION, 1
        call GiveItem
        jr nc, .bag_full
        ld hl, .GotPotionText
        jr .done
.bag_full
        ld hl, .NoRoomText
        jr .done
.got_item
        ld hl, .AlsoGotPokeballsText
.done
        call PrintText
        jp TextScriptEnd

.MartSampleText:
        text_far _Route1Youngster1MartSampleText
        text_end

.GotPotionText:
        text_far _Route1Youngster1GotPotionText
        sound_get_item_1
        text_end

.AlsoGotPokeballsText:
        text_far _Route1Youngster1AlsoGotPokeballsText
        text_end

.NoRoomText:
        text_far _Route1Youngster1NoRoomText
        text_end

Route1Youngster2Text:
        text_far _Route1Youngster2Text
        text_end

Route1SignText:
        text_far _Route1SignText
        text_end

Route1OakText:
        text_asm
        CheckEvent EVENT_BEAT_PROF_OAK
        jr nz, .already_defeated
        SetEvent EVENT_OAK_BATTLE_COOLDOWN
.already_defeated
        ld hl, Route1ProfOakTrainerHeader
        call TalkToTrainer
        jp TextScriptEnd

Route1TrainerHeaders:
        def_trainers 3
Route1ProfOakTrainerHeader:
        trainer EVENT_BEAT_PROF_OAK, 0, Route1OakBattleText, Route1OakDefeatedText, Route1OakAfterBattleText
        db -1 ; end

Route1OakBattleText:
        text_far _Route1OakBattleText
        text_end

Route1OakDefeatedText:
        text_far _Route1OakDefeatedText
        text_end

Route1OakAfterBattleText:
        text_far _Route1OakAfterBattleText
        text_end
