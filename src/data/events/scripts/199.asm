
EVENT_199: ;$C3D58C
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3DBDB_ENTRY2)
	EVENT_UNKNOWN_C0A685 $00, $03
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_8, $0003
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $0A18
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_10, $1E08
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_UNKNOWN_C0A907 $D5
	EVENT_EXEC_TEXT_BLOCK TEXT_EVENT_199
	EVENT_HALT