Route13WildMons:
	def_grass_wildmons 20 ; encounter rate
IF DEF(_RED)
	db  1, OMASTAR
	db  1, KABUTO
	db  1, KABUTOPS
	db  1, DRAGONAIR
	db 25, PIDGEY
	db  1, VENONAT
	db  1, DRAGONITE
	db  1, NIDOQUEEN
	db  1, NIDOKING
	db  1, ELECTABUZZ
ENDC
IF DEF(_BLUE)
	db  1, OMASTAR
	db  1, KABUTO
	db  1, KABUTOPS
	db  1, DRAGONAIR
	db 25, PIDGEY
	db  1, VENONAT
	db  1, DRAGONITE
	db  1, NIDOQUEEN
	db  1, NIDOKING
	db  1, ELECTABUZZ
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
