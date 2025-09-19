; Evos+moves data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, min level (1), species
;    * db EVOLVE_TRADE, min level (1), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

EvosMovesPointerTable:
	table_width 2
	dw RhydonEvosMoves
	dw KangaskhanEvosMoves
	dw NidoranMEvosMoves
	dw ClefairyEvosMoves
	dw SpearowEvosMoves
	dw VoltorbEvosMoves
	dw NidokingEvosMoves
	dw SlowbroEvosMoves
	dw IvysaurEvosMoves
	dw ExeggutorEvosMoves
	dw LickitungEvosMoves
	dw ExeggcuteEvosMoves
	dw GrimerEvosMoves
	dw GengarEvosMoves
	dw NidoranFEvosMoves
	dw NidoqueenEvosMoves
	dw CuboneEvosMoves
	dw RhyhornEvosMoves
	dw LaprasEvosMoves
	dw ArcanineEvosMoves
	dw MewEvosMoves
	dw GyaradosEvosMoves
	dw ShellderEvosMoves
	dw TentacoolEvosMoves
	dw GastlyEvosMoves
	dw ScytherEvosMoves
	dw StaryuEvosMoves
	dw BlastoiseEvosMoves
	dw PinsirEvosMoves
	dw TangelaEvosMoves
	dw MCharizardEvosMoves
	dw CharizardYEvosMoves
	dw GrowlitheEvosMoves
	dw OnixEvosMoves
	dw FearowEvosMoves
	dw PidgeyEvosMoves
	dw SlowpokeEvosMoves
	dw KadabraEvosMoves
	dw GravelerEvosMoves
	dw ChanseyEvosMoves
	dw MachokeEvosMoves
	dw MrMimeEvosMoves
	dw HitmonleeEvosMoves
	dw HitmonchanEvosMoves
	dw ArbokEvosMoves
	dw ParasectEvosMoves
	dw PsyduckEvosMoves
	dw DrowzeeEvosMoves
	dw GolemEvosMoves
	dw Missingno32EvosMoves
	dw MagmarEvosMoves
	dw MissingNo34EvosMoves
	dw ElectabuzzEvosMoves
	dw MagnetonEvosMoves
	dw KoffingEvosMoves
	dw MissingNo38EvosMoves
	dw MankeyEvosMoves
	dw SeelEvosMoves
	dw DiglettEvosMoves
	dw TaurosEvosMoves
	dw MissingNo3DEvosMoves
	dw MissingNo3EEvosMoves
	dw MissingNo3FEvosMoves
	dw FarfetchdEvosMoves
	dw VenonatEvosMoves
	dw DragoniteEvosMoves
	dw MissingNo43EvosMoves
	dw MissingNo44EvosMoves
	dw MissingNo45EvosMoves
	dw DoduoEvosMoves
	dw PoliwagEvosMoves
	dw JynxEvosMoves
	dw MoltresEvosMoves
	dw ArticunoEvosMoves
	dw ZapdosEvosMoves
	dw DittoEvosMoves
	dw MeowthEvosMoves
	dw KrabbyEvosMoves
	dw MissingNo4FEvosMoves
	dw MissingNo50EvosMoves
	dw MissingNo51EvosMoves
	dw VulpixEvosMoves
	dw NinetalesEvosMoves
	dw PikachuEvosMoves
	dw RaichuEvosMoves
	dw MissingNo56EvosMoves
	dw MissingNo57EvosMoves
	dw DratiniEvosMoves
	dw DragonairEvosMoves
	dw KabutoEvosMoves
	dw KabutopsEvosMoves
	dw HorseaEvosMoves
	dw SeadraEvosMoves
	dw MissingNo5EEvosMoves
	dw MissingNo5FEvosMoves
	dw SandshrewEvosMoves
	dw SandslashEvosMoves
	dw OmanyteEvosMoves
	dw OmastarEvosMoves
	dw JigglypuffEvosMoves
	dw WigglytuffEvosMoves
	dw EeveeEvosMoves
	dw FlareonEvosMoves
	dw JolteonEvosMoves
	dw VaporeonEvosMoves
	dw MachopEvosMoves
	dw ZubatEvosMoves
	dw EkansEvosMoves
	dw ParasEvosMoves
	dw PoliwhirlEvosMoves
	dw PoliwrathEvosMoves
	dw WeedleEvosMoves
	dw KakunaEvosMoves
	dw BeedrillEvosMoves
	dw MissingNo73EvosMoves
	dw DodrioEvosMoves
	dw PrimeapeEvosMoves
	dw DugtrioEvosMoves
	dw VenomothEvosMoves
	dw DewgongEvosMoves
	dw MissingNo79EvosMoves
	dw MissingNo7AEvosMoves
	dw CaterpieEvosMoves
	dw MetapodEvosMoves
	dw ButterfreeEvosMoves
	dw MachampEvosMoves
	dw MissingNo7FEvosMoves
	dw GolduckEvosMoves
	dw HypnoEvosMoves
	dw GolbatEvosMoves
	dw MewtwoEvosMoves
	dw SnorlaxEvosMoves
	dw MagikarpEvosMoves
	dw MissingNo86EvosMoves
	dw MissingNo87EvosMoves
	dw MukEvosMoves
	dw MissingNo8AEvosMoves
	dw KinglerEvosMoves
	dw CloysterEvosMoves
	dw MissingNo8CEvosMoves
	dw ElectrodeEvosMoves
	dw ClefableEvosMoves
	dw WeezingEvosMoves
	dw PersianEvosMoves
	dw MarowakEvosMoves
	dw MissingNo92EvosMoves
	dw HaunterEvosMoves
	dw AbraEvosMoves
	dw AlakazamEvosMoves
	dw PidgeottoEvosMoves
	dw PidgeotEvosMoves
	dw StarmieEvosMoves
	dw BulbasaurEvosMoves
	dw VenusaurEvosMoves
	dw TentacruelEvosMoves
	dw MissingNo9CEvosMoves
	dw GoldeenEvosMoves
	dw SeakingEvosMoves
	dw MissingNo9FEvosMoves
	dw MissingNoA0EvosMoves
	dw MissingNoA1EvosMoves
	dw MissingNoA2EvosMoves
	dw PonytaEvosMoves
	dw RapidashEvosMoves
	dw RattataEvosMoves
	dw RaticateEvosMoves
	dw NidorinoEvosMoves
	dw NidorinaEvosMoves
	dw GeodudeEvosMoves
	dw PorygonEvosMoves
	dw AerodactylEvosMoves
	dw MewtwoXEvosMoves
	dw MagnemiteEvosMoves
	dw MissingNoAEEvosMoves
	dw MissingNoAFEvosMoves
	dw CharmanderEvosMoves
	dw SquirtleEvosMoves
	dw CharmeleonEvosMoves
	dw WartortleEvosMoves
	dw CharizardEvosMoves
	dw MissingNoB5EvosMoves
	dw FossilKabutopsEvosMoves
	dw FossilAerodactylEvosMoves
	dw MonGhostEvosMoves
	dw OddishEvosMoves
	dw GloomEvosMoves
	dw VileplumeEvosMoves
	dw BellsproutEvosMoves
	dw WeepinbellEvosMoves
	dw VictreebelEvosMoves
	assert_table_length NUM_POKEMON_INDEXES

RhydonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 30, STOMP
	db 35, FISSURE
	db 40, FURY_ATTACK
	db 45, ROCK_SLIDE
	db 50, EARTHQUAKE
	db 55, HORN_DRILL
	db 0

KangaskhanEvosMoves:
; Evolutions
	db 0
; Learnset
	db 26, BITE
	db 31, TAIL_WHIP
	db 36, DIZZY_PUNCH
	db 41, LEER
	db 46, MEGA_PUNCH
	db 50, DOUBLE_EDGE
	db 55, THRASH
	db 0

NidoranMEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, NIDORINO
	db 0
; Learnset
	db 8, POISON_STING
	db 12, DOUBLE_KICK
	db 16, HORN_ATTACK
	db 21, FOCUS_ENERGY
	db 29, FURY_ATTACK
	db 36, HORN_DRILL
	db 43, DOUBLE_KICK
	db 0

ClefairyEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, CLEFABLE
	db 0
; Learnset
	db 13, SING
	db 18, DOUBLESLAP
	db 24, MINIMIZE
	db 27, HEADBUTT
	db 31, METRONOME
	db 39, BARRIER
	db 48, LIGHT_SCREEN
	db 56, DOUBLE_EDGE
	db 0

SpearowEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 20, FEAROW
	db 0
; Learnset
	db 9, LEER
	db 15, FURY_ATTACK
	db 22, WING_ATTACK
	db 29, DRILL_PECK
	db 36, AGILITY
	db 43, MIRROR_MOVE
	db 50, SKY_ATTACK
	db 0

VoltorbEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0
; Learnset
	db 17, SONICBOOM
	db 22, SELFDESTRUCT
	db 29, LIGHT_SCREEN
	db 32, THUNDERBOLT
	db 36, SWIFT
	db 43, EXPLOSION
	db 50, THUNDER
	db 0

NidokingEvosMoves:
; Evolutions
	db 0
; Learnset
	db 8, HORN_ATTACK
	db 14, POISON_STING
	db 18, FURY_ATTACK
	db 23, FOCUS_ENERGY
	db 28, ACID
	db 32, FISSURE
	db 36, SLUDGE
	db 41, DOUBLE_EDGE
	db 45, EARTHQUAKE
	db 0

SlowbroEvosMoves:
; Evolutions
	db 0
; Learnset
	db 18, WATER_GUN
	db 22, DISABLE
	db 26, HEADBUTT
	db 30, BUBBLEBEAM
	db 33, PSYBEAM
	db 40, AMNESIA
	db 44, PSYCHIC_M
	db 50, HYDRO_PUMP
	db 0

IvysaurEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 32, VENUSAUR
	db 0
; Learnset
	db 7, LEECH_SEED
	db 13, VINE_WHIP
	db 19, POISONPOWDER
	db 22, SLEEP_POWDER
	db 26, ABSORB
	db 30, RAZOR_LEAF
	db 34, MEGA_DRAIN
	db 38, GROWTH
	db 46, SLEEP_POWDER
	db 54, SOLARBEAM
	db 0

ExeggutorEvosMoves:
; Evolutions
	db 0
; Learnset
	db 25, REFLECT
	db 28, MEGA_DRAIN
	db 32, SLEEP_POWDER
	db 35, RAZOR_LEAF
	db 38, PSYBEAM
	db 42, GROWTH
	db 46, PSYCHIC_M
	db 51, SOLARBEAM
	db 0

LickitungEvosMoves:
; Evolutions
	db 0
; Learnset
	db 7, STOMP
	db 15, DISABLE
	db 23, DEFENSE_CURL
	db 27, HEADBUTT
	db 31, SLAM
	db 34, BODY_SLAM
	db 39, SCREECH
	db 45, DIZZY_PUNCH
	db 0

ExeggcuteEvosMoves:
; Evolutions
	db EVOLVE_ITEM, LEAF_STONE, 1, EXEGGUTOR
	db 0
; Learnset
	db 25, REFLECT
	db 28, MEGA_DRAIN
	db 32, SLEEP_POWDER
	db 35, RAZOR_LEAF
	db 38, PSYBEAM
	db 42, GROWTH
	db 46, PSYCHIC_M
	db 51, SOLARBEAM
	db 0

GrimerEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 38, MUK
	db 0
; Learnset
	db 12, POISON_GAS
	db 16, MINIMIZE
	db 20, ACID
	db 27, TOXIC
	db 32, SLUDGE
	db 37, ACID_ARMOR
	db 41, BODY_SLAM
	db 53, EXPLOSION
	db 0

GengarEvosMoves:
; Evolutions
	db 0
; Learnset
	db 21, HYPNOSIS
	db 25, ACID
	db 29, DISABLE
	db 34, GLARE
	db 38, DREAM_EATER
	db 43, SLUDGE
	db 0

NidoranFEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, NIDORINA
	db 0
; Learnset
	db 8, SCRATCH
	db 14, POISON_STING
	db 21, TAIL_WHIP
	db 29, BITE
	db 36, FURY_SWIPES
	db 43, DOUBLE_KICK
	db 0

NidoqueenEvosMoves:
; Evolutions
	db 0
; Learnset
	db 8, HORN_ATTACK
	db 14, POISON_STING
	db 18, FURY_ATTACK
	db 23, FOCUS_ENERGY
	db 28, ACID
	db 32, FISSURE
	db 36, SLUDGE
	db 41, BODY_SLAM
	db 45, EARTHQUAKE
	db 0

CuboneEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0
; Learnset
	db 25, HEADBUTT
	db 31, BONEMERANG
	db 36, FOCUS_ENERGY
	db 43, ROCK_SLIDE
	db 46, EARTHQUAKE
	db 0

RhyhornEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 42, RHYDON
	db 0
; Learnset
	db 30, STOMP
	db 35, FISSURE
	db 40, FURY_ATTACK
	db 45, ROCK_SLIDE
	db 50, EARTHQUAKE
	db 55, HORN_DRILL
	db 0

LaprasEvosMoves:
; Evolutions
	db 0
; Learnset
	db 16, SING
	db 20, MIST
	db 25, BODY_SLAM
	db 28, AURORA_BEAM
	db 31, CONFUSE_RAY
	db 38, ICE_BEAM
	db 46, HYDRO_PUMP
	db 56, BLIZZARD
	db 0

ArcanineEvosMoves:
; Evolutions
	db 0
; Learnset
	db 18, EMBER
	db 23, DRAGON_RAGE
	db 26, FIRE_SPIN
	db 30, TAKE_DOWN
	db 34, FLAMETHROWER
	db 39, AGILITY
	db 43, THRASH
	db 50, FIRE_BLAST
	db 0

MewEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, TRANSFORM
	db 20, MEGA_PUNCH
	db 30, METRONOME
	db 40, PSYCHIC_M
	db 0

GyaradosEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, BITE
	db 25, DRAGON_RAGE
	db 29, BUBBLEBEAM
	db 32, GUST
	db 38, WATERFALL
	db 45, HYDRO_PUMP
	db 52, HYPER_BEAM
	db 59, RAZOR_WIND
	db 0

ShellderEvosMoves:
; Evolutions
	db EVOLVE_ITEM, WATER_STONE, 1, CLOYSTER
	db 0
; Learnset
	db 18, SUPERSONIC
	db 23, CLAMP
	db 27, BUBBLEBEAM
	db 30, AURORA_BEAM
	db 39, BARRIER
	db 43, REST
	db 47, ICE_BEAM
	db 0

TentacoolEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, TENTACRUEL
	db 0
; Learnset
	db 7, SUPERSONIC
	db 13, WRAP
	db 18, POISON_STING
	db 22, WATER_GUN
	db 27, CONSTRICT
	db 33, BARRIER
	db 36, BUBBLEBEAM
	db 40, SCREECH
	db 44, TOXIC
	db 48, HYDRO_PUMP
	db 0

GastlyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0
; Learnset
	db 21, HYPNOSIS
	db 35, DREAM_EATER
	db 0

ScytherEvosMoves:
; Evolutions
	db 0
; Learnset
	db 17, TWINEEDLE
	db 20, WING_ATTACK
	db 24, SWORDS_DANCE
	db 29, VICEGRIP
	db 32, FOCUS_ENERGY
	db 35, SLASH
	db 42, AGILITY
	db 0

StaryuEvosMoves:
; Evolutions
	db EVOLVE_ITEM, WATER_STONE, 1, STARMIE
	db 0
; Learnset
	db 17, WATER_GUN
	db 22, REFLECT
	db 27, RECOVER
	db 32, BUBBLEBEAM
	db 37, MINIMIZE
	db 42, AURORA_BEAM
	db 47, LIGHT_SCREEN
	db 52, HYDRO_PUMP
	db 0

BlastoiseEvosMoves:
; Evolutions
	db 0
; Learnset
	db 8, BUBBLE
	db 15, WATER_GUN
	db 20, WITHDRAW
	db 24, BUBBLEBEAM
	db 31, WATERFALL
	db 36, SKULL_BASH
	db 42, BARRIER
	db 47, LIGHT_SCREEN
	db 52, HYDRO_PUMP
	db 0

PinsirEvosMoves:
; Evolutions
	db 0
; Learnset
	db 25, SEISMIC_TOSS
	db 30, GUILLOTINE
	db 36, FOCUS_ENERGY
	db 43, HARDEN
	db 49, SLASH
	db 54, SWORDS_DANCE
	db 0

TangelaEvosMoves:
; Evolutions
	db 0
; Learnset
	db 29, ABSORB
	db 32, POISONPOWDER
	db 36, STUN_SPORE
	db 39, SLEEP_POWDER
	db 45, MEGA_DRAIN
	db 49, GROWTH
	db 53, PETAL_DANCE
	db 0

MCharizardEvosMoves:
; Evolutions
	db EVOLVE_ITEM, REVERT_STONE, 1, CHARIZARD
	db 0
; Learnset
	db 9, FIRE_PUNCH
	db 15, DRAGON_RAGE
	db 20, WING_ATTACK
	db 24, RAGE
	db 36, SLASH
	db 42, SKY_ATTACK
	db 46, FLAMETHROWER
	db 55, FIRE_BLAST
	db 70, HYPER_BEAM
	db 0

CharizardYEvosMoves:
; Evolutions
	db EVOLVE_ITEM, REVERT_STONE, 1, CHARIZARD
	db 0
; Learnset
	db 9, FIRE_PUNCH
	db 15, DRAGON_RAGE
	db 20, WING_ATTACK
	db 24, RAGE
	db 36, SLASH
	db 42, SKY_ATTACK
	db 46, FLAMETHROWER
	db 55, FIRE_BLAST
	db 70, HYPER_BEAM
	db 0

GrowlitheEvosMoves:
; Evolutions
	db EVOLVE_ITEM, FIRE_STONE, 1, ARCANINE
	db 0
; Learnset
	db 18, EMBER
	db 23, DRAGON_RAGE
	db 26, FIRE_SPIN
	db 30, TAKE_DOWN
	db 34, FLAMETHROWER
	db 39, AGILITY
	db 43, THRASH
	db 50, FIRE_BLAST
	db 0

OnixEvosMoves:
; Evolutions
	db 0
; Learnset
	db 12, ROCK_THROW
	db 15, SHARPEN
	db 20, WRAP
	db 25, FISSURE
	db 31, SLAM
	db 35, ROCK_SLIDE
	db 43, EARTHQUAKE
	db 0

FearowEvosMoves:
; Evolutions
	db 0
; Learnset
	db 9, LEER
	db 15, FURY_ATTACK
	db 22, WING_ATTACK
	db 29, DRILL_PECK
	db 36, AGILITY
	db 43, MIRROR_MOVE
	db 50, SKY_ATTACK
	db 0

PidgeyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0
; Learnset
	db 5, SAND_ATTACK
	db 12, QUICK_ATTACK
	db 15, FOCUS_ENERGY
	db 19, WHIRLWIND
	db 28, WING_ATTACK
	db 36, AGILITY
	db 44, MIRROR_MOVE
	db 0

SlowpokeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 37, SLOWBRO
	db 0
; Learnset
	db 18, WATER_GUN
	db 22, DISABLE
	db 26, HEADBUTT
	db 30, BUBBLEBEAM
	db 33, PSYBEAM
	db 40, AMNESIA
	db 44, PSYCHIC_M
	db 50, HYDRO_PUMP
	db 0

KadabraEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 36, ALAKAZAM
	db 0
; Learnset
	db 16, CONFUSION
	db 20, DISABLE
	db 27, PSYBEAM
	db 31, RECOVER
	db 38, PSYCHIC_M
	db 42, REFLECT
	db 0

GravelerEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 36, GOLEM
	db 0
; Learnset
	db 11, DEFENSE_CURL
	db 16, ROCK_THROW
	db 21, SELFDESTRUCT
	db 26, FISSURE
	db 29, ROCK_SLIDE
	db 36, EARTHQUAKE
	db 42, BARRIER
	db 48, EXPLOSION
	db 0

ChanseyEvosMoves:
; Evolutions
	db 0
; Learnset
	db 24, SING
	db 30, GROWL
	db 38, MINIMIZE
	db 44, DEFENSE_CURL
	db 48, LIGHT_SCREEN
	db 54, DOUBLE_EDGE
	db 0

MachokeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 38, MACHAMP
	db 0
; Learnset
	db 20, LOW_KICK
	db 25, LEER
	db 29, COMET_PUNCH
	db 32, FOCUS_ENERGY
	db 39, SEISMIC_TOSS
	db 46, SUBMISSION
	db 53, MEGA_PUNCH
	db 0

MrMimeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, CONFUSION
	db 23, LIGHT_SCREEN
	db 31, DOUBLESLAP
	db 35, PSYBEAM
	db 39, MEDITATE
	db 47, SUBSTITUTE
	db 50, PSYCHIC_M
	db 0

HitmonleeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 33, ROLLING_KICK
	db 38, JUMP_KICK
	db 43, MEDITATE
	db 48, HI_JUMP_KICK
	db 53, MEGA_KICK
	db 0

HitmonchanEvosMoves:
; Evolutions
	db 0
; Learnset
	db 33, FIRE_PUNCH
	db 38, ICE_PUNCH
	db 43, THUNDERPUNCH
	db 48, MEGA_PUNCH
	db 53, MEDITATE
	db 0

ArbokEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, POISON_STING
	db 15, BITE
	db 21, SCREECH
	db 24, ACID
	db 29, SMOKESCREEN
	db 36, SLUDGE
	db 40, SUBSTITUTE
	db 0

ParasectEvosMoves:
; Evolutions
	db 0
; Learnset
	db 13, STUN_SPORE
	db 20, LEECH_LIFE
	db 30, SPORE
	db 39, SLASH
	db 48, GROWTH
	db 0

PsyduckEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 33, GOLDUCK
	db 0
; Learnset
	db 28, TAIL_WHIP
	db 31, DISABLE
	db 36, CONFUSION
	db 43, FURY_SWIPES
	db 52, HYDRO_PUMP
	db 0

DrowzeeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 26, HYPNO
	db 0
; Learnset
	db 12, DISABLE
	db 17, CONFUSION
	db 24, HEADBUTT
	db 29, SWIFT
	db 32, PSYCHIC_M
	db 37, AMNESIA
	db 43, DREAM_EATER
	db 0

GolemEvosMoves:
; Evolutions
	db 0
; Learnset
	db 11, DEFENSE_CURL
	db 16, ROCK_THROW
	db 21, SELFDESTRUCT
	db 25, DOUBLE_EDGE
	db 29, FISSURE
	db 36, EARTHQUAKE
	db 42, BARRIER
	db 48, EXPLOSION
	db 0

Missingno32EvosMoves:
; Evolutions
	db EVOLVE_ITEM, REVERT_STONE, 1, GYARADOS
	db 0
; Learnset
	db 20, BITE
	db 25, DRAGON_RAGE
	db 29, BUBBLEBEAM
	db 32, GUST
	db 38, WATERFALL
	db 45, HYDRO_PUMP
	db 52, HYPER_BEAM
	db 59, RAZOR_WIND
	db 0

MagmarEvosMoves:
; Evolutions
	db 0
; Learnset
	db 36, LEER
	db 39, CONFUSE_RAY
	db 43, FIRE_PUNCH
	db 48, SMOKESCREEN
	db 52, SMOG
	db 55, FLAMETHROWER
	db 0

MissingNo34EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

ElectabuzzEvosMoves:
; Evolutions
	db 0
; Learnset
	db 34, THUNDERBOLT
	db 37, SCREECH
	db 42, THUNDERPUNCH
	db 49, LIGHT_SCREEN
	db 54, THUNDER
	db 0

MagnetonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, SONICBOOM
	db 20, THUNDERSHOCK
	db 24, SUPERSONIC
	db 30, SWIFT
	db 35, THUNDERBOLT
	db 41, TRI_ATTACK
	db 47, CONFUSE_RAY
	db 0

KoffingEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 35, WEEZING
	db 0
; Learnset
	db 32, SLUDGE
	db 37, SMOKESCREEN
	db 40, SELFDESTRUCT
	db 45, HAZE
	db 48, EXPLOSION
	db 0

MissingNo38EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MankeyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, PRIMEAPE
	db 0
; Learnset
	db 15, KARATE_CHOP
	db 21, FURY_SWIPES
	db 27, FOCUS_ENERGY
	db 33, SEISMIC_TOSS
	db 39, COMET_PUNCH
	db 45, SUBMISSION
	db 0

SeelEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 34, DEWGONG
	db 0
; Learnset
	db 30, GROWL
	db 35, AURORA_BEAM
	db 40, REST
	db 45, TAKE_DOWN
	db 50, ICE_BEAM
	db 55, HYDRO_PUMP
	db 60, BLIZZARD
	db 0

DiglettEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 26, DUGTRIO
	db 0
; Learnset
	db 15, GROWL
	db 19, DIG
	db 24, FURY_SWIPES
	db 28, FISSURE
	db 31, SLASH
	db 40, EARTHQUAKE
	db 0

TaurosEvosMoves:
; Evolutions
	db 0
; Learnset
	db 21, STOMP
	db 28, TAIL_WHIP
	db 35, HORN_ATTACK
	db 44, THRASH
	db 51, DOUBLE_EDGE
	db 58, MEGA_KICK
	db 0

MissingNo3DEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo3EEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo3FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

FarfetchdEvosMoves:
; Evolutions
	db 0
; Learnset
	db 7, LEER
	db 10, GUST
	db 15, FURY_ATTACK
	db 23, SWORDS_DANCE
	db 27, WING_ATTACK
	db 31, AGILITY
	db 39, SLASH
	db 45, DRILL_PECK
	db 0

VenonatEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 31, VENOMOTH
	db 0
; Learnset
	db 24, POISONPOWDER
	db 27, LEECH_LIFE
	db 30, STUN_SPORE
	db 35, PSYBEAM
	db 38, SLEEP_POWDER
	db 43, PSYCHIC_M
	db 0

DragoniteEvosMoves:
; Evolutions
	db 0
; Learnset
	db 7, FIRE_SPIN
	db 10, THUNDER_WAVE
	db 13, WATERFALL
	db 20, DRAGON_RAGE
	db 24, THUNDERPUNCH
	db 30, SLAM
	db 35, TRI_ATTACK
	db 40, THRASH
	db 50, HYPER_BEAM
	db 0

MissingNo43EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo44EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo45EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

DoduoEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 31, DODRIO
	db 0
; Learnset
	db 20, GROWL
	db 24, FURY_ATTACK
	db 30, DRILL_PECK
	db 36, RAGE
	db 40, TRI_ATTACK
	db 44, AGILITY
	db 0

PoliwagEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, POLIWHIRL
	db 0
; Learnset
	db 16, HYPNOSIS
	db 19, WATER_GUN
	db 25, DOUBLESLAP
	db 31, BODY_SLAM
	db 38, AMNESIA
	db 45, HYDRO_PUMP
	db 0

JynxEvosMoves:
; Evolutions
	db 0
; Learnset
	db 18, CONFUSION
	db 23, DOUBLESLAP
	db 27, AURORA_BEAM
	db 31, PSYBEAM
	db 35, SING
	db 39, BODY_SLAM
	db 47, ICE_BEAM
	db 58, BLIZZARD
	db 0

MoltresEvosMoves:
; Evolutions
	db 0
; Learnset
	db 51, FIRE_BLAST
	db 55, AGILITY
	db 60, SKY_ATTACK
	db 0

ArticunoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 51, BLIZZARD
	db 55, AGILITY
	db 60, RAZOR_WIND
	db 66, BARRIER
	db 0

ZapdosEvosMoves:
; Evolutions
	db 0
; Learnset
	db 51, THUNDER
	db 55, AGILITY
	db 60, RAZOR_WIND
	db 66, LIGHT_SCREEN
	db 0

DittoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MeowthEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, PERSIAN
	db 0
; Learnset
	db 12, BITE
	db 17, PAY_DAY
	db 24, FURY_SWIPES
	db 33, SCREECH
	db 38, HEADBUTT
	db 43, SLASH
	db 0

KrabbyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, KINGLER
	db 0
; Learnset
	db 20, VICEGRIP
	db 23, BUBBLEBEAM
	db 28, SLASH
	db 30, CRABHAMMER
	db 35, CLAMP
	db 40, GUILLOTINE
	db 49, HYDRO_PUMP
	db 0

MissingNo4FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo50EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo51EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

VulpixEvosMoves:
; Evolutions
	db EVOLVE_ITEM, FIRE_STONE, 1, NINETALES
	db 0
; Learnset
	db 16, QUICK_ATTACK
	db 21, ROAR
	db 25, FIRE_SPIN
	db 29, FLAMETHROWER
	db 35, SWIFT
	db 42, CONFUSE_RAY
	db 0

NinetalesEvosMoves:
; Evolutions
	db 0
; Learnset
	db 16, QUICK_ATTACK
	db 21, ROAR
	db 25, FIRE_SPIN
	db 29, FLAMETHROWER
	db 35, SWIFT
	db 42, CONFUSE_RAY
	db 0

PikachuEvosMoves:
; Evolutions
	db EVOLVE_ITEM, THUNDER_STONE, 1, RAICHU
	db 0
; Learnset
	db 9, THUNDER_WAVE
	db 16, QUICK_ATTACK
	db 21, HEADBUTT
	db 26, THUNDERBOLT
	db 33, AGILITY
	db 38, DOUBLE_TEAM
	db 43, THUNDERPUNCH
	db 49, THUNDER
	db 0

RaichuEvosMoves:
; Evolutions
	db 0
; Learnset
	db 11, THUNDER_WAVE
	db 18, QUICK_ATTACK
	db 23, HEADBUTT
	db 29, THUNDERBOLT
	db 35, AGILITY
	db 40, DOUBLE_TEAM
	db 45, THUNDERPUNCH
	db 51, THUNDER
	db 0

MissingNo56EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo57EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

DratiniEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0
; Learnset
	db 7, FIRE_SPIN
	db 10, THUNDER_WAVE
	db 13, WATER_GUN
	db 20, DRAGON_RAGE
	db 24, THUNDERSHOCK
	db 30, SLAM
	db 35, TRI_ATTACK
	db 40, THRASH
	db 50, HYPER_BEAM
	db 0

DragonairEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0
; Learnset
	db 10, THUNDER_WAVE
	db 20, AGILITY
	db 35, WATERFALL
	db 40, TRI_ATTACK
	db 45, THRASH
	db 55, HYPER_BEAM
	db 0

KabutoEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, KABUTOPS
	db 0
; Learnset
	db 34, MEGA_DRAIN
	db 39, SLASH
	db 44, ROCK_SLIDE
	db 49, HYDRO_PUMP
	db 0

KabutopsEvosMoves:
; Evolutions
	db 0
; Learnset
	db 34, MEGA_DRAIN
	db 39, SLASH
	db 44, ROCK_SLIDE
	db 49, HYDRO_PUMP
	db 0

HorseaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 32, SEADRA
	db 0
; Learnset
	db 10, SWIFT
	db 13, WATER_GUN
	db 24, REST
	db 30, BUBBLEBEAM
	db 37, AGILITY
	db 45, HYDRO_PUMP
	db 0

SeadraEvosMoves:
; Evolutions
	db 0
; Learnset
	db 19, SMOKESCREEN
	db 24, LEER
	db 30, DRAGON_RAGE
	db 36, BIDE
	db 41, AGILITY
	db 49, HYDRO_PUMP
	db 56, HYPER_BEAM
	db 0

MissingNo5EEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo5FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

SandshrewEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 22, SANDSLASH
	db 0
; Learnset
	db 10, SAND_ATTACK
	db 17, FURY_SWIPES
	db 22, DIG
	db 24, POISON_STING
	db 28, FISSURE
	db 31, SWIFT
	db 38, EARTHQUAKE
	db 42, SWORDS_DANCE
	db 0

SandslashEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, SAND_ATTACK
	db 17, FURY_SWIPES
	db 22, DIG
	db 24, POISON_STING
	db 28, FISSURE
	db 31, SWIFT
	db 38, EARTHQUAKE
	db 42, SWORDS_DANCE
	db 0

OmanyteEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, OMASTAR
	db 0
; Learnset
	db 34, ROCK_THROW
	db 39, LEER
	db 46, BUBBLEBEAM
	db 53, ROCK_SLIDE
	db 60, HYDRO_PUMP
	db 0

OmastarEvosMoves:
; Evolutions
	db 0
; Learnset
	db 34, ROCK_THROW
	db 39, LEER
	db 46, BUBBLEBEAM
	db 53, ROCK_SLIDE
	db 60, HYDRO_PUMP
	db 0

JigglypuffEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, WIGGLYTUFF
	db 0
; Learnset
	db 9, DOUBLESLAP
	db 14, DISABLE
	db 19, DEFENSE_CURL
	db 24, HEADBUTT
	db 29, REST
	db 34, BODY_SLAM
	db 39, DOUBLE_EDGE
	db 0

WigglytuffEvosMoves:
; Evolutions
	db 0
; Learnset
	db 9, DOUBLESLAP
	db 14, DISABLE
	db 19, DEFENSE_CURL
	db 24, HEADBUTT
	db 29, REST
	db 34, BODY_SLAM
	db 39, DOUBLE_EDGE
	db 0

EeveeEvosMoves:
; Evolutions
	db EVOLVE_ITEM, FIRE_STONE, 1, FLAREON
	db EVOLVE_ITEM, THUNDER_STONE, 1, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, 1, VAPOREON
	db 0
; Learnset
	db 27, TAIL_WHIP
	db 31, BITE
	db 37, HEADBUTT
	db 45, TAKE_DOWN
	db 53, DOUBLE_EDGE
	db 0

FlareonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 27, QUICK_ATTACK
	db 31, FLAMETHROWER
	db 37, TAIL_WHIP
	db 40, BITE
	db 42, LEER
	db 44, FIRE_SPIN
	db 48, RAGE
	db 54, FIRE_BLAST
	db 0

JolteonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 27, QUICK_ATTACK
	db 31, THUNDERBOLT
	db 37, TAIL_WHIP
	db 40, THUNDER_WAVE
	db 42, DOUBLE_KICK
	db 44, AGILITY
	db 48, PIN_MISSILE
	db 54, THUNDER
	db 0

VaporeonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 27, QUICK_ATTACK
	db 31, BUBBLEBEAM
	db 37, TAIL_WHIP
	db 40, BITE
	db 42, ACID_ARMOR
	db 44, WATERFALL
	db 48, MIST
	db 54, HYDRO_PUMP
	db 0

MachopEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, MACHOKE
	db 0
; Learnset
	db 20, LOW_KICK
	db 25, LEER
	db 29, COMET_PUNCH
	db 32, FOCUS_ENERGY
	db 39, SEISMIC_TOSS
	db 46, SUBMISSION
	db 53, MEGA_PUNCH
	db 0

ZubatEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0
; Learnset
	db 10, SUPERSONIC
	db 13, POISON_STING
	db 16, BITE
	db 21, CONFUSE_RAY
	db 28, WING_ATTACK
	db 36, HAZE
	db 0

EkansEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 22, ARBOK
	db 0
; Learnset
	db 10, POISON_STING
	db 15, BITE
	db 21, SCREECH
	db 24, ACID
	db 29, SMOKESCREEN
	db 36, SLUDGE
	db 40, SUBSTITUTE
	db 0

ParasEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 24, PARASECT
	db 0
; Learnset
	db 13, STUN_SPORE
	db 20, VICEGRIP
	db 27, SPORE
	db 34, SLASH
	db 41, GROWTH
	db 48, RAZOR_LEAF
	db 54, PETAL_DANCE
	db 0

PoliwhirlEvosMoves:
; Evolutions
	db EVOLVE_ITEM, WATER_STONE, 1, POLIWRATH
	db 0
; Learnset
	db 16, HYPNOSIS
	db 19, WATER_GUN
	db 22, COMET_PUNCH
	db 26, BUBBLEBEAM
	db 33, BODY_SLAM
	db 41, AMNESIA
	db 49, HYDRO_PUMP
	db 0

PoliwrathEvosMoves:
; Evolutions
	db 0
; Learnset
	db 16, HYPNOSIS
	db 19, WATER_GUN
	db 26, COMET_PUNCH
	db 33, MEGA_PUNCH
	db 37, BUBBLEBEAM
	db 41, MEDITATE
	db 44, WATERFALL
	db 49, HYDRO_PUMP
	db 0

WeedleEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0
; Learnset
	db 6, LEECH_LIFE
	db 0

KakunaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 10, BEEDRILL
	db 0
; Learnset
	db 7, HARDEN
	db 0

BeedrillEvosMoves:
; Evolutions
	db 0
; Learnset
	db 12, FURY_ATTACK
	db 16, FOCUS_ENERGY
	db 20, PIN_MISSILE
	db 25, HORN_ATTACK
	db 30, TWINEEDLE
	db 35, AGILITY
	db 40, SLUDGE
	db 0

MissingNo73EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

DodrioEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, GROWL
	db 24, FURY_ATTACK
	db 30, DRILL_PECK
	db 34, AGILITY
	db 39, RAGE
	db 45, TRI_ATTACK
	db 51, SKY_ATTACK
	db 0

PrimeapeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, KARATE_CHOP
	db 21, FURY_SWIPES
	db 27, FOCUS_ENERGY
	db 33, SEISMIC_TOSS
	db 39, COMET_PUNCH
	db 45, SUBMISSION
	db 0

DugtrioEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, GROWL
	db 19, DIG
	db 24, FURY_SWIPES
	db 28, FISSURE
	db 31, SLASH
	db 40, EARTHQUAKE
	db 0

VenomothEvosMoves:
; Evolutions
	db 0
; Learnset
	db 24, POISONPOWDER
	db 27, LEECH_LIFE
	db 30, STUN_SPORE
	db 33, PSYBEAM
	db 38, SLEEP_POWDER
	db 43, PSYCHIC_M
	db 0

DewgongEvosMoves:
; Evolutions
	db 0
; Learnset
	db 30, GROWL
	db 35, AURORA_BEAM
	db 40, REST
	db 45, TAKE_DOWN
	db 50, ICE_BEAM
	db 55, HYDRO_PUMP
	db 60, BLIZZARD
	db 0

MissingNo79EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo7AEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

CaterpieEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 7, METAPOD
	db 0
; Learnset
	db 0

MetapodEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0
; Learnset
	db 7, HARDEN
	db 0

ButterfreeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, CONFUSION
	db 15, POISONPOWDER
	db 16, STUN_SPORE
	db 17, SLEEP_POWDER
	db 21, PSYBEAM
	db 26, GUST
	db 32, MEGA_DRAIN
	db 37, AMNESIA
	db 41, PSYCHIC_M
	db 0

MachampEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, LOW_KICK
	db 25, LEER
	db 29, COMET_PUNCH
	db 32, FOCUS_ENERGY
	db 39, SEISMIC_TOSS
	db 46, SUBMISSION
	db 53, MEGA_PUNCH
	db 0

MissingNo7FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

GolduckEvosMoves:
; Evolutions
	db 0
; Learnset
	db 28, TAIL_WHIP
	db 31, DISABLE
	db 39, CONFUSION
	db 48, FURY_SWIPES
	db 59, HYDRO_PUMP
	db 0

HypnoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 12, DISABLE
	db 17, CONFUSION
	db 24, HEADBUTT
	db 29, SWIFT
	db 32, PSYCHIC_M
	db 37, AMNESIA
	db 43, DREAM_EATER
	db 0

GolbatEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, SUPERSONIC
	db 15, BITE
	db 21, CONFUSE_RAY
	db 26, WING_ATTACK
	db 30, ACID
	db 36, SLUDGE
	db 43, HAZE
	db 49, RAZOR_WIND
	db 0

MewtwoEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MEWTWONITE_X, 1, MEWTWO_X
; Learnset
	db 63, BARRIER
	db 66, PSYCHIC_M
	db 70, RECOVER
	db 75, MIST
	db 81, AMNESIA
	db 0

SnorlaxEvosMoves:
; Evolutions
	db 0
; Learnset
	db 35, BODY_SLAM
	db 41, BARRIER
	db 44, SWIFT
	db 48, DOUBLE_EDGE
	db 52, AMNESIA
	db 56, HYPER_BEAM
	db 0

MagikarpEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0
; Learnset
	db 10, BUBBLE
	db 15, TACKLE
	db 0

MissingNo86EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo87EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MukEvosMoves:
; Evolutions
	db 0
; Learnset
	db 12, POISON_GAS
	db 16, MINIMIZE
	db 20, ACID
	db 27, TOXIC
	db 32, SLUDGE
	db 37, ACID_ARMOR
	db 41, BODY_SLAM
	db 53, EXPLOSION
	db 0

MissingNo8AEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

KinglerEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, VICEGRIP
	db 23, BUBBLEBEAM
	db 28, SLASH
	db 30, CRABHAMMER
	db 35, CLAMP
	db 40, GUILLOTINE
	db 49, HYDRO_PUMP
	db 0

CloysterEvosMoves:
; Evolutions
	db 0
; Learnset
	db 18, SUPERSONIC
	db 23, CLAMP
	db 27, BUBBLEBEAM
	db 30, AURORA_BEAM
	db 39, BARRIER
	db 43, REST
	db 47, ICE_BEAM
	db 50, SPIKE_CANNON
	db 0

MissingNo8CEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

ElectrodeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 17, SONICBOOM
	db 22, SELFDESTRUCT
	db 29, LIGHT_SCREEN
	db 32, THUNDERBOLT
	db 36, SWIFT
	db 43, EXPLOSION
	db 50, THUNDER
	db 0

ClefableEvosMoves:
; Evolutions
	db 0
; Learnset
	db 13, SING
	db 18, DOUBLESLAP
	db 24, MINIMIZE
	db 27, HEADBUTT
	db 31, METRONOME
	db 39, BARRIER
	db 48, LIGHT_SCREEN
	db 56, DOUBLE_EDGE
	db 0

WeezingEvosMoves:
; Evolutions
	db 0
; Learnset
	db 32, SLUDGE
	db 39, SMOKESCREEN
	db 43, SELFDESTRUCT
	db 49, HAZE
	db 53, EXPLOSION
	db 0

PersianEvosMoves:
; Evolutions
	db 0
; Learnset
	db 12, BITE
	db 17, PAY_DAY
	db 24, FURY_SWIPES
	db 33, SCREECH
	db 38, HEADBUTT
	db 43, SLASH
	db 0

MarowakEvosMoves:
; Evolutions
	db 0
; Learnset
	db 25, HEADBUTT
	db 31, BONEMERANG
	db 36, FOCUS_ENERGY
	db 39, NIGHT_SHADE
	db 43, ROCK_SLIDE
	db 46, EARTHQUAKE
	db 54, AMNESIA
	db 0

MissingNo92EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

HaunterEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 36, GENGAR
	db 0
; Learnset
	db 21, HYPNOSIS
	db 25, ACID
	db 29, DISABLE
	db 34, GLARE
	db 38, DREAM_EATER
	db 0

AbraEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, KADABRA
	db 0
; Learnset
	db 0

AlakazamEvosMoves:
; Evolutions
	db 0
; Learnset
	db 16, CONFUSION
	db 20, DISABLE
	db 27, PSYBEAM
	db 31, RECOVER
	db 38, PSYCHIC_M
	db 42, REFLECT
	db 0

PidgeottoEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 36, PIDGEOT
	db 0
; Learnset
	db 5, SAND_ATTACK
	db 12, QUICK_ATTACK
	db 21, WHIRLWIND
	db 24, WING_ATTACK
	db 29, SWIFT
	db 34, RAZOR_WIND
	db 40, AGILITY
	db 49, SKY_ATTACK
	db 0

PidgeotEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, SAND_ATTACK
	db 12, QUICK_ATTACK
	db 21, WHIRLWIND
	db 24, WING_ATTACK
	db 29, SWIFT
	db 34, RAZOR_WIND
	db 41, AGILITY
	db 47, MIRROR_MOVE
	db 54, SKY_ATTACK
	db 0

StarmieEvosMoves:
; Evolutions
	db 0
; Learnset
	db 17, WATER_GUN
	db 22, REFLECT
	db 27, RECOVER
	db 32, BUBBLEBEAM
	db 37, MINIMIZE
	db 42, AURORA_BEAM
	db 47, LIGHT_SCREEN
	db 52, HYDRO_PUMP
	db 0

BulbasaurEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, IVYSAUR
	db 0
; Learnset
	db 8, VINE_WHIP
	db 12, LEECH_SEED
	db 20, POISONPOWDER
	db 27, RAZOR_LEAF
	db 34, GROWTH
	db 41, SLEEP_POWDER
	db 48, SOLARBEAM
	db 0

VenusaurEvosMoves:
; Evolutions
	db 0
; Learnset
	db 7, LEECH_SEED
	db 13, VINE_WHIP
	db 22, POISONPOWDER
	db 30, RAZOR_LEAF
	db 39, GROWTH
	db 43, STUN_SPORE
	db 49, PETAL_DANCE
	db 55, SOLARBEAM
	db 0

TentacruelEvosMoves:
; Evolutions
	db 0
; Learnset
	db 7, SUPERSONIC
	db 13, WRAP
	db 18, POISON_STING
	db 22, WATER_GUN
	db 27, CONSTRICT
	db 30, SLUDGE
	db 33, BARRIER
	db 36, BUBBLEBEAM
	db 40, SCREECH
	db 44, TOXIC
	db 48, HYDRO_PUMP
	db 0

MissingNo9CEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

GoldeenEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 33, SEAKING
	db 0
; Learnset
	db 19, SUPERSONIC
	db 24, HORN_ATTACK
	db 27, BUBBLEBEAM
	db 30, FURY_ATTACK
	db 37, WATERFALL
	db 45, HORN_DRILL
	db 54, AGILITY
	db 0

SeakingEvosMoves:
; Evolutions
	db 0
; Learnset
	db 19, SUPERSONIC
	db 24, HORN_ATTACK
	db 27, BUBBLEBEAM
	db 30, FURY_ATTACK
	db 37, WATERFALL
	db 45, HORN_DRILL
	db 54, AGILITY
	db 0

MissingNo9FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNoA0EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNoA1EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNoA2EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

PonytaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, RAPIDASH
	db 0
; Learnset
	db 30, TAIL_WHIP
	db 32, FIRE_SPIN
	db 35, STOMP
	db 39, FLAMETHROWER
	db 43, TAKE_DOWN
	db 48, AGILITY
	db 53, FIRE_BLAST
	db 0

RapidashEvosMoves:
; Evolutions
	db 0
; Learnset
	db 30, TAIL_WHIP
	db 32, FIRE_SPIN
	db 35, STOMP
	db 39, FLAMETHROWER
	db 43, TAKE_DOWN
	db 48, AGILITY
	db 53, FIRE_BLAST
	db 0

RattataEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 20, RATICATE
	db 0
; Learnset
	db 7, QUICK_ATTACK
	db 14, BITE
	db 17, FURY_SWIPES
	db 20, HYPER_FANG
	db 27, FOCUS_ENERGY
	db 30, HEADBUTT
	db 35, SHARPEN
	db 41, SUPER_FANG
	db 45, SLASH
	db 0

RaticateEvosMoves:
; Evolutions
	db 0
; Learnset
	db 7, QUICK_ATTACK
	db 14, BITE
	db 17, FURY_SWIPES
	db 20, HYPER_FANG
	db 27, FOCUS_ENERGY
	db 30, HEADBUTT
	db 35, SHARPEN
	db 41, SUPER_FANG
	db 45, SLASH
	db 0

NidorinoEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, NIDOKING
	db 0
; Learnset
	db 8, HORN_ATTACK
	db 14, POISON_STING
	db 18, FURY_ATTACK
	db 23, FOCUS_ENERGY
	db 28, ACID
	db 32, BODY_SLAM
	db 36, SLUDGE
	db 41, DOUBLE_EDGE
	db 0

NidorinaEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, NIDOQUEEN
	db 0
; Learnset
	db 8, SCRATCH
	db 14, POISON_STING
	db 18, FURY_ATTACK
	db 23, FOCUS_ENERGY
	db 28, ACID
	db 32, BODY_SLAM
	db 36, SLUDGE
	db 41, DOUBLE_EDGE
	db 0

GeodudeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0
; Learnset
	db 9, DEFENSE_CURL
	db 14, ROCK_THROW
	db 18, DIG
	db 21, SELFDESTRUCT
	db 23, FISSURE
	db 26, ROCK_SLIDE
	db 31, EARTHQUAKE
	db 36, EXPLOSION
	db 0

PorygonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 23, PSYBEAM
	db 26, THUNDER_WAVE
	db 29, RECOVER
	db 33, AMNESIA
	db 36, AGILITY
	db 39, SONICBOOM
	db 43, TRI_ATTACK
	
	db 0

AerodactylEvosMoves:
; Evolutions
	db 0
; Learnset
	db 33, SUPERSONIC
	db 38, BITE
	db 42, SLAM
	db 45, ROCK_SLIDE
	db 54, HYPER_BEAM
	db 60, SKY_ATTACK
	db 0

MewtwoXEvosMoves:
; Evolutions
	db 0
; Learnset
	db 63, BARRIER
	db 66, PSYCHIC_M
	db 70, RECOVER
	db 75, MIST
	db 81, AMNESIA
	db 0

MagnemiteEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0
; Learnset
	db 15, SONICBOOM
	db 20, THUNDERSHOCK
	db 24, SUPERSONIC
	db 30, SWIFT
	db 35, THUNDERBOLT
	db 41, TRI_ATTACK
	db 47, CONFUSE_RAY
	db 0

MissingNoAEEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNoAFEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

CharmanderEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, CHARMELEON
	db 0
; Learnset
	db 8, EMBER
	db 13, COMET_PUNCH
	db 22, RAGE
	db 30, SLASH
	db 38, FLAMETHROWER
	db 46, FIRE_SPIN
	db 0

SquirtleEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0
; Learnset
	db 8, BUBBLE
	db 12, WATER_GUN
	db 22, WITHDRAW
	db 28, BUBBLEBEAM
	db 35, SKULL_BASH
	db 42, HYDRO_PUMP
	db 0

CharmeleonEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 36, CHARIZARD
	db 0
; Learnset
	db 9, EMBER
	db 15, SUBMISSION
	db 24, DRAGON_RAGE
	db 33, FIRE_PUNCH
	db 42, FLAMETHROWER
	db 56, FIRE_SPIN
	db 0

WartortleEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 36, BLASTOISE
	db 0
; Learnset
	db 8, BUBBLE
	db 15, WATER_GUN
	db 20, WITHDRAW
	db 24, BUBBLEBEAM
	db 31, WATERFALL
	db 39, SKULL_BASH
	db 47, HYDRO_PUMP
	db 0

CharizardEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MEGASTONE_Y, 1, CHARIZARDY
	db EVOLVE_ITEM, MEGA_STONE_X, 1, MCHARIZARD
	db 0
; Learnset
	db 9, FIRE_PUNCH
	db 15, DRAGON_RAGE
	db 20, WING_ATTACK
	db 24, RAGE
	db 36, SLASH
	db 42, SKY_ATTACK
	db 46, FLAMETHROWER
	db 55, FIRE_BLAST
	db 0

MissingNoB5EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

FossilKabutopsEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

FossilAerodactylEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MonGhostEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

OddishEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 21, GLOOM
	db 0
; Learnset
	db 15, POISONPOWDER
	db 17, STUN_SPORE
	db 19, SLEEP_POWDER
	db 24, ACID
	db 33, PETAL_DANCE
	db 46, SOLARBEAM
	db 0

GloomEvosMoves:
; Evolutions
	db EVOLVE_ITEM, LEAF_STONE, 1, VILEPLUME
	db 0
; Learnset
	db 15, POISONPOWDER
	db 17, STUN_SPORE
	db 19, SLEEP_POWDER
	db 28, ACID
	db 38, PETAL_DANCE
	db 52, SOLARBEAM
	db 0

VileplumeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, POISONPOWDER
	db 17, STUN_SPORE
	db 19, SLEEP_POWDER
	db 24, ACID
	db 28, MEGA_DRAIN
	db 33, RAZOR_LEAF
	db 39, PETAL_DANCE
	db 46, SOLARBEAM
	db 0

BellsproutEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 21, WEEPINBELL
	db 0
; Learnset
	db 13, WRAP
	db 15, POISONPOWDER
	db 18, SLEEP_POWDER
	db 21, STUN_SPORE
	db 26, ACID
	db 33, RAZOR_LEAF
	db 42, SLAM
	db 0

WeepinbellEvosMoves:
; Evolutions
	db EVOLVE_ITEM, LEAF_STONE, 1, VICTREEBEL
	db 0
; Learnset
	db 13, WRAP
	db 15, POISONPOWDER
	db 18, SLEEP_POWDER
	db 23, STUN_SPORE
	db 29, ACID
	db 38, RAZOR_LEAF
	db 43, SLUDGE
	db 49, PETAL_DANCE
	db 55, SOLARBEAM
	db 0

VictreebelEvosMoves:
; Evolutions
	db 0
; Learnset
	db 13, WRAP
	db 15, POISONPOWDER
	db 18, SLEEP_POWDER
	db 23, STUN_SPORE
	db 29, ACID
	db 38, RAZOR_LEAF
	db 43, SLUDGE
	db 49, PETAL_DANCE
	db 55, SOLARBEAM
	db 0
