
UNKNOWN_C0DED9: ;$C0DED9
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEC
	TCD
	PLA
	STY $12
	STX $04
	STA $10
	LDX $22
	STX $0E
	LDA .LOWORD(UNKNOWN_7E9F43)
	BEQ @UNKNOWN0
	LDA #$0000
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA #.LOWORD(GAME_STATE) + game_state::current_party_members
	STA $02
	LDX $02
	LDA a:.LOWORD(RAM),X
	TAY
	LDX $04
	LDA $10
	JSL UNKNOWN_C05F33
	STA $04
	LDX $02
	LDA a:.LOWORD(RAM),X
	TAY
	LDX $0E
	LDA $12
	JSL UNKNOWN_C05F33
	STA $02
	LDA $04
	ORA $02
@UNKNOWN1:
	PLD
	RTS
