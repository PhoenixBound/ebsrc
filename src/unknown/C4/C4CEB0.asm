
UNKNOWN_C4CEB0: ;$C4CEB0
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 14
	LOADPTR UNKNOWN_7F7F00, $06
	LDX #$0000
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA #$0000
	STA [$06]
	INC $06
	INC $06
	INX
@UNKNOWN1:
	CPX #$0040
	BCC @UNKNOWN0
	PLD
	RTL
