_FuchsiaGoodRodHouseFishingGuruText::
	text "Ich bin der"
	line "ältere Bruder des"
	cont "PROFIANGLERS!"

	para "Ich liebe Angeln!"
	cont "Angelst Du auch"
	cont "gerne?"
	done

_FuchsiaGoodRodHouseFishingGuruReceivedGoodRodText::
	text "Klasse! Du bist"
	line "mir sympathisch!"

	para "Nimm das hier"
	line "und gehe angeln!"

	para "<PLAYER> erhält"
	line "eine @"
	text_ram wStringBuffer
	text "!@"
	text_end

_FuchsiaGoodRodHouseFishingGuruThatsSoDisappointingText::
	text "Oh!"
	line "Das ist schade!"
	done

_FuchsiaGoodRodHouseFishingGuruHowAreTheFishText::
	text "Hallo, <PLAYER>!"

	para "Wie beißen die"
	line "Fische?"
	done

_FuchsiaGoodRodHouseFishingGuruNoRoomText::
	text "Oh nein!"

	para "Du hast keinen"
	line "Platz mehr für"
	cont "mein Geschenk!"
	done
