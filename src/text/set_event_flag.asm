
SET_EVENT_FLAG: ;$C2165E
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	TXY
	STY $12
	TAX
	DEC
	STA $10
	LSR
	LSR
	LSR
	CLC
	ADC #.LOWORD(UNKNOWN_7E9C08)
	TAX
	STX $0E
	LDY #$0008
	LDA $10
	JSL MODULUS16
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:POWERS_OF_TWO_8BIT,X
	LDY $12
	BEQ @UNKNOWN0
	STA $00
	LDX $0E
	LDA a:.LOWORD(RAM),X
	ORA $00
	BRA @UNKNOWN1
@UNKNOWN0:
	EOR #$00FF
	STA $00
	LDX $0E
	LDA a:.LOWORD(RAM),X
	AND $00
@UNKNOWN1:
	STA a:.LOWORD(RAM),X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	PLD
	RTL
