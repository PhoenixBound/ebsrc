
EVENT_653: ;$C378B6
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_SET_X_RELATIVE $FFF0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AAB8)
	EVENT_PAUSE $40*FRAMES
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_WRITE_WORD_TEMPVAR $0004
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE $10*FRAMES
	EVENT_WRITE_WORD_TEMPVAR $0006
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_HALT
