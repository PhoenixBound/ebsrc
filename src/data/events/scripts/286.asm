
EVENT_286: ;$C30DB6
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::USE_POSTGAME_MUSIC
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(EVENT_8)
	EVENT_UNKNOWN_C0A82F
	EVENT_UNKNOWN_WRITE_121E .LOWORD(UNKNOWN_C09FAE_ENTRY4)
	EVENT_SET_10F2 $FF
	EVENT_PAUSE 1*SIXTH_OF_A_SECOND
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
