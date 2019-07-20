
CC_19_19: ;$C1597F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEC
	TCD
	PLA
	TXY
	STY $12
	LDA #$0001
	CLC
	SBC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	BVC @UNKNOWN0
	BPL @UNKNOWN2
	BRA @UNKNOWN1
@UNKNOWN0:
	BMI @UNKNOWN2
@UNKNOWN1:
	TYA
	SEP #PROC_FLAGS::ACCUM8
	LDX .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	STA .LOWORD(CC_ARGUMENT_STORAGE),X
	REP #PROC_FLAGS::ACCUM8
	INC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	LDA #.LOWORD(CC_19_19)
	BRA @UNKNOWN7
@UNKNOWN2:
	LDA .LOWORD(CC_ARGUMENT_STORAGE)
	AND #$00FF
	TAX
	BEQ @ARG_IS_ZERO
	TXA
	BRA @ARG_IS_NONZERO
@ARG_IS_ZERO:
	JSR a:.LOWORD(GET_WORKING_MEMORY)
	LDA $06
@ARG_IS_NONZERO:
	STA $02
	LDY $12
	BEQ @UNKNOWN5
	TYA
	BRA @UNKNOWN6
@UNKNOWN5:
	JSR a:.LOWORD(GET_ARGUMENT_MEMORY)
	LDA $06
@UNKNOWN6:
	TAX
	LDA $02
	JSL UNKNOWN_C3E977
	STA $06
	STZ $08
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_ARGUMENT_MEMORY)
	LDA $02
	STA $06
	STZ $08
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	LDA #NULL
@UNKNOWN7:
	PLD
	RTS
