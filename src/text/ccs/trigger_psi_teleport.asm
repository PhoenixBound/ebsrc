
CC_1F_20: ;$C14DFB
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEA
	TCD
	PLA
	TXA
	STA $14
	LDA #$0001
	CLC
	SBC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	BVC @UNKNOWN0
	BPL @UNKNOWN2
	BRA @UNKNOWN1
@UNKNOWN0:
	BMI @UNKNOWN2
@UNKNOWN1:
	LDA $14
	SEP #PROC_FLAGS::ACCUM8
	LDX .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	STA .LOWORD(CC_ARGUMENT_STORAGE),X
	REP #PROC_FLAGS::ACCUM8
	INC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	LDA #.LOWORD(CC_1F_20)
	BRA @UNKNOWN7
@UNKNOWN2:
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CC_ARGUMENT_STORAGE)
	STA $00
	REP #PROC_FLAGS::ACCUM8
	LDA $14
	BEQ @UNKNOWN3
	STA $06
	STZ $08
	MOVE_INT $06, $10
	BRA @UNKNOWN4
@UNKNOWN3:
	JSR a:.LOWORD(GET_ARGUMENT_MEMORY)
	MOVE_INT $06, $10
@UNKNOWN4:
	LDA $00
	AND #$00FF
	BEQ @UNKNOWN5
	SEP #PROC_FLAGS::ACCUM8
	LDA $00
	STA $0F
	BRA @UNKNOWN6
@UNKNOWN5:
	JSR a:.LOWORD(GET_WORKING_MEMORY)
	MOVE_INT $06, $0A
	SEP #PROC_FLAGS::ACCUM8
	LDA $0A
	STA $0F
@UNKNOWN6:
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $10, $06
	SEP #PROC_FLAGS::ACCUM8
	LDA $06
	STA $0E
	LDA $0F
	JSL SET_TELEPORT_STATE
	.A16
	LDA #NULL
@UNKNOWN7:
	PLD
	RTS
