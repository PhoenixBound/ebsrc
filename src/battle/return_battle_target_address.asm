
RETURN_BATTLE_TARGET_ADDRESS: ;$C1ACF2
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA #.LOWORD(UNKNOWN_7E9CF5)
	RTS