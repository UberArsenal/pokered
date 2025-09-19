BluesHouse_Script:
        call EnableAutoTextBoxDrawing
        ld hl, BluesHouseTrainerHeaders
        ld de, BluesHouse_ScriptPointers
        ld a, [wBluesHouseCurScript]
        call ExecuteCurMapScriptInTable
        ld [wBluesHouseCurScript], a
        ret

BluesHouse_ScriptPointers:
        def_script_pointers
        dw_const BluesHouseDefaultScript,               SCRIPT_BLUESHOUSE_DEFAULT
        dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_BLUESHOUSE_START_BATTLE
        dw_const EndTrainerBattle,                      SCRIPT_BLUESHOUSE_END_BATTLE
        dw_const BluesHouseNoopScript,                  SCRIPT_BLUESHOUSE_NOOP

BluesHouseDefaultScript:
        ld hl, wCurrentMapScriptFlags
        bit BIT_CUR_MAP_LOADED_1, [hl]
        jr z, .skip_init
        res BIT_CUR_MAP_LOADED_1, [hl]
        SetEvent EVENT_ENTERED_BLUES_HOUSE
        call BluesHouseUpdateOak
.skip_init
        jp CheckFightingMapTrainers

BluesHouseUpdateOak:
        ld a, HS_BLUES_HOUSE_OAK
        ld [wMissableObjectIndex], a
        CheckEvent EVENT_BEAT_CHAMPION_RIVAL
        jr z, .hide_oak
        CheckEvent EVENT_BEAT_MEWTWO
        jr z, .hide_oak
        call BluesHouseSetOakTrainerSet
        predef ShowObject
        CheckEvent EVENT_OAK_BATTLE_COOLDOWN
        jr nz, .clear_cooldown
        ResetEvent EVENT_BEAT_PROF_OAK
        ret

.hide_oak
        ResetEvent EVENT_OAK_BATTLE_COOLDOWN
        ResetEvent EVENT_BEAT_PROF_OAK
        predef HideObject
        ret

.clear_cooldown
        ResetEvent EVENT_OAK_BATTLE_COOLDOWN
        ret

BluesHouseSetOakTrainerSet:
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
        ld a, BLUESHOUSE_OAK
        dec a
        add a
        ld e, a
        ld d, 0
        add hl, de
        inc hl
        ld [hl], b
        ret

BluesHouseNoopScript:
        ret

BluesHouse_TextPointers:
        def_text_pointers
        dw_const BluesHouseDaisySittingText, TEXT_BLUESHOUSE_DAISY_SITTING
        dw_const BluesHouseDaisyWalkingText, TEXT_BLUESHOUSE_DAISY_WALKING
        dw_const BluesHouseTownMapText,      TEXT_BLUESHOUSE_TOWN_MAP
        dw_const BluesHouseOakText,          TEXT_BLUESHOUSE_OAK

BluesHouseDaisySittingText:
	text_asm
	CheckEvent EVENT_GOT_TOWN_MAP
	jr nz, .got_town_map
	CheckEvent EVENT_GOT_POKEDEX
	jr nz, .give_town_map
	ld hl, BluesHouseDaisyRivalAtLabText
	call PrintText
	jr .done

.give_town_map
	ld hl, BluesHouseDaisyOfferMapText
	call PrintText
	lb bc, TOWN_MAP, 1
	call GiveItem
	jr nc, .bag_full
	ld a, HS_TOWN_MAP
	ld [wMissableObjectIndex], a
	predef HideObject
	ld hl, GotMapText
	call PrintText
	SetEvent EVENT_GOT_TOWN_MAP
	jr .done

.got_town_map
	ld hl, BluesHouseDaisyUseMapText
	call PrintText
	jr .done

.bag_full
	ld hl, BluesHouseDaisyBagFullText
	call PrintText
.done
	jp TextScriptEnd

BluesHouseDaisyRivalAtLabText:
	text_far _BluesHouseDaisyRivalAtLabText
	text_end

BluesHouseDaisyOfferMapText:
	text_far _BluesHouseDaisyOfferMapText
	text_end

GotMapText:
	text_far _GotMapText
	sound_get_key_item
	text_end

BluesHouseDaisyBagFullText:
	text_far _BluesHouseDaisyBagFullText
	text_end

BluesHouseDaisyUseMapText:
	text_far _BluesHouseDaisyUseMapText
	text_end

BluesHouseDaisyWalkingText:
        text_far _BluesHouseDaisyWalkingText
        text_end

BluesHouseTownMapText:
        text_far _BluesHouseTownMapText
        text_end

BluesHouseOakText:
        text_asm
        CheckEvent EVENT_BEAT_PROF_OAK
        jr nz, .already_defeated
        SetEvent EVENT_OAK_BATTLE_COOLDOWN
.already_defeated
        ld hl, ProfOakTrainerHeader
        call TalkToTrainer
        jp TextScriptEnd

BluesHouseTrainerHeaders:
        def_trainers
ProfOakTrainerHeader:
        trainer EVENT_BEAT_PROF_OAK, 0, BluesHouseOakBattleText, BluesHouseOakDefeatedText, BluesHouseOakAfterBattleText
        db -1 ; end

BluesHouseOakBattleText:
        text_far _BluesHouseOakBattleText
        text_end

BluesHouseOakDefeatedText:
        text_far _BluesHouseOakDefeatedText
        text_end

BluesHouseOakAfterBattleText:
        text_far _BluesHouseOakAfterBattleText
        text_end
