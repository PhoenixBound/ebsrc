
HEAL_STRANGENESS: ;$C2856B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDA .LOWORD(CURRENT_TARGET)
	CLC
	ADC #$0020
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	CMP #$0001
	BNE @RETURN
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA a:.LOWORD(RAM),X
	REP #PROC_FLAGS::ACCUM8
	DISPLAY_BATTLE_TEXT_PTR TEXT_BATTLE_BACK_TO_NORMAL
@RETURN:
	PLD
	RTS
