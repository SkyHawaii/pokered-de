MACRO npctrade
; give mon, get mon, dialog id, nickname
	db \1, \2, \3
	dname \4, NAME_LENGTH
ENDM

TradeMons:
; entries correspond to TRADE_FOR_* constants
	table_width 3 + NAME_LENGTH
	; The two instances of TRADE_DIALOGSET_EVOLUTION are a leftover
	; from the Japanese Blue trades, which used species that evolve.
	; TRADE_DIALOGSET_EVOLUTION did not refer to evolution in Japanese
	; Red/Green. Japanese Blue changed _AfterTrade2Text to say your Pokémon
	; "went and evolved" and also changed the trades to match. English
	; Red/Blue uses the original JP Red/Green trades but with the JP Blue
	; post-trade text. English Yellow changed _AfterTrade2Text to
	; not mention evolution.
	npctrade SPEAROW,    NIDORINA,  TRADE_DIALOGSET_CASUAL, "BOB"
	npctrade SPEAROW,    ALAKAZAM,  TRADE_DIALOGSET_CASUAL, "MARCEL"
	npctrade SPEAROW,    BEEDRILL,  TRADE_DIALOGSET_HAPPY,  "CHIKUCHIKU" ; unused
	npctrade SPEAROW,    SEEL,      TRADE_DIALOGSET_CASUAL, "ROBBI"
	npctrade SPEAROW,    FARFETCHD, TRADE_DIALOGSET_HAPPY,  "PATTE"
	npctrade SPEAROW,    LICKITUNG, TRADE_DIALOGSET_CASUAL, "MARK"
	npctrade SPEAROW,    JYNX,      TRADE_DIALOGSET_EVOLUTION, "LILLI"
	npctrade SPEAROW,    ELECTRODE, TRADE_DIALOGSET_EVOLUTION, "PIA"
	npctrade SPEAROW,    TANGELA,   TRADE_DIALOGSET_HAPPY,  "TIM"
	npctrade SPEAROW,    NIDORAN_F, TRADE_DIALOGSET_HAPPY,  "NICK"
	assert_table_length NUM_NPC_TRADES
