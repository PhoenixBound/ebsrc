
UNKNOWN_C3ABE0: ;$C3ABE0
	EVENT_PAUSE 1*FRAME
	EVENT_WRITE_WRAM_TEMPVAR $0028
	EVENT_AND_TEMPVAR $00FF
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C3ABE0)
	EVENT_SHORT_RETURN