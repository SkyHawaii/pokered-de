_BluesHouseDaisyRivalAtLabText::
	text "Hallo <PLAYER>!"
	line "<RIVAL> wartet"
	cont "in Opas Labor."
	done

_BluesHouseDaisyOfferMapText::
	text "Ich habe hier"
	line "eine KARTE."

	para "Die kannst Du"
	line "sicher gut"
	cont "gebrauchen!"
	prompt

_GotMapText::
	text "<PLAYER> erhält"
	line "eine @"
	text_ram wStringBuffer
	text "!@"
	text_end

_BluesHouseDaisyBagFullText::
	text "Du trägst zu"
	line "viele Dinge mit"
	cont "Dir herum!"
	done

_BluesHouseDaisyUseMapText::
	text "Benutze die"
	line "KARTE, um Deinen"
	cont "Standort zu"
	cont "bestimmen."
	done

_BluesHouseDaisyWalkingText::
	text "#MON sind"
	line "Lebewesen! Gönne"
	cont "ihnen eine Pause,"
	cont "wenn sie müde"
	cont "sind!"
	done

_BluesHouseTownMapText::
	text "Eine große Karte!"
	line "Sie ist nützlich!"
	done
