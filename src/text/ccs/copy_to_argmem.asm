
CC_0D: ;$C145EF
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEE
	TCD
	PLA
	CPX #$0000
	BEQ @UNKNOWN0
	JSR a:.LOWORD(GET_SECONDARY_MEMORY)
	STA $06
	STZ $08
	BRA @UNKNOWN1
@UNKNOWN0:
	JSR a:.LOWORD(GET_WORKING_MEMORY)
@UNKNOWN1:
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_ARGUMENT_MEMORY)
	LDA #NULL
	PLD
	RTS
