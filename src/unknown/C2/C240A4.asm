
UNKNOWN_C240A4: ;$C240A4
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	MOVE_INT $1E, $06
	BRA @UNKNOWN1
@UNKNOWN0:
	JSL UNKNOWN_C12DD5
@UNKNOWN1:
	JSL UNKNOWN_C2EACF
	CMP #$0000
	BNE @UNKNOWN0
	LDA #.LOWORD(BATTLERS_TABLE) + (.SIZEOF(battler) * 8)
	STA .LOWORD(CURRENT_TARGET)
	LDX #$0008
	STX $0E
	BRA @UNKNOWN5
@UNKNOWN2:
	TXA
	JSL IS_CHAR_TARGETTED
	CMP #$0000
	BEQ @UNKNOWN4
	JSL FIX_TARGET_NAME
	MOVE_INT_CONSTANT NULL, $0A
	LDA $08
	CMP $0C
	BNE @UNKNOWN3
	LDA $06
	CMP $0A
@UNKNOWN3:
	BEQ @UNKNOWN4
	PHA
	MOVE_INT $06, a:.LOWORD(UNKNOWN_7E00BC)
	PLA
	JSL UNKNOWN_C09279
@UNKNOWN4:
	LDA .LOWORD(CURRENT_TARGET)
	CLC
	ADC #.SIZEOF(battler)
	STA .LOWORD(CURRENT_TARGET)
	LDX $0E
	INX
	STX $0E
@UNKNOWN5:
	CPX #$0020
	BCC @UNKNOWN2
	LDA #.LOWORD(BATTLERS_TABLE)
	STA .LOWORD(CURRENT_TARGET)
	LDX #$0000
	STX $0E
	BRA @UNKNOWN9
@UNKNOWN6:
	TXA
	JSL IS_CHAR_TARGETTED
	CMP #$0000
	BEQ @UNKNOWN8
	JSL FIX_TARGET_NAME
	MOVE_INT_CONSTANT NULL, $0A
	LDA $08
	CMP $0C
	BNE @UNKNOWN7
	LDA $06
	CMP $0A
@UNKNOWN7:
	BEQ @UNKNOWN8
	PHA
	MOVE_INT $06, a:.LOWORD(UNKNOWN_7E00BC)
	PLA
	JSL UNKNOWN_C09279
@UNKNOWN8:
	LDA .LOWORD(CURRENT_TARGET)
	CLC
	ADC #.SIZEOF(battler)
	STA .LOWORD(CURRENT_TARGET)
	LDX $0E
	INX
	STX $0E
@UNKNOWN9:
	CPX #$0008
	BCC @UNKNOWN6
	PLD
	RTL