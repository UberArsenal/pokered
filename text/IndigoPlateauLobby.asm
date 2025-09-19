_IndigoPlateauLobbyGymGuideText::
	text "Yo! Champ in"
	line "making!"

	para "At #MON LEAGUE,"
	line "you have to face"
	cont "the ELITE FOUR in"
	cont "succession."

	para "If you lose, you"
	line "have to start all"
	cont "over again! This"
	cont "is it! Go for it!"
	done

_IndigoPlateauLobbyCooltrainerFText::
	text "From here on, you"
	line "face the ELITE"
	cont "FOUR one by one!"

	para "If you win, a"
	line "door opens to the"
	cont "next trainer!"
	cont "Good luck!"
	done

_IndigoPlateauLobbyMrFujiGiveRevertStoneText::
	text "MR.FUJI: <PLAYER>."

	para "Your #DEX quest"
	line "has come to a"
	cont "pivotal point"
	cont "in your trainer"
	cont "career."

	para "You may have"
	line "seen there are"
	cont "items called"
	cont "MEGA STONEs that"
	cont "are being sold"
	cont "here for use."
	
	para "MEGA STONEs are"
	line "mysterious gems"
	cont "that causes a"
	cont "change in form"
	cont "and a phenominal"
	cont "boost in power"
	cont "to your #MON."
	
	para "However, once"
	line "your #MON"
	cont "change form it"
	cont "cannot return to"
	cont "the way it was."
	
	para "This stone here"
	line "is the solution"
	cont "to changing your"
	cont "#MON back to"
	cont "normal."
	prompt

_IndigoPlateauLobbyMrFujiReceivedRevertStoneText::
	
	text "<PLAYER> received"
	line "a @"
	text_ram wStringBuffer
	text "!@"
	text_end

_IndigoPlateauLobbyMrFujiGoodLuckText::
	text_start

	para "You can use"
	line "this item only"
	cont "once."
	
	para "I wish you the"
	line "best of luck."
	done

_IndigoPlateauLobbyMrFujiRevertStoneNoRoomText::
	text "You must make"
	line "room for this!"
	done

_IndigoPlateauLobbyMrFujiGoodLuckAgainText::
	text "MR.FUJI: You"
	line "really have come"
	cont "far <PLAYER>!"
	
	para "Do your best!"
	line "Make everyone"
	cont "proud!"
	done
