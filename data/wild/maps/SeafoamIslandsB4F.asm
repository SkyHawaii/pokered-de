SeafoamIslandsB4FWildMons:
	def_grass_wildmons 10 ; encounter rate
IF DEF(_RED)
	db 31, HORSEA
	db 31, SHELLDER
	db 33, HORSEA
	db 33, SHELLDER
	db 29, SLOWPOKE
	db 1, SEEL
	db 31, SLOWPOKE
	db 1, SEEL
	db 39, SLOWBRO
ENDC
IF DEF(_BLUE)
	db 31, KRABBY
	db 1, STARYU
	db 33, KRABBY
	db 1, STARYU
	db 1, PSYDUCK
	db 1, SEEL
	db 1, PSYDUCK
	db 1, SEEL
	db 39, GOLDUCK
ENDC
	db 32, GOLBAT
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
