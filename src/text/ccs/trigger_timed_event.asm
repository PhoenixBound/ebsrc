
CC_1F_D3: ;$C17440
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	TXA
	JSL GET_DELIVERY_SPRITE_AND_PLACEHOLDER
	LDA #NULL
	RTS