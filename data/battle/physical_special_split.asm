PhysicalToSpecialMoves:
; Flying
        db GUST
		db RAZOR_WIND
; Poison
        db ACID
        db SLUDGE
; Normal
        db RAZOR_WIND
        db SWIFT
        db TRI_ATTACK
; Dragon
		db HYPER_BEAM
        db -1 ; end

SpecialToPhysicalMoves:
; Fire
        db FIRE_PUNCH
; Water
        db CLAMP
        db CRABHAMMER
        db WATERFALL
; Grass
        db RAZOR_LEAF
        db VINE_WHIP
; Electric
        db THUNDERPUNCH
; Ice
        db ICE_PUNCH
; Dragon
		db SLAM
		db RAGE
		db THRASH	
        db -1 ; end