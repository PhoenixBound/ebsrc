
EVENT_397: ;$C327AA
	EVENT_SET_X $1260
	EVENT_SET_Y $1668
	EVENT_UNKNOWN_WRITE_121E .LOWORD(UNKNOWN_C0A37A)
	EVENT_SET_10F2 $FF
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_3, $0000
	EVENT_UNKNOWN_08 UNKNOWN_C476A5
	EVENT_PAUSE $69*FRAMES
	EVENT_PAUSE 1*QUARTER_OF_A_SECOND
	EVENT_SET_Y_VELOCITY $FFDE
	EVENT_LOOP $02
		EVENT_PAUSE 1*SECOND
	EVENT_LOOP_END
	EVENT_SET_VELOCITIES_ZERO
	EVENT_PAUSE 1*HALF_OF_A_SECOND
	EVENT_PAUSE $5A*FRAMES
	EVENT_PAUSE $78*FRAMES
	EVENT_PAUSE $78*FRAMES
	EVENT_SET_X_VELOCITY $00B6
	EVENT_PAUSE $2D*FRAMES
	EVENT_SET_VELOCITIES_ZERO
	EVENT_PAUSE $2D*FRAMES
	EVENT_PAUSE 1*SECOND
	EVENT_PAUSE 1*SECOND
	EVENT_UNKNOWN_C425F3
	EVENT_UNKNOWN_08_3B_94_C0
	EVENT_PAUSE 1*HALF_OF_A_SECOND
	EVENT_PAUSE $78*FRAMES
	EVENT_PAUSE $78*FRAMES
	EVENT_SET_X $12A0
	EVENT_SET_Y $1668
	EVENT_UNKNOWN_08 UNKNOWN_C476A5
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(UNKNOWN_C32CD2)
	EVENT_SET_X_VELOCITY $0111
	EVENT_PAUSE 1*HALF_OF_A_SECOND
	EVENT_SET_X_VELOCITY $FEEF
	EVENT_PAUSE $78*FRAMES
	EVENT_SET_X_VELOCITY $0111
	EVENT_PAUSE $78*FRAMES
	EVENT_SET_X_VELOCITY $FEEF
	EVENT_PAUSE $5A*FRAMES
	EVENT_END_UNKNOWN2
	EVENT_SET_VELOCITIES_ZERO
	EVENT_PAUSE $78*FRAMES
	EVENT_UNKNOWN_C425F3
	EVENT_UNKNOWN_08_3B_94_C0
	EVENT_PAUSE $B4*FRAMES
	EVENT_SHORTJUMP .LOWORD(EVENT_35)