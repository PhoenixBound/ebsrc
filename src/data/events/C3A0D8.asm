
UNKNOWN_C3A0D8: ;$C3A0D8
	EVENT_PAUSE 3*TWENTIETHS_OF_A_SECOND
	EVENT_SET_10F2 $01
	EVENT_UNKNOWN_C0A3A4_ME1
	EVENT_PAUSE 3*TWENTIETHS_OF_A_SECOND
	EVENT_SET_10F2 $00
	EVENT_UNKNOWN_C0A3A4_ME3
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C3A0D8)
UNKNOWN_C3A0D8_ENTRY1: ;$C3A0EB
	EVENT_PAUSE $06*FRAMES
	EVENT_SET_10F2 $01
	EVENT_UNKNOWN_C0A3A4_ME1
	EVENT_PAUSE $06*FRAMES
	EVENT_SET_10F2 $00
	EVENT_UNKNOWN_C0A3A4_ME3
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C3A0D8_ENTRY1)
UNKNOWN_C3A0D8_ENTRY2: ;$C3A0FE
	EVENT_PAUSE 1*THIRTIETH_OF_A_SECOND
	EVENT_SET_10F2 $01
	EVENT_UNKNOWN_C0A3A4_ME1
	EVENT_PAUSE 1*THIRTIETH_OF_A_SECOND
	EVENT_SET_10F2 $00
	EVENT_UNKNOWN_C0A3A4_ME3
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C3A0D8_ENTRY2)
UNKNOWN_C3A0D8_ENTRY3: ;$C3A111
	EVENT_PAUSE 2*FIFTEENTHS_OF_A_SECOND
	EVENT_WRITE_9AF9_TEMPVAR EVENT_9AF9_TABLE::UNKNOWN_7
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C3A0D8_ENTRY4)
	EVENT_SET_10F2 $01
	EVENT_UNKNOWN_C0A3A4_ME1
UNKNOWN_C3A0D8_ENTRY4: ;$C3A11E
	EVENT_PAUSE 2*FIFTEENTHS_OF_A_SECOND
	EVENT_WRITE_9AF9_TEMPVAR EVENT_9AF9_TABLE::UNKNOWN_7
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C3A0D8_ENTRY3)
	EVENT_SET_10F2 $00
	EVENT_UNKNOWN_C0A3A4_ME3
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C3A0D8_ENTRY3)