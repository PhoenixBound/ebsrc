
CC_1D_15: ;$C15BCA
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEA
	TCD
	PLA
	TXA
	STA $14
	LDA .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	BNE @UNKNOWN0
	LDA $14
	SEP #PROC_FLAGS::ACCUM8
	LDX .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	STA .LOWORD(CC_ARGUMENT_STORAGE),X
	REP #PROC_FLAGS::ACCUM8
	INC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	LDA #.LOWORD(CC_1D_15)
	BRA @UNKNOWN2
@UNKNOWN0:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0008
	SEP #PROC_FLAGS::INDEX8
	TAY
	REP #PROC_FLAGS::ACCUM8
	LDA $14
	JSL ASL16_ENTRY2
	STA $02
	LDA .LOWORD(CC_ARGUMENT_STORAGE)
	AND #$00FF
	ORA $02
	REP #PROC_FLAGS::INDEX8
	TAX
	STX $12
	BNE @UNKNOWN1
	JSR a:.LOWORD(GET_ARGUMENT_MEMORY)
@UNKNOWN1:
	JSL UNKNOWN_C226F0
	STA $0A
	STZ $0C
	LDX $12
	TXA
	STA $06
	STZ $08
	JSL MULT32
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	LDA #NULL
@UNKNOWN2:
	PLD
	RTS
