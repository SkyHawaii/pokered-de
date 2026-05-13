SeafoamIslandsB3FWildMons:
	def_grass_wildmons 10 ; encounter rate
IF DEF(_RED)
	db 31, SLOWPOKE
	db 1, SEEL
	db 33, SLOWPOKE
	db 1, SEEL
	db 29, HORSEA
	db 31, SHELLDER
	db 31, HORSEA
	db 29, SHELLDER
	db 39, SEADRA
ENDC
IF DEF(_BLUE)
	db 1, PSYDUCK
	db 1, SEEL
	db 1, PSYDUCK
	db 1, SEEL
	db 29, KRABBY
	db 1, STARYU
	db 31, KRABBY
	db 1, STARYU
	db 39, KINGLER
ENDC
	db 37, DEWGONG
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
