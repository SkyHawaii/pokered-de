Route6WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db  1, PRIMEAPE
	db  1, CLEFABLE
	db  1, VILEPLUME
	db  1, POLIWRATH
	db  1, MANKEY
	db 15, ODDISH
	db  1, ALAKAZAM
	db  1, MACHAMP
	db  1, VICTREEBEL
	db  1, TENTACRUEL
ENDC
IF DEF(_BLUE)
	db  1, PRIMEAPE
	db  1, CLEFABLE
	db  1, VILEPLUME
	db  1, POLIWRATH
	db 10, MEOWTH
	db 15, BELLSPROUT
	db  1, ALAKAZAM
	db  1, MACHAMP
	db  1, VICTREEBEL
	db  1, TENTACRUEL
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
