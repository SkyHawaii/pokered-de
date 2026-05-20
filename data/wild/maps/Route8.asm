Route8WildMons:
	def_grass_wildmons 15 ; encounter rate
	db  1, GOLEM
IF DEF(_RED)
	db  1, RAPIDASH
	db  1, FARFETCHD
	db  1, CLOYSTER
	db  1, PIDGEY
	db  1, MANKEY
	db  1, GENGAR
	db  1, EXEGGUTOR
	db  1, HITMONLEE
	db  1, HITMONCHAN
ENDC
IF DEF(_BLUE)
	db  1, RAPIDASH
	db  1, FARFETCHD
	db  1, CLOYSTER
	db  1, PIDGEY
	db  1, MEOWTH
	db  1, GENGAR
	db  1, EXEGGUTOR
	db  1, HITMONLEE
	db  1, HITMONCHAN
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
