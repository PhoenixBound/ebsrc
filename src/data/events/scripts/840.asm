
EVENT_840: ;$C3675D
	EVENT_UNKNOWN_WRITE_11A6 .LOWORD(UNKNOWN_C0A055)
	EVENT_UNKNOWN_WRITE_121E .LOWORD(UNKNOWN_C09FAE_ENTRY2)
	EVENT_SET_10F2 $00
	EVENT_WRITE_WORD_TEMPVAR $0000
	EVENT_UNKNOWN_C0A65F
	EVENT_UNKNOWN_C0A3A4_ME2
EVENT_840_ENTRY_2: ;$C36770
	EVENT_SET_10F2 $00
	EVENT_UNKNOWN_C0A3A4_ME3
	EVENT_PAUSE 2*FIFTEENTHS_OF_A_SECOND
	EVENT_SET_10F2 $01
	EVENT_UNKNOWN_C0A3A4_ME1
	EVENT_PAUSE 2*FIFTEENTHS_OF_A_SECOND
	EVENT_SET_10F2 $FF
	EVENT_PAUSE $10*FRAMES
	EVENT_UNKNOWN_C4ECE7
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(EVENT_840_ENTRY_2)
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
