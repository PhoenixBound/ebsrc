
CC_1F_52: ;$C144A3
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEA
	TCD
	PLA
	TXA
	JSR a:.LOWORD(NUM_SELECT_PROMPT)
	MOVE_INT_CONSTANT $FFFFFFFF, $0A
	LDA $08
	CMP $0C
	BNE @UNKNOWN0
	LDA $06
	CMP $0A
@UNKNOWN0:
	BNE @UNKNOWN1
	MOVE_INT_CONSTANT NULL, $06
	MOVE_INT $06, $12
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	MOVE_INT $12, $06
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_ARGUMENT_MEMORY)
	BRA @UNKNOWN2
@UNKNOWN1:
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_WORKING_MEMORY)
@UNKNOWN2:
	LDA #NULL
	PLD
	RTS
