
DISPLAY_FAULTY_GAMEPAK_SCREEN: ;$C30142
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 22
	JSL UNKNOWN_C40B51
	LOADPTR FAULTY_GAME_PAK_GRAPHICS, $0E
	LOADPTR UNKNOWN_7F0000, $12
	JSL DECOMP
	LOADPTR FAULTY_GAME_PAK_ARRANGEMENT, $0E
	LOADPTR UNKNOWN_7F4000, $12
	JSL DECOMP
	JSL UNKNOWN_C40B75
	PLD
	RTL
