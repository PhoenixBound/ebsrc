
UNKNOWN_C226E6: ;$C226E6
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA .LOWORD(CURRENT_INTERACTING_EVENT_FLAG)
	JSL GET_EVENT_FLAG
	RTL