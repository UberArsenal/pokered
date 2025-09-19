CeruleanCaveB1F_Script:
	call EnableAutoTextBoxDrawing
	ld hl, CeruleanCaveB1FTrainerHeaders
	ld de, CeruleanCaveB1F_ScriptPointers
	ld a, [wCeruleanCaveB1FCurScript]
	call ExecuteCurMapScriptInTable
	ld [wCeruleanCaveB1FCurScript], a
	ret

CeruleanCaveB1F_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_CERULEANCAVEB1F_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_CERULEANCAVEB1F_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_CERULEANCAVEB1F_END_BATTLE

CeruleanCaveB1F_TextPointers:
	def_text_pointers
	dw_const CeruleanCaveB1FMewtwoText, TEXT_CERULEANCAVEB1F_MEWTWO
	dw_const PickUpItemText,            TEXT_CERULEANCAVEB1F_ULTRA_BALL
	dw_const PickUpItemText,            TEXT_CERULEANCAVEB1F_MAX_REVIVE
	dw_const CeruleanCaveB1FMTXText,	TEXT_CERULEANCAVEB1F_MEWTWONITE_X
CeruleanCaveB1FTrainerHeaders:
	def_trainers
MewtwoTrainerHeader:
	trainer EVENT_BEAT_MEWTWO, 0, MewtwoBattleText, MewtwoBattleText, MewtwoBattleText
	db -1 ; end

CeruleanCaveB1FMewtwoText:
	text_asm
	ld hl, MewtwoTrainerHeader
	call TalkToTrainer
	jp TextScriptEnd

MewtwoBattleText:
	text_far _MewtwoBattleText
	text_asm
	ld a, MEWTWO
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd

CeruleanCaveB1FMTXText:
	text_asm
	CheckEvent EVENT_GOT_MEWTWONITE_X
	jr nz, .got_item
	ld hl, .ThisIsAMegaStoneText
	call PrintText
	lb bc, MEWTWONITE_X, 1
	call GiveItem
	jr nc, .bag_full
	ld hl, .ReceivedMegastoneText
	call PrintText
	SetEvent EVENT_GOT_MEWTWONITE_X
	jr .done
.bag_full
	ld hl, .MewtwoniteXNoRoomText
	call PrintText
	jr .done
.got_item
	predef HideObject
	ld hl, .MewtwoVoiceText
	call PrintText
.done
	jp TextScriptEnd
	
.ThisIsAMegaStoneText:
	text_far _CeruleanCaveB1FMewtwoniteXThisIsAMegaStoneText
	text_end
	
.ReceivedMegastoneText:
	text_far _CeruleanCaveB1FMewtwoniteXReceivedMegastoneText
	sound_get_item_1
	text_end

.MewtwoniteXNoRoomText:
	text_far _CeruleanCaveB1FMewtwoniteXNoRoomText
	text_end

.MewtwoVoiceText:
	text_far _CeruleanCaveB1FMewtwoniteXMewtwoVoiceText
	text_end
