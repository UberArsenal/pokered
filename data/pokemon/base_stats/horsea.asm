	db DEX_HORSEA ; pokedex id

	db  45,  40,  75,  70,  75
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 225 ; catch rate
	db 83 ; base exp

	INCBIN "gfx/pokemon/front/horsea.pic", 0, 1 ; sprite dimensions
	dw HorseaPicFront, HorseaPicBack

	db BUBBLE, DOUBLE_TEAM, TOXIC, LEER ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    \
	     ICE_BEAM,     BLIZZARD,     RAGE,         MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         SWIFT,        SKULL_BASH,   REST,         SUBSTITUTE,   \
	     SURF
	; end

	db 0 ; padding
