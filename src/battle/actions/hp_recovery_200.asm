
BTLACT_HP_RECOVERY_200: ;$C2A0CF
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA #$00C8
	JSR a:.LOWORD(TWENTY_FIVE_PERCENT_VARIANCE)
	TAX
	LDA .LOWORD(CURRENT_TARGET)
	JSR a:.LOWORD(RECOVER_HP)
	RTL
