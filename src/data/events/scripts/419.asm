
EVENT_419: ;$C3324E
	EVENT_SET_X $1260
	EVENT_SET_Y $1668
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0001
	EVENT_LOOP $07
		EVENT_SHORTCALL .LOWORD(UNKNOWN_C333CC)
	EVENT_LOOP_END
	EVENT_SET_X_VELOCITY $002D
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C333CC)
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
