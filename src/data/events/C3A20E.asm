
UNKNOWN_C3A20E: ;$C3A20E
	EVENT_SET_10F2 $00
	EVENT_UNKNOWN_C0A3A4_ME3
@UNKNOWN1: ;$C3A214
	EVENT_WRITE_9AF9_TEMPVAR EVENT_9AF9_TABLE::UNKNOWN_3
	EVENT_SWITCH_CALL_TEMPVAR .LOWORD(@UNKNOWN2), .LOWORD(@UNKNOWN3), .LOWORD(@UNKNOWN4), .LOWORD(@UNKNOWN5), .LOWORD(@UNKNOWN6)
	EVENT_UNKNOWN_C0C6B6
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN1)
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C3A47C)
@UNKNOWN2: ;$C3A22C
	EVENT_PAUSE 2*FIFTEENTHS_OF_A_SECOND
	EVENT_SET_10F2 $01
	EVENT_UNKNOWN_C0A3A4_ME1
@UNKNOWN3: ;$C3A234
	EVENT_PAUSE 2*FIFTEENTHS_OF_A_SECOND
	EVENT_SET_10F2 $00
	EVENT_UNKNOWN_C0A3A4_ME3
	EVENT_SHORT_RETURN
@UNKNOWN4: ;$C3A23D
	EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
	EVENT_SET_10F2 $01
	EVENT_UNKNOWN_C0A3A4_ME1
	EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
	EVENT_SET_10F2 $00
	EVENT_UNKNOWN_C0A3A4_ME3
	EVENT_SHORT_RETURN
@UNKNOWN5: ;$C3A24E
	EVENT_PAUSE $20*FRAMES
	EVENT_SET_10F2 $01
	EVENT_UNKNOWN_C0A3A4_ME1
	EVENT_PAUSE $20*FRAMES
	EVENT_SET_10F2 $00
	EVENT_UNKNOWN_C0A3A4_ME3
	EVENT_SHORT_RETURN
@UNKNOWN6: ;$C3A25F
	EVENT_PAUSE $10*FRAMES
	EVENT_SHORT_RETURN
