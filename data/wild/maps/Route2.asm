Route2WildMons:
	def_grass_wildmons 25 ; encounter rate
	db  1, ZAPDOS
	db  1, MOLTRES
	db  1, SNORLAX
	db  1, AERODACTYL
	db  1, PIDGEY
IF DEF(_RED)
	db  1, WEEDLE
	db  1, IVYSAUR
	db  1, CHARMELEON
	db  1, WARTORTLE
	db  1, BEEDRILL
ENDC
IF DEF(_BLUE)
	db  1, CATERPIE
	db  1, IVYSAUR
	db  1, CHARMELEON
	db  1, WARTORTLE
	db  1, BEEDRILL
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
