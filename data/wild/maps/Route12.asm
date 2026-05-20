Route12WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db  1, JOLTEON
	db  1, FLAREON
	db  1, PORYGON
	db  1, OMANYTE
	db  1, DRAGONAIR
	db  1, VENONAT
	db  1, OMASTAR
	db  1, KABUTO
	db  1, KABUTOPS
	db  1, DRAGONAIR
ENDC
IF DEF(_BLUE)
	db  1, JOLTEON
	db  1, FLAREON
	db  1, PORYGON
	db  1, OMANYTE
	db  1, DRAGONAIR
	db  1, VENONAT
	db  1, OMASTAR
	db  1, KABUTO
	db  1, KABUTOPS
	db  1, DRAGONAIR
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
