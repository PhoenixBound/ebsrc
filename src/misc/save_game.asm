
SAVE_CURRENT_GAME: ;$C22A2C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA .LOWORD(CURRENT_SAVE_SLOT)
	AND #$00FF
	DEC
	JSL SAVE_GAME_SLOT
	RTL