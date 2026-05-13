PokemonMansion3FWildMons:
	def_grass_wildmons 10 ; encounter rate
IF DEF(_RED)
	db 1, KOFFING
	db 1, GROWLITHE
	db 1, KOFFING
	db 1, PONYTA
	db 1, PONYTA
	db 40, WEEZING
	db 34, GRIMER
	db 38, WEEZING
	db 1, PONYTA
	db 42, MUK
ENDC
IF DEF(_BLUE)
	db 31, GRIMER
	db 33, VULPIX
	db 35, GRIMER
	db 1, PONYTA
	db 34, MAGMAR
	db 40, MUK
	db 1, KOFFING
	db 38, MUK
	db 1, PONYTA
	db 42, WEEZING
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
