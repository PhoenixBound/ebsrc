
EVENT_622: ;$C370FD
	EVENT_UNKNOWN_C0A864 $01
	EVENT_SET_Y_RELATIVE $FFF0
	EVENT_UNKNOWN_WRITE_121E .LOWORD(UNKNOWN_C09FAE_ENTRY4)
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SET_10F2 $FF
	EVENT_LOOP $04
		EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_3, $000D
		EVENT_UNKNOWN_C474A8
		EVENT_PAUSE 7*FRAMES
		EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_3, $0000
		EVENT_UNKNOWN_C474A8
		EVENT_PAUSE 7*FRAMES
	EVENT_LOOP_END
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_3, $0003
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_4, $0000
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_5, $0006
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_6, $0008
	EVENT_UNKNOWN_C47A9E
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C33C1D)
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $00
	EVENT_SET_10F2 $00
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_4, $0006
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_5, $0002
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C33C1D)
	EVENT_UNKNOWN_C4981F
	EVENT_UNDRAW_FLYOVER_TEXT
	EVENT_UNKNOWN_C46E46
	EVENT_HALT
