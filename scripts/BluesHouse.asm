BluesHouse_Script:
        call EnableAutoTextBoxDrawing
        ld hl, wCurrentMapScriptFlags
        bit BIT_CUR_MAP_LOADED_1, [hl]
        ret z
        res BIT_CUR_MAP_LOADED_1, [hl]
        SetEvent EVENT_ENTERED_BLUES_HOUSE
        ret

BluesHouse_TextPointers:
        def_text_pointers
        dw_const BluesHouseDaisySittingText, TEXT_BLUESHOUSE_DAISY_SITTING
        dw_const BluesHouseDaisyWalkingText, TEXT_BLUESHOUSE_DAISY_WALKING
        dw_const BluesHouseTownMapText,      TEXT_BLUESHOUSE_TOWN_MAP

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
