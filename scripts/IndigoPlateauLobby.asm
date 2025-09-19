IndigoPlateauLobby_Script:
	call Serial_TryEstablishingExternallyClockedConnection
	call EnableAutoTextBoxDrawing
	ld hl, wCurrentMapScriptFlags
	bit BIT_CUR_MAP_LOADED_2, [hl]
	res BIT_CUR_MAP_LOADED_2, [hl]
	ret z
	ResetEvent EVENT_VICTORY_ROAD_1_BOULDER_ON_SWITCH
	; Reset Elite Four events if the player started challenging them before
	ld hl, wElite4Flags
	bit BIT_STARTED_ELITE_4, [hl]
	res BIT_STARTED_ELITE_4, [hl]
	ret z
	ResetEventRange INDIGO_PLATEAU_EVENTS_START, EVENT_LANCES_ROOM_LOCK_DOOR
	ret

IndigoPlateauLobby_TextPointers:
	def_text_pointers
	dw_const IndigoPlateauLobbyNurseText,            TEXT_INDIGOPLATEAULOBBY_NURSE
	dw_const IndigoPlateauLobbyGymGuideText,         TEXT_INDIGOPLATEAULOBBY_GYM_GUIDE
	dw_const IndigoPlateauLobbyCooltrainerFText,     TEXT_INDIGOPLATEAULOBBY_COOLTRAINER_F
	dw_const IndigoPlateauLobbyClerkText,            TEXT_INDIGOPLATEAULOBBY_CLERK
	dw_const IndigoPlateauLobbyLinkReceptionistText, TEXT_INDIGOPLATEAULOBBY_LINK_RECEPTIONIST
	dw_const IndigoPlateauLobbyMrFujiText,			 TEXT_INDIGOPLATEAULOBBY_MR_FUJI

IndigoPlateauLobbyNurseText:
	script_pokecenter_nurse

IndigoPlateauLobbyGymGuideText:
	text_far _IndigoPlateauLobbyGymGuideText
	text_end

IndigoPlateauLobbyCooltrainerFText:
	text_far _IndigoPlateauLobbyCooltrainerFText
	text_end

IndigoPlateauLobbyLinkReceptionistText:
	script_cable_club_receptionist

IndigoPlateauLobbyMrFujiText:
	text_asm
	CheckEvent EVENT_GOT_REVERT_STONE
	jr nz, .got_item
	ld hl, .GiveRevertStoneText
	call PrintText
	lb bc, REVERT_STONE, 1
	call GiveItem
	jr nc, .bag_full
	ld hl, .ReceivedRevertStoneText
	call PrintText
	SetEvent EVENT_GOT_REVERT_STONE
	jr .done
.bag_full
	ld hl, .RevertStoneNoRoomText
	call PrintText
	jr .done
.got_item
	ld hl, .GoodLuckAgainText
	call PrintText
.done
	jp TextScriptEnd

.GiveRevertStoneText:
	text_far _IndigoPlateauLobbyMrFujiGiveRevertStoneText
	text_end

.ReceivedRevertStoneText:
	text_far _IndigoPlateauLobbyMrFujiReceivedRevertStoneText
	sound_get_key_item
	text_far _IndigoPlateauLobbyMrFujiGoodLuckText
	text_end

.RevertStoneNoRoomText:
	text_far _IndigoPlateauLobbyMrFujiRevertStoneNoRoomText
	text_end

.GoodLuckAgainText:
	text_far _IndigoPlateauLobbyMrFujiGoodLuckAgainText
	text_end
