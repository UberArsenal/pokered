Route12WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db 24, WEEPINBELL
	db 25, PIDGEOTTO
	db 23, PIDGEOTTO
	db 24, VENONAT
	db 22, WEEPINBELL
	db 26, VENONAT
	db 26, ODDISH
	db 27, PIDGEOTTO
	db 28, GLOOM
	db 30, GLOOM
ENDC
IF DEF(_BLUE)
	db 24, GLOOM
	db 25, PIDGEOTTO
	db 23, PIDGEOTTO
	db 24, VENONAT
	db 22, GLOOM
	db 26, VENONAT
	db 26, BELLSPROUT
	db 27, PIDGEOTTO
	db 28, WEEPINBELL
	db 30, WEEPINBELL
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
