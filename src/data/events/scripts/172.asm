
EVENT_172: ;$C3D0C5
	EVENT_SET_X $13C0
	EVENT_SET_Y $0C48
	EVENT_UNKNOWN_43 $03
	EVENT_UNKNOWN_WRITE_121E .LOWORD(UNKNOWN_C0A37A)
	EVENT_SET_10F2 $00
	EVENT_UNKNOWN_08 UNKNOWN_C48C02
	EVENT_WRITE_WORD_TEMPVAR $0004
	EVENT_SET_VELOCITIES_ZERO
	EVENT_UNKNOWN_C0A65F
	EVENT_UNKNOWN_C0A3A4_ME2
EVENT_172_ENTRY_2: ;$C3D0E2
	EVENT_PAUSE 1*SIXTH_OF_A_SECOND
	EVENT_UNKNOWN_C0C6B6
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(EVENT_172_ENTRY_2)
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
