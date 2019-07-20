
CC_19_23: ;$C16947
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEC
	TCD
	PLA
	TXA
	STA $12
	LDA #$0004
	CLC
	SBC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	BVC @UNKNOWN0
	BPL @UNKNOWN2
	BRA @UNKNOWN1
@UNKNOWN0:
	BMI @UNKNOWN2
@UNKNOWN1:
	LDA $12
	SEP #PROC_FLAGS::ACCUM8
	LDX .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	STA .LOWORD(CC_ARGUMENT_STORAGE),X
	REP #PROC_FLAGS::ACCUM8
	INC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	LDA #.LOWORD(CC_19_23)
	JMP a:.LOWORD(@UNKNOWN7)
@UNKNOWN2:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0008
	SEP #PROC_FLAGS::INDEX8
	TAY
	REP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CC_ARGUMENT_STORAGE)+1
	AND #$00FF
	JSL ASL16_ENTRY2
	STA $02
	LDA .LOWORD(CC_ARGUMENT_STORAGE)
	AND #$00FF
	ORA $02
	REP #PROC_FLAGS::INDEX8
	TAX
	BEQ @ARG_1_IS_ZERO
	TXA
	STA $06
	STZ $08
	BRA @ARG_1_IS_NONZERO
@ARG_1_IS_ZERO:
	JSR a:.LOWORD(GET_WORKING_MEMORY)
@ARG_1_IS_NONZERO:
	LDA $06
	STA $02
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CC_ARGUMENT_STORAGE)+2
	STA $00
	SEP #PROC_FLAGS::INDEX8
	LDY #$0008
	REP #PROC_FLAGS::ACCUM8
	LDA $12
	JSL ASL16_ENTRY2
	STA $04
	LDA .LOWORD(CC_ARGUMENT_STORAGE)+3
	AND #$00FF
	ORA $04
	BEQ @ARG_2_IS_ZERO
	STA $06
	STZ $08
	BRA @ARG_2_IS_NONZERO
@ARG_2_IS_ZERO:
	JSR a:.LOWORD(GET_ARGUMENT_MEMORY)
@ARG_2_IS_NONZERO:
	LDA $06
	REP #PROC_FLAGS::INDEX8
	TAY
	LDA $00
	AND #$00FF
	TAX
	DEX
	LDA $02
	JSL UNKNOWN_C462AE
	INC
	STA $06
	STZ $08
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_ARGUMENT_MEMORY)
	LDA #NULL
@UNKNOWN7:
	PLD
	RTS
