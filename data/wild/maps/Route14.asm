Route14WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db  1, DRAGONITE
	db  1, NIDOQUEEN
	db  1, NIDOKING
	db  1, ELECTABUZZ
	db 22, ODDISH
	db  1, VENONAT
	db 26, ODDISH
	db 30, GLOOM
ENDC
IF DEF(_BLUE)
	db  1, DRAGONITE
	db  1, NIDOQUEEN
	db  1, NIDOKING
	db  1, ELECTABUZZ
	db 22, BELLSPROUT
	db  1, VENONAT
	db 26, BELLSPROUT
	db 30, WEEPINBELL
ENDC
	db  1, PIDGEOTTO
	db  1, PIDGEOTTO
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
