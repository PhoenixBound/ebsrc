
UNKNOWN_C44E4D: ;$C44E4D
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	AND #$03FF
	CMP #$0040
	BEQ @UNKNOWN0
	CMP #$0000
	BEQ @UNKNOWN0
	JSL UNKNOWN_C44AF7
@UNKNOWN0:
	RTL
