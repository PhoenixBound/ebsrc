
EVENT_347: ;$C31BED
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
UNKNOWN_C31BF0: ;$C31BF0
	EVENT_SET_Y_RELATIVE $FFFF
	EVENT_PAUSE 2*FIFTEENTHS_OF_A_SECOND
	EVENT_SET_Y_RELATIVE $0001
	EVENT_PAUSE 2*FIFTEENTHS_OF_A_SECOND
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C31BF0)