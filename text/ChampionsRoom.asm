_ChampionsRoomRivalIntroText::
	text "<RIVAL>: Hallo!"

	para "Auf diesen Moment"
	line "warte ich schon"
	cont "lange, <PLAYER>!"

	para "Ich brauche einen"
	line "starken Gegner, "
	cont "um mich in Form"
	cont "zu halten!"

	para "Für meinen #DEX"
	line "wählte ich nur"
	cont "die stärksten"
	cont "#MON aus!"

	para "Ich baute Teams,"
	line "die ALLE #MON"
	cont "besiegen können!"

	para "Und nun bin ich"
	line "Champion der"
	cont "PKMN-LIGA!"

	para "<PLAYER>! Das"
	line "bedeutet: Ich bin"
	cont "der mächtigste"
	cont "Trainer der Welt!"
	done

_RivalDefeatedText::
	text "NEIN!"
	line "Das kann nicht"
	cont "wahr sein! Meine"
	cont "besten #MON"
	cont "sind geschlagen!"

	para "Mein Siegeszug"
	line "ist schon vorbei?"

	para "Nach all der Mühe,"
	line "LIGA-CHAMPION zu"
	cont "werden? Unfair!"
	prompt

_RivalVictoryText::
	text "Haha! Ich"
	line "habe GEWONNEN!"

	para "Ich bin einfach "
	line "zu gut für Dich, "
	cont "<PLAYER>!"

	para "Du kamst weit,"
	line "aber ich hätte"
	cont "mehr erwartet,"
	cont "<RIVAL>!"

	para "Vielleicht beim"
	line "nächsten Mal!"
	cont "Hahaha!"
	prompt

_ChampionsRoomRivalAfterBattleText::
	text "Wieso? Wieso habe"
	line "ich verloren?"

	para "Ich habe meine"
	line "#MON sorgfältig"
	cont "aufgezogen..."
	cont "Verdammt! Du bist"
	cont "der neue"
	cont "CHAMPION der"
	cont "PKMN-LIGA!"

	para "Aber ich gönne"
	line "Dir das nicht!"
	done

_ChampionsRoomOakText::
	text "EICH: <PLAYER>!"
	done

_ChampionsRoomOakCongratulatesPlayerText::
	text "EICH: Du hast"
	line "also gewonnen!"
	cont "Glückwunsch!"
	cont "Du bist der neue"
	cont "Champion der"
	cont "PKMN-LIGA!"

	para "Du hast viel"
	line "dazugelernt, seit"
	cont "Du Dich mit"
	cont "@"
	text_ram wNameBuffer

	text " auf"
	cont "den Weg gemacht"
	cont "hast!"

	para "<PLAYER>, Du bist"
	line "viel erfahrener!"
	done

_ChampionsRoomOakDisappointedWithRivalText::
	text "EICH: <RIVAL>!"
	line "Du hast mich"
	cont "sehr enttäuscht!"

	para "Ich hörte, Du"
	line "hättest die TOP"
	cont "VIER besiegt."
	cont "Doch nun bist Du"
	cont "der Verlierer!"

	para "<RIVAL>, weißt"
	line "Du, warum Du"
	cont "verloren hast?"

	para "Du gabst Deinen"
	line "#MON zu wenig"
	cont "Liebe und"
	cont "Vertrauen!"
	cont "So siegst Du nie!"
	done

_ChampionsRoomOakComeWithMeText::
	text "EICH: <PLAYER>!"

	para "Du hast"
	line "begriffen, daß"
	cont "Dein Sieg nicht"
	cont "alleine Dein"
	cont "Verdienst war!"

	para "Deine Beziehung"
	line "zu Deinen #MON"
	cont "ist vorbildlich!"
	cont "<PLAYER>, folge"
	cont "mir!"
	done
