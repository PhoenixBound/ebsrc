
REDIRECT_BTLACT_PARALYSIS_A: ;$C2A04F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	JSL BTLACT_PARALYSIS_A
	RTL