
HEAL_POISON: ;$C2A39D
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDA .LOWORD(CURRENT_TARGET)
	CLC
	ADC #$001D
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	CMP #$0005
	BNE @UNKNOWN0
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA a:.LOWORD(RAM),X
	REP #PROC_FLAGS::ACCUM8
	DISPLAY_BATTLE_TEXT_PTR TEXT_BATTLE_POISON_WAS_REMOVED
@UNKNOWN0:
	PLD
	RTL
