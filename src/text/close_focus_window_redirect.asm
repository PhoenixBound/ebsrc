
REDIRECT_CLOSE_FOCUS_WINDOW: ;$C1DD59
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	JSR a:.LOWORD(CLOSE_FOCUS_WINDOW)
	RTL
