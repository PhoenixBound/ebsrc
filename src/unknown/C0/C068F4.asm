
UNKNOWN_C068F4: ;$C068F4
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEE
	TCD
	PLA
	STA $10
	LDA .LOWORD(UNKNOWN_7E5DD8)
	BEQ @UNKNOWN0
	JMP a:.LOWORD(@UNKNOWN4)
@UNKNOWN0:
	LDA $10
	XBA
	AND #$00FF
	STA $02
	LDY #$0080
	TXA
	JSL DIVISION16S_DIVISOR_POSITIVE
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $02
	TAX
	LDA f:MAP_DATA_PER_SECTOR_MUSIC,X
	AND #$00FF
	STA $10
	LOADPTR DOOR_DATA&$FF0000, $0A
	LDA $10
	ASL
	TAX
	LDA f:OVERWORLD_EVENT_MUSIC_PTR_TABLE,X
	AND #$7FFF
	CLC
	ADC $0A
	STA $0A
@UNKNOWN1:
	MOVE_INT $0A, $06
	LDA [$06]
	BEQ @UNKNOWN3
	AND #$7FFF
	JSL GET_EVENT_FLAG
	STA $0E
	LDX #$0000
	LDA [$06]
	CMP #$8000
	BCC @UNKNOWN2
	BEQ @UNKNOWN2
	LDX #$0001
@UNKNOWN2:
	STX $02
	LDA $0E
	CMP $02
	BEQ @UNKNOWN3
	LDA #$0004
	CLC
	ADC $0A
	STA $0A
	BRA @UNKNOWN1
@UNKNOWN3:
	MOVE_INT $0A, $06
	MOVE_INT $06, .LOWORD(UNKNOWN_7E5E38)
	SEP #PROC_FLAGS::ACCUM8
	LDY #$0002
	LDA [$0A],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAX
	STX .LOWORD(UNKNOWN_7E5DD6)
	LDA .LOWORD(UNKNOWN_7E5DDA)
	BNE @UNKNOWN4
	CPX .LOWORD(UNKNOWN_7E5DD4)
	BEQ @UNKNOWN4
	LDA #$0002
	JSL UNKNOWN_C0AC0C
@UNKNOWN4:
	PLD
	RTL
