
EVENT_634: ;$C37479
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_UNKNOWN_WRITE_121E .LOWORD(UNKNOWN_C09FAE_ENTRY4)
	EVENT_SET_10F2 $FF
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_3, $0000
	EVENT_LOOP $1F
		EVENT_ADD_9AF9 EVENT_9AF9_TABLE::UNKNOWN_3, $FFFF
		EVENT_UNKNOWN_C47499
		EVENT_PAUSE 2*FIFTEENTHS_OF_A_SECOND
	EVENT_LOOP_END
	EVENT_UNKNOWN_C46E46
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
