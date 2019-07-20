
CC_1F_D0: ;$C163A7
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEC
	TCD
	PLA
	CPX #$0000
	BEQ @ARG_IS_ZERO
	TXA
	BRA @ARG_IS_NONZERO
@ARG_IS_ZERO:
	JSR a:.LOWORD(GET_ARGUMENT_MEMORY)
	LDA $06
@ARG_IS_NONZERO:
	JSL UNKNOWN_C3F1EC
	TAX
	STX $12
	BEQ @UNKNOWN2
	TXA
	JSR a:.LOWORD(UNKNOWN_C1D038)
	STA $06
	STZ $08
	BRA @UNKNOWN3
@UNKNOWN2:
	MOVE_INT_CONSTANT NULL, $06
@UNKNOWN3:
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	LDX $12
	TXA
	STA $06
	STZ $08
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_ARGUMENT_MEMORY)
	LDA #NULL
	PLD
	RTS
