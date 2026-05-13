SeafoamIslandsB1FWildMons:
	def_grass_wildmons 10 ; encounter rate
IF DEF(_RED)
	db 1, STARYU
	db 30, HORSEA
	db 32, SHELLDER
	db 32, HORSEA
	db 28, SLOWPOKE
	db 1, SEEL
	db 30, SLOWPOKE
	db 1, SEEL
	db 38, DEWGONG
	db 37, SEADRA
ENDC
IF DEF(_BLUE)
	db 30, SHELLDER
	db 30, KRABBY
	db 1, STARYU
	db 32, KRABBY
	db 1, PSYDUCK
	db 1, SEEL
	db 1, PSYDUCK
	db 1, SEEL
	db 38, DEWGONG
	db 37, KINGLER
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
