
UNKNOWN_C46F7C: ;$C46F7C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 20
	LDA .LOWORD(UNKNOWN_7E1A42)
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_30X2_TABLE_9),X
	SEC
	SBC .LOWORD(ENTITY_ABS_X_TABLE),X
	STA $12
	STA $02
	LDA #$0000
	CLC
	SBC $02
	BVC @UNKNOWN0
	BPL @UNKNOWN2
	BRA @UNKNOWN1
@UNKNOWN0:
	BMI @UNKNOWN2
@UNKNOWN1:
	LDA $12
	EOR #$FFFF
	INC
	STA $10
	BRA @UNKNOWN3
@UNKNOWN2:
	LDA $12
	STA $10
@UNKNOWN3:
	LDA .LOWORD(UNKNOWN_7E1A42)
	ASL
	TAX
	LDA $10
	CMP .LOWORD(UNKNOWN_30X2_TABLE_8),X
	BCS @UNKNOWN8
	LDA .LOWORD(UNKNOWN_30X2_TABLE_10),X
	SEC
	SBC .LOWORD(ENTITY_ABS_Y_TABLE),X
	STA $12
	STA $02
	LDA #$0000
	CLC
	SBC $02
	BVC @UNKNOWN4
	BPL @UNKNOWN6
	BRA @UNKNOWN5
@UNKNOWN4:
	BMI @UNKNOWN6
@UNKNOWN5:
	LDA $12
	EOR #$FFFF
	INC
	STA $0E
	BRA @UNKNOWN7
@UNKNOWN6:
	LDA $12
	STA $0E
@UNKNOWN7:
	LDA .LOWORD(UNKNOWN_7E1A42)
	ASL
	TAX
	LDA $0E
	CMP .LOWORD(UNKNOWN_30X2_TABLE_8),X
	BCS @UNKNOWN8
	LDA #$0001
	BRA @UNKNOWN10
@UNKNOWN8:
	JSL UNKNOWN_C46AAC
	TAY
	STY $10
	LDA .LOWORD(UNKNOWN_7E1A42)
	ASL
	TAX
	TYA
	CMP .LOWORD(ENTITY_DIRECTIONS),X
	BEQ @UNKNOWN9
	TYA
	JSL UNKNOWN_C0C83B
	LDA .LOWORD(UNKNOWN_7E1A42)
	ASL
	CLC
	ADC #$2AF6
	TAX
	LDA a:.LOWORD(RAM),X
	STA $12
	LDY $10
	TYA
	STA a:.LOWORD(RAM),X
	LDA $12
	JSL UNKNOWN_C46AA3
	TAX
	STX $0E
	LDY $10
	TYA
	JSL UNKNOWN_C46AA3
	STA $02
	LDX $0E
	TXA
	CMP $02
	BEQ @UNKNOWN9
	LDA .LOWORD(UNKNOWN_7E1A42)
	JSL UNKNOWN_C0A3A4_ENTRY2
@UNKNOWN9:
	LDA #$0000
@UNKNOWN10:
	PLD
	RTL
