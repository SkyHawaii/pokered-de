Route9WildMons:
	def_grass_wildmons 15 ; encounter rate
	db  1, GENGAR
	db  1, EXEGGUTOR
	db  1, HITMONLEE
IF DEF(_RED)
	db  1, HITMONCHAN
	db 13, SPEAROW
	db  1, EKANS
	db  1, LICKITUNG
	db  1, STARMIE
	db  1, MR_MIME
	db  1, JYNX
ENDC
IF DEF(_BLUE)
	db  1, HITMONCHAN
	db 13, SPEAROW
	db 15, SANDSHREW
	db  1, LICKITUNG
	db  1, STARMIE
	db  1, MR_MIME
	db  1, JYNX
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
