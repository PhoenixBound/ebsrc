
PLAY_SOUND: ;$C0ABE0
	SEP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	CMP #$0000
	BEQ PLAY_SOUND_UNKNOWN0
	LDX a:.LOWORD(UNKNOWN_7E00CA)
	ORA .LOWORD(UNKNOWN_7E1ACA)
	STA .LOWORD(UNKNOWN_7E1AC2),X
	TXA
	INC
	AND #$0007
	STA a:.LOWORD(UNKNOWN_7E00CA)
	LDA #$0080
	EOR .LOWORD(UNKNOWN_7E1ACA)
	STA .LOWORD(UNKNOWN_7E1ACA)
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	RTL
PLAY_SOUND_UNKNOWN0:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0057
	STA f:APUIO3
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	RTL
