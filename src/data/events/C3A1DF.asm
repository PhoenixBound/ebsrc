
UNKNOWN_C3A1DF: ;$C3A1DF
	EVENT_PAUSE 1*THIRTIETH_OF_A_SECOND
	EVENT_SET_10F2 $01
	EVENT_UNKNOWN_C0A3A4_ME1
	EVENT_PAUSE 1*THIRTIETH_OF_A_SECOND
	EVENT_UNKNOWN_C40015
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C3A0D8_ENTRY2)
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
