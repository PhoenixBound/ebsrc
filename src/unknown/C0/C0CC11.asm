
UNKNOWN_C0CC11: ;$C0CC11
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFEC
	TCD
	LDA .LOWORD(UNKNOWN_7E1A42)
	STA $04
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_30X2_TABLE_9),X
	SEC
	SBC .LOWORD(SPRITE_ABS_X_TABLE),X
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
	BRA @UNKNOWN3
@UNKNOWN2:
	LDA $12
@UNKNOWN3:
	TAY
	LDA $04
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_30X2_TABLE_10),X
	SEC
	SBC .LOWORD(SPRITE_ABS_Y_TABLE),X
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
	BRA @UNKNOWN7
@UNKNOWN6:
	LDA $12
@UNKNOWN7:
	STA $02
	TYA
	CMP $02
	BCC @UNKNOWN8
	BEQ @UNKNOWN8
	TYA
	STA $12
	LDA $04
	ASL
	TAX
	LDA .LOWORD(SPRITE_DELTA_X_TABLE),X
	STA $10
	LDA .LOWORD(SPRITE_DELTA_X_FRACTION_TABLE),X
	STA $0E
	BRA @UNKNOWN9
@UNKNOWN8:
	LDA $02
	STA $12
	LDA $04
	ASL
	TAX
	LDA .LOWORD(SPRITE_DELTA_Y_TABLE),X
	STA $10
	LDA .LOWORD(SPRITE_DELTA_Y_FRACTION_TABLE),X
	STA $0E
@UNKNOWN9:
	MOVE_INT $0E, $0A
	SEP #PROC_FLAGS::INDEX8
	LDY #$0010
	LDA $12
	JSL ASL16_ENTRY2
	STA $06
	STZ $08
	REP #PROC_FLAGS::INDEX8
	JSL DIVISION32
	LDA $06
	STA $12
	BNE @UNKNOWN10
	LDA #$0001
	STA $12
@UNKNOWN10:
	LDA .LOWORD(UNKNOWN_7E1A46)
	ASL
	TAX
	LDA $12
	STA .LOWORD(UNKNOWN_30X2_TABLE_20),X
	PLD
	RTL
