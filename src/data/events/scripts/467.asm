
EVENT_467: ;$C33C30
	EVENT_UNKNOWN_WRITE_121E .LOWORD(UNKNOWN_C09FAE_ENTRY4)
	EVENT_SET_10F2 $00
	EVENT_SET_VELOCITIES_ZERO
	EVENT_UNKNOWN_C0C7DB
	EVENT_UNKNOWN_C0A3A4_ME2
UNKNOWN_C33C3E: ;$C33C3E
	EVENT_LOOP $0A
		EVENT_PAUSE 1*TWENTIETH_OF_A_SECOND
		EVENT_SET_10F2 $01
		EVENT_UNKNOWN_C0A3A4_ME1
		EVENT_PAUSE 1*TWENTIETH_OF_A_SECOND
		EVENT_SET_10F2 $00
		EVENT_UNKNOWN_C0A3A4_ME3
		EVENT_UNKNOWN_C0C6B6
		EVENT_SHORTCALL_CONDITIONAL .LOWORD(EVENT_35)
	EVENT_LOOP_END
	EVENT_CALL_C09F82 $0000, $0002, $0004, $0006
	EVENT_UNKNOWN_C0A65F
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C33C3E)