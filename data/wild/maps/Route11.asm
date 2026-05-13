Route11WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db  1, GYARADOS
	db  1, LAPRAS
	db  1, EEVEE
	db  1, VAPOREON
	db 13, SPEAROW
	db  1, DROWZEE
	db  1, JOLTEON
	db  1, FLAREON
	db  1, PORYGON
	db  1, OMANYTE
ENDC
IF DEF(_BLUE)
	db  1, GYARADOS
	db  1, LAPRAS
	db  1, EEVEE
	db  1, VAPOREON
	db 13, SPEAROW
	db  1, DROWZEE
	db  1, JOLTEON
	db  1, FLAREON
	db  1, PORYGON
	db  1, OMANYTE
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
