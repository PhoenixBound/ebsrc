
REDIRECT_BTLACT_DEFENSE_DOWN_A: ;$C29EFF
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	JSL BTLACT_DEFENSE_DOWN_A
	RTL
