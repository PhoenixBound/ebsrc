
UNKNOWN_C35F8B: ;$C35F8B
	EVENT_WRITE_9AF9_WAIT_TIMER EVENT_9AF9_TABLE::UNKNOWN_6
	EVENT_WRITE_9AF9_TEMPVAR EVENT_9AF9_TABLE::UNKNOWN_7
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C35F98)
	EVENT_SET_10F2 $01
	EVENT_UNKNOWN_C0A3A4_ME1
UNKNOWN_C35F98: ;$C35F98
	EVENT_WRITE_9AF9_WAIT_TIMER EVENT_9AF9_TABLE::UNKNOWN_6
	EVENT_UNKNOWN_C4ECE7
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(UNKNOWN_C35FB3)
	EVENT_WRITE_9AF9_TEMPVAR EVENT_9AF9_TABLE::UNKNOWN_7
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C35FAC)
	EVENT_SET_10F2 $00
	EVENT_UNKNOWN_C0A3A4_ME3
UNKNOWN_C35FAC: ;$C35FAC
	EVENT_UNKNOWN_C4ECE7
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C35F8B)
UNKNOWN_C35FB3: ;$C35FB3
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
