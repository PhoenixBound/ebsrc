
UNKNOWN_C40F18: ;$C40F18
	EVENT_PAUSE $01
	EVENT_WRITE_WORD_TEMPVAR $0100
	EVENT_UNKNOWN_C468B5
	EVENT_SHORTCALL_CONDITIONAL $0F2E
	EVENT_WRITE_WORD_TEMPVAR $FFF4
	EVENT_UNKNOWN_C468B5
	EVENT_SHORTCALL_CONDITIONAL $0F42
	EVENT_WRITE_WORD_TEMPVAR $00E0
	EVENT_UNKNOWN_C468DC
	EVENT_SHORTCALL_CONDITIONAL $0F18
	EVENT_WRITE_WORD_TEMPVAR $FFF4
	EVENT_UNKNOWN_C468DC
	EVENT_SHORTCALL_CONDITIONAL_NOT $0F18
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C40F45)
UNKNOWN_C40F45:
	EVENT_UNKNOWN_C020F1
	EVENT_END