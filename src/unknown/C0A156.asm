
UNKNOWN_C0A156: ;$C0A156
	REP #PROC_FLAGS::ACCUM8
	PHD
	PHA
	TDC
	SEC
	SBC #$000A
	TCD
	PLA
	STA $00
	STX $02
	ORA $02
	BPL @UNKNOWN0
	LDA #$FFFF
	PLD
	RTS
@UNKNOWN0:
	LDA $00
	CMP .LOWORD(UNKNOWN_7E2888)
	BNE @UNKNOWN1
	CPX .LOWORD(UNKNOWN_7E288A)
	BNE @UNKNOWN1
	LDA .LOWORD(UNKNOWN_7E288C)
	PLD
	RTS
@UNKNOWN1:
	STA .LOWORD(UNKNOWN_7E2888)
	STX .LOWORD(UNKNOWN_7E288A)
	TXA
	LSR
	LSR
	LSR
	XBA
	ORA $00
	TAY
	LDA #$00D7
	STA $06
	LDX #$5000
	LDA $02
	AND #$0004
	BEQ @UNKNOWN2
	LDX #$8000
@UNKNOWN2:
	STX $04
	LDA $02
	AND #$0007
	ASL
	ASL
	TAX
	LDA [$04],Y
	JMP ($A1AE,X)
