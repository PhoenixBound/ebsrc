
UNKNOWN_C0CCCC: ;$C0CCCC
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFEA
	TCD
	LDY .LOWORD(UNKNOWN_7E1A42)
	STY $14
	TYA
	ASL
	TAX
	STX $12
	LDA .LOWORD(SPRITE_ABS_X_TABLE),X
	STA .LOWORD(UNKNOWN_30X2_TABLE_9),X
	LDA .LOWORD(SPRITE_ABS_Y_TABLE),X
	CLC
	ADC #$0010
	STA .LOWORD(UNKNOWN_30X2_TABLE_10),X
	STZ $0E
	LDA .LOWORD(UNKNOWN_30X2_TABLE_35),X
	LSR
	LSR
	LSR
	LSR
	STA $10
	MOVE_INT_CONSTANT $64800, $0A
	MOVE_INT $0E, $06
	JSL DIVISION32
	LDA $06
	XBA
	AND #$FF00
	STA .LOWORD(UNKNOWN_30X2_TABLE_8),X
	JSL RAND
	AND #$0001
	BEQ @UNKNOWN0
	LDX $12
	STZ .LOWORD(UNKNOWN_30X2_TABLE_34),X
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA #$0004
	LDX $12
	STA .LOWORD(UNKNOWN_30X2_TABLE_34),X
@UNKNOWN1:
	LDY $14
	TYA
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_30X2_TABLE_34),X
	CMP #$0004
	BCS @UNKNOWN2
	STZ .LOWORD(UNKNOWN_30X2_TABLE_45),X
	BRA @UNKNOWN3
@UNKNOWN2:
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_30X2_TABLE_45),X
@UNKNOWN3:
	TYA
	ASL
	TAX
	STZ .LOWORD(UNKNOWN_30X2_TABLE_7),X
	PLD
	RTL
