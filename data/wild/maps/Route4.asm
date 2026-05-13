Route4WildMons:
	def_grass_wildmons 20 ; encounter rate
	db  1, VENUSAUR
	db  1, CHARIZARD
	db  1, BLASTOISE
IF DEF(_RED)
	db  1, BUTTERFREE
	db  8, SPEAROW
	db  1, EKANS
	db  1, PIDGEOT
	db  1, NINETALES
	db  1, ARCANINE
	db  1, PERSIAN
ENDC
IF DEF(_BLUE)
	db  1, BUTTERFREE
	db  8, SPEAROW
	db 10, SANDSHREW
	db  1, PIDGEOT
	db  1, NINETALES
	db  1, ARCANINE
	db  1, PERSIAN
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
