
EVENT_594: ;$C36C4A
	EVENT_SET_X $1530
	EVENT_SET_Y $2588
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AAAA)
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $000C
	EVENT_WRITE_WORD_TEMPVAR $0006
	EVENT_UNKNOWN_C0A65F
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_PAUSE $5A*FRAMES
	EVENT_WRITE_WORD_TEMPVAR $0004
	EVENT_UNKNOWN_C0A65F
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_PAUSE 1*QUARTER_OF_A_SECOND
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0005
	EVENT_UNKNOWN_C0A685 $00, $02
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_8, $0002
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $1550
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_10, $2540
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_10, $2500
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
