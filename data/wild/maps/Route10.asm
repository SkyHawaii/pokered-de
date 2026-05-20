Route10WildMons:
	def_grass_wildmons 15 ; encounter rate
	db  1, LICKITUNG
	db  1, STARMIE
	db  1, MR_MIME
IF DEF(_RED)
	db  1, JYNX
	db  1, SPEAROW
	db  1, EKANS
	db  1, GYARADOS
	db  1, LAPRAS
	db  1, EEVEE
	db  1, VAPOREON
ENDC
IF DEF(_BLUE)
	db  1, JYNX
	db  1, SPEAROW
	db  1, SANDSHREW
	db  1, GYARADOS
	db  1, LAPRAS
	db  1, EEVEE
	db  1, VAPOREON
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
