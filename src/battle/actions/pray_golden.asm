
BTLACT_PRAY_GOLDEN: ;$C2AC51
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:battler::hp_max,X
	LDX .LOWORD(CURRENT_ATTACKER)
	SEC
	SBC a:battler::hp_target,X
	TAX
	LDA .LOWORD(CURRENT_TARGET)
	JSR a:.LOWORD(RECOVER_HP)
	RTL
