
CC_1C_0C: ;$C15BA7
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 14
	CPX #$0000
	BEQ @ARG_IS_ZERO
	TXA
	BRA @ARG_IS_NONZERO
@ARG_IS_ZERO:
	JSR a:.LOWORD(GET_ARGUMENT_MEMORY)
	LDA $06
@ARG_IS_NONZERO:
	LDY #$0000
	TYX
	JSR a:.LOWORD(UNKNOWN_C1180D)
	LDA #NULL
	PLD
	RTS
