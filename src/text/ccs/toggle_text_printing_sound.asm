
CC_1F_04: ;$C17254
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 14
	TXA
	BEQ @UNKNOWN0
	STA $06
	STZ $08
	BRA @UNKNOWN1
@UNKNOWN0:
	JSR a:.LOWORD(GET_ARGUMENT_MEMORY)
@UNKNOWN1:
	LDA $06
	JSR a:.LOWORD(UNKNOWN_C10048)
	LDA #NULL
	PLD
	RTS
