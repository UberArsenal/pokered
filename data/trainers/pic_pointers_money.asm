MACRO pic_money
	dw \1
	bcd3 \2
ENDM

TrainerPicAndMoneyPointers::
	table_width 5
	; pic pointer, base reward money
	; money received after battle = base money × level of last enemy mon
	pic_money YoungsterPic,    2250
	pic_money BugCatcherPic,   1500
	pic_money LassPic,         2250
	pic_money SailorPic,       4500
	pic_money JrTrainerMPic,   4500
	pic_money JrTrainerFPic,   4500
	pic_money PokemaniacPic,   7500
	pic_money SuperNerdPic,    3750
	pic_money HikerPic,        5250
	pic_money BikerPic,        4500
	pic_money BurglarPic,      13500
	pic_money EngineerPic,     7500
	pic_money AshKetchumPic,   20000
	pic_money FisherPic,       5250
	pic_money SwimmerPic,      1000
	pic_money CueBallPic,      3750
	pic_money GamblerPic,      15750
	pic_money BeautyPic,       15750
	pic_money PsychicPic,      1500
	pic_money RockerPic,       3750
	pic_money JugglerPic,      5250
	pic_money TamerPic,        6000
	pic_money BirdKeeperPic,   3750
	pic_money BlackbeltPic,    3750
	pic_money Rival1Pic,       5250
	pic_money ProfOakPic,      13950
	pic_money JugglerPic,      520
	pic_money ScientistPic,    7500
	pic_money GiovanniPic,     13950
	pic_money RocketPic,       4500
	pic_money CooltrainerMPic, 5250
	pic_money CooltrainerFPic, 5250
	pic_money BrunoPic,        13950
	pic_money BrockPic,        13950
	pic_money MistyPic,        13950
	pic_money LtSurgePic,      13950
	pic_money ErikaPic,        13950
	pic_money KogaPic,         13950
	pic_money BlainePic,       13950
	pic_money SabrinaPic,      13950
	pic_money GentlemanPic,    15750
	pic_money Rival2Pic,       9750
	pic_money Rival3Pic,       13950
	pic_money LoreleiPic,      13950
	pic_money ChannelerPic,    4500
	pic_money AgathaPic,       13950
	pic_money LancePic,        13950
	assert_table_length NUM_TRAINERS
