
UNKNOWN_C005E7: ;$C005E7
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFEC
	TCD
	LDA f:MAP_PALETTE_PTR_TABLE+4
	STA $06
	LDA f:MAP_PALETTE_PTR_TABLE+6
	STA $08
	LDY #$0240
	STY $12
	MOVE_INT $06, $0E
	LDX #$00C0
	TYA
	JSL MEMCPY16
	LDY $12
	TYA
	JSR a:.LOWORD(UNKNOWN_C00391)
	LDA .LOWORD(UNKNOWN_7E43D0)
	STA .LOWORD(UNKNOWN_7E43D6)
	LDA .LOWORD(UNKNOWN_7E43D2)
	STA .LOWORD(UNKNOWN_7E43D8)
	LDA .LOWORD(UNKNOWN_7E43D4)
	STA .LOWORD(UNKNOWN_7E43DA)
	PLD
	RTL
