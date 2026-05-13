Route7WildMons:
	def_grass_wildmons 15 ; encounter rate
	db  1, ALAKAZAM
IF DEF(_RED)
	db  1, MACHAMP
	db  1, VICTREEBEL
	db  1, TENTACRUEL
	db 22, PIDGEY
	db  1, MANKEY
	db  1, GOLEM
	db  1, RAPIDASH
	db  1, FARFETCHD
	db  1, CLOYSTER
ENDC
IF DEF(_BLUE)
	db  1, MACHAMP
	db  1, VICTREEBEL
	db  1, TENTACRUEL
	db 22, PIDGEY
	db 18, MEOWTH
	db  1, GOLEM
	db  1, RAPIDASH
	db  1, FARFETCHD
	db  1, CLOYSTER
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
