
UNKNOWN_C46C87: ;$C46C87
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA .LOWORD(UNKNOWN_7E1A42)
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_30X2_TABLE_9),X
	STA .LOWORD(ENTITY_ABS_X_TABLE),X
	LDA .LOWORD(UNKNOWN_30X2_TABLE_10),X
	STA .LOWORD(ENTITY_ABS_Y_TABLE),X
	RTL
