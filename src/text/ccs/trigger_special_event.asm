
CC_1F_41: ;$C172DA
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	TXA
	JSL UNKNOWN_C1BEFC
	CMP #$0000
	STA $06
	STZ $08
	BPL @UNKNOWN0
	DEC $08
@UNKNOWN0:
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	LDA #NULL
	PLD
	RTS
