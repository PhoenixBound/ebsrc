
UNKNOWN_C46E37: ;$C46E37
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	STX .LOWORD(UNKNOWN_7E9E2D)
	STY .LOWORD(UNKNOWN_7E9E2F)
	AND #$00FF
	STA .LOWORD(UNKNOWN_7E9E31)
	RTL