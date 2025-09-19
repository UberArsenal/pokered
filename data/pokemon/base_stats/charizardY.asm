	db DEX_CHARIZARDY ; pokedex id

	db  78, 104,  78, 100, 159
	;   hp  atk  def  spd  spc

	db FIRE, DRAGON ; type
	db 45 ; catch rate
	db 209 ; base exp

	INCBIN "gfx/pokemon/front/charizardY.pic", 0, 1 ; sprite dimensions
	dw CharizardYPicFront, CharizardYPicBack

	db SCRATCH, GROWL, FLAMETHROWER, LEER ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   SWORDS_DANCE, MEGA_KICK,    TOXIC,        BODY_SLAM,    \
	     TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   SUBMISSION,   COUNTER,      \
	     SEISMIC_TOSS, RAGE,         DRAGON_RAGE,  EARTHQUAKE,   FISSURE,      \
	     DIG,          MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     FIRE_BLAST,   SWIFT,        SKULL_BASH,   REST,         SUBSTITUTE,   \
	     CUT,          STRENGTH,	 FLY
	; end

	db 0 ; padding
