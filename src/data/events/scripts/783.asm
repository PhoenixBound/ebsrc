
EVENT_783: ;$C39FA0
	EVENT_UNKNOWN_WRITE_121E .LOWORD(UNKNOWN_C09FAE_ENTRY4)
	EVENT_SET_VELOCITIES_ZERO
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $00
	EVENT_LOOP $8B
		EVENT_SET_Y_RELATIVE $FFFF
		EVENT_PAUSE 1*THIRTIETH_OF_A_SECOND
		EVENT_SET_Y_RELATIVE $0001
		EVENT_PAUSE 1*THIRTIETH_OF_A_SECOND
	EVENT_LOOP_END
	EVENT_SHORTJUMP .LOWORD(EVENT_35)