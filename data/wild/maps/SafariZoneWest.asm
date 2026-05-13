SafariZoneWestWildMons:
	def_grass_wildmons 30 ; encounter rate
IF DEF(_RED)
	db 1, NIDORAN_M
	db 26, DODUO
	db 1, VENONAT
	db 1, EXEGGCUTE
	db 1, NIDORINO
	db 1, EXEGGCUTE
	db 1, NIDORAN_F
ENDC
IF DEF(_BLUE)
	db 1, NIDORAN_F
	db 26, DODUO
	db 1, VENONAT
	db 1, EXEGGCUTE
	db 1, NIDORINA
	db 1, EXEGGCUTE
	db 1, NIDORAN_M
ENDC
	db 31, VENOMOTH
	db 1, TAUROS
	db 1, KANGASKHAN
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
