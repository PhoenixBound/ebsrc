
CC_1F_E5: ;$C16BA4
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	TXA
	JSL UNKNOWN_C46594
	LDA #NULL
	RTS