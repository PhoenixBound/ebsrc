
UNKNOWN_C09C57: ;$C09C57
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_30X2_TABLE_1),X
	TXA
	LDX .LOWORD(UNKNOWN_7E0A50)
	BPL @UNKNOWN0
	STA .LOWORD(UNKNOWN_7E0A50)
	BRA @UNKNOWN1
@UNKNOWN0:
	TXY
	LDX .LOWORD(UNKNOWN_30X2_TABLE_1),Y
	BPL @UNKNOWN0
	STA .LOWORD(UNKNOWN_30X2_TABLE_1),Y
@UNKNOWN1:
	TAX
	RTS
