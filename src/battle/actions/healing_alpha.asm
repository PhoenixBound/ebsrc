
BTLACT_HEALING_A: ;$C29AEA
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDA .LOWORD(CURRENT_TARGET)
	CLC
	ADC #$001D
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	CMP #$0007
	BEQ @UNKNOWN0
	CMP #$0006
	BEQ @UNKNOWN1
	BRA @UNKNOWN2
@UNKNOWN0:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA a:.LOWORD(RAM),X
	REP #PROC_FLAGS::ACCUM8
	DISPLAY_BATTLE_TEXT_PTR TEXT_BATTLE_GOT_OVER_COLD
	BRA @UNKNOWN4
@UNKNOWN1:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA a:.LOWORD(RAM),X
	REP #PROC_FLAGS::ACCUM8
	DISPLAY_BATTLE_TEXT_PTR TEXT_BATTLE_SUNSTROKE_CURED
	BRA @UNKNOWN4
@UNKNOWN2:
	LDA .LOWORD(CURRENT_TARGET)
	CLC
	ADC #$001F
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN3
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA a:.LOWORD(RAM),X
	REP #PROC_FLAGS::ACCUM8
	DISPLAY_BATTLE_TEXT_PTR TEXT_BATTLE_WOKE_UP
	BRA @UNKNOWN4
@UNKNOWN3:
	DISPLAY_BATTLE_TEXT_PTR TEXT_BATTLE_NO_VISIBLE_EFFECT
@UNKNOWN4:
	PLD
	RTL
