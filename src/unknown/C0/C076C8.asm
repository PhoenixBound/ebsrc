
UNKNOWN_C076C8: ;$C076C8
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	TAY
	LDX #.LOWORD(GAME_STATE) + game_state::unknown4B
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	CMP #$0003
	BEQ @UNKNOWN2
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0003
	STA a:.LOWORD(RAM),X
	REP #PROC_FLAGS::ACCUM8
	LDA #$0018
	STA $12
	BRA @UNKNOWN1
@UNKNOWN0:
	ASL
	TAX
	LDA #$0005
	STA .LOWORD(UNKNOWN_30X2_TABLE_6),X
	LDA $12
	INC
	STA $12
@UNKNOWN1:
	CMP #$001D
	BCC @UNKNOWN0
	BEQ @UNKNOWN0
	LOADPTR UNKNOWN_C0769C, $0E
	TYA
	JSL UNKNOWN_C0DBE6
@UNKNOWN2:
	PLD
	RTL
