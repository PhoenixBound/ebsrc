
UNKNOWN_C1E48D: ;$C1E48D
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEE
	TCD
	PLA
	STY $10
	STX $0E
	STA $02
	JSL SET_9622_ONE
	LDA $02
	JSR a:.LOWORD(SET_WINDOW_FOCUS)
	LDY $10
	LDX $0E
	LDA $02
	JSL UNKNOWN_C442AC
	TAX
	STX $0E
	LDA #$001C
	JSR a:.LOWORD(SET_WINDOW_FOCUS)
	LDX $0E
	TXA
	PLD
	RTS
