
UNKNOWN_C2038B: ;$C2038B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFEE
	TCD
	LDA #$007E
	STA $0E
	LDA #$7C00
	STA $10
	LDY #$7DFE
	LDX #$0700
	SEP #PROC_FLAGS::ACCUM8
	JSL UNKNOWN_C08616_ENTRY_B
	.A16
	LOADPTR UNKNOWN_C40BE8, $0E
	LDY #$7F80
	LDX #$0040
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL UNKNOWN_C08616
	PLD
	RTL