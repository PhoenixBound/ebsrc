
UNKNOWN_C2087C: ;$C2087C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFF0
	TCD
	LDA .LOWORD(UNKNOWN_7E89C9)
	AND #$00FF
	BEQ @UNKNOWN0
	JSR a:.LOWORD(UNKNOWN_C2077D)
@UNKNOWN0:
	LDA .LOWORD(UNKNOWN_7E88E0)
	CMP #$FFFF
	BEQ @UNKNOWN2
	LDY .LOWORD(UNKNOWN_7E88E0)
	STY $0E
@UNKNOWN1:
	TYA
	JSL UNKNOWN_C107AF
	LDY $0E
	TYA
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDY .LOWORD(WINDOW_STATS_TABLE)+2,X
	STY $0E
	CPY #$FFFF
	BNE @UNKNOWN1
@UNKNOWN2:
	PLD
	RTL
