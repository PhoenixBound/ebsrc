
UNKNOWN_C083C1: ;$C083C1
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	MOVE_INT $0E, a:.LOWORD(UNKNOWN_7E0085)
	LDA a:.LOWORD(PAD_1_STATE)
	STA a:.LOWORD(UNKNOWN_7E008B)
	LDA #$0001
	STA a:.LOWORD(UNKNOWN_7E0089)
	LDA #$8000
	ORA a:.LOWORD(UNKNOWN_7E007B)
	STA a:.LOWORD(UNKNOWN_7E007B)
	RTL
