
BTLACT_COLD: ;$C28B6D
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFEE
	TCD
	JSR a:.LOWORD(ATK_FAIL_CHK)
	CMP #$0000
	BNE @UNKNOWN1
	LDX .LOWORD(CURRENT_TARGET)
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM)+56,X
	JSR a:.LOWORD(SUCCESS_255)
	.A16
	CMP #$0000
	BEQ @UNKNOWN0
	LDY #STATUS_0::COLD
	LDX #STATUS_GROUP::PERSISTENT_EASYHEAL
	LDA .LOWORD(CURRENT_TARGET)
	JSR a:.LOWORD(INFLICT_STATUS_BATTLE)
	.A16
	CMP #$0000
	BEQ @UNKNOWN0
	DISPLAY_BATTLE_TEXT_PTR TEXT_BLOCK_EF6B2F
	BRA @UNKNOWN1
@UNKNOWN0:
	DISPLAY_BATTLE_TEXT_PTR TEXT_BLOCK_EF766E
@UNKNOWN1:
	PLD
	RTL
