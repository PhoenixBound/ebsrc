
ENABLE_NMI_JOYPAD: ;$C08715
	PHP
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(UNKNOWN_7E001E)
	ORA #$0081
	STA a:.LOWORD(UNKNOWN_7E001E)
	STA f:NMITIMEN
	PLP
	RTL
