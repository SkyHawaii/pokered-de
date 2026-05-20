Route5WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db  1, PIDGEOT
	db  1, NINETALES
	db  1, ARCANINE
	db  1, PERSIAN
	db  1, MANKEY
	db  1, ODDISH
	db  1, PRIMEAPE
	db  1, CLEFABLE
	db  1, VILEPLUME
	db  1, POLIWRATH
ENDC
IF DEF(_BLUE)
	db  1, PIDGEOT
	db  1, NINETALES
	db  1, ARCANINE
	db  1, PERSIAN
	db  1, MEOWTH
	db  1, BELLSPROUT
	db  1, PRIMEAPE
	db  1, CLEFABLE
	db  1, VILEPLUME
	db  1, POLIWRATH
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
