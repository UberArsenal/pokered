_BluesHouseDaisyRivalAtLabText::
	text "Hi <PLAYER>!"
	line "<RIVAL> is out at"
	cont "Grandpa's lab."
	done

_BluesHouseDaisyOfferMapText::
	text "Grandpa asked you"
	line "to run an errand?"
	cont "Here, this will"
	cont "help you!"
	prompt

_GotMapText::
	text "<PLAYER> got a"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_BluesHouseDaisyBagFullText::
	text "You have too much"
	line "stuff with you."
	done

_BluesHouseDaisyUseMapText::
	text "Use the TOWN MAP"
	line "to find out where"
	cont "you are."
	done

_BluesHouseDaisyWalkingText::
	text "#MON are living"
	line "things! If they"
	cont "get tired, give"
	cont "them a rest!"
	done

_BluesHouseTownMapText::
        text "It's a big map!"
        line "This is useful!"
        done

_BluesHouseOakBattleText::
        text "Ah, <PLAYER>!"
        line "Splendid work in"
        cont "ELITE FOUR bouts."
        para "You even caught"
        line "that MEWTWO as"
        cont "well!"
        para "I was once a"
        line "#MON TRAINER."
        para "Show me your true"
        line "power in one last"
        cont "all-out battle!"
        done

_BluesHouseOakDefeatedText::
        text "Thank you for this"
        line "amazing battle!"
        done

_BluesHouseOakAfterBattleText::
        text "Haven't been that"
        line "excited in years!"
        para "You're quite the"
        line "trainer, <PLAYER>!"
        done
