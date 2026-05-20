Route14WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db  1, DRAGONITE
	db  1, NIDOQUEEN
	db  1, NIDOKING
	db  1, ELECTABUZZ
	db  1, ODDISH
	db  1, VENONAT
	db  1, ODDISH
	db  1, GLOOM
ENDC
IF DEF(_BLUE)
	db  1, DRAGONITE
	db  1, NIDOQUEEN
	db  1, NIDOKING
	db  1, ELECTABUZZ
	db  1, BELLSPROUT
	db  1, VENONAT
	db  1, BELLSPROUT
	db  1, WEEPINBELL
ENDC
	db  1, PIDGEOTTO
	db  1, PIDGEOTTO
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
