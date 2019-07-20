
CC_1C_0B: ;$C15573
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEC
	TCD
	PLA
	TXA
	STA $12
	LDA #$0003
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
	LDA #.LOWORD(CC_1C_0B)
	JMP a:.LOWORD(@UNKNOWN5)
@UNKNOWN2:
	SEP #PROC_FLAGS::INDEX8
	LDY #$0018
	LDA $12
	STA $06
	STZ $08
	JSL ASL32_ENTRY2
	LDA $08
	PHA
	LDA $06
	PHA
	LDY #$0010
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CC_ARGUMENT_STORAGE)+2
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	JSL ASL32_ENTRY2
	LDA $08
	PHA
	LDA $06
	PHA
	LDY #$0008
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CC_ARGUMENT_STORAGE)+1
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	JSL ASL32_ENTRY2
	MOVE_INT $06, $0A
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CC_ARGUMENT_STORAGE)
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	LDA $06
	ORA $0A
	STA $06
	LDA $08
	ORA $0C
	STA $08
	PLA
	STA $0A
	PLA
	STA $0C
	LDA $06
	ORA $0A
	STA $06
	LDA $08
	ORA $0C
	STA $08
	PLA
	STA $0A
	PLA
	STA $0C
	LDA $06
	ORA $0A
	STA $06
	LDA $08
	ORA $0C
	STA $08
	MOVE_INT_CONSTANT NULL, $0A
	LDA $08
	CMP $0C
	BNE @UNKNOWN3
	LDA $06
	CMP $0A
@UNKNOWN3:
	BNE @UNKNOWN4
	JSR a:.LOWORD(GET_ARGUMENT_MEMORY)
@UNKNOWN4:
	MOVE_INT $06, $0E
	JSL UNKNOWN_C4507A
	LDA #NULL
@UNKNOWN5:
	PLD
	RTS
