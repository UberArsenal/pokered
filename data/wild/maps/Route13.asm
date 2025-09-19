Route13WildMons:
	def_grass_wildmons 20 ; encounter rate
IF DEF(_RED)
	db 24, GLOOM
	db 25, PIDGEOTTO
	db 27, PIDGEOTTO
	db 24, VENONAT
	db 22, GLOOM
	db 26, VENONAT
	db 26, ODDISH
	db 25, DITTO
	db 28, WEEPINBELL
	db 30, WEEPINBELL
ENDC
IF DEF(_BLUE)
	db 24, WEEPINBELL
	db 25, PIDGEOTTO
	db 27, PIDGEOTTO
	db 24, VENONAT
	db 22, BELLSPROUT
	db 26, VENONAT
	db 26, BELLSPROUT
	db 25, DITTO
	db 28, GLOOM
	db 30, GLOOM
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
