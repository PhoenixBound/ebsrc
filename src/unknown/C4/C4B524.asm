
UNKNOWN_C4B524: ;$C4B524
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	TXY
	STY $0E
	TAX
	JSL UNKNOWN_C4605A
	LDY $0E
	TYX
	JSL SPAWN_FLOATING_SPRITE
	PLD
	RTL
