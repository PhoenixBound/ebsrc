
PSI_TELEPORT_DEST_TABLE: ;$D57880
	PADDEDEBTEXT "", .SIZEOF(psi_teleport_destination::name)
	.WORD EVENT_FLAG::UNKNOWN_000
	.WORD $0000 ;X
	.WORD $0000 ;Y

	PADDEDEBTEXT "Onett", .SIZEOF(psi_teleport_destination::name)
	.WORD EVENT_FLAG::ONETT_REACHED
	.WORD $00FD ;X
	.WORD $00BA ;Y

	PADDEDEBTEXT "Twoson", .SIZEOF(psi_teleport_destination::name)
	.WORD EVENT_FLAG::TWOSON_REACHED
	.WORD $00B0 ;X
	.WORD $0334 ;Y

	PADDEDEBTEXT "Threed", .SIZEOF(psi_teleport_destination::name)
	.WORD EVENT_FLAG::THREED_REACHED
	.WORD $02B4 ;X
	.WORD $0466 ;Y

	PADDEDEBTEXT "Saturn Valley", .SIZEOF(psi_teleport_destination::name)
	.WORD EVENT_FLAG::SATURN_VALLEY_REACHED
	.WORD $0022 ;X
	.WORD $03CC ;Y

	PADDEDEBTEXT "Fourside", .SIZEOF(psi_teleport_destination::name)
	.WORD EVENT_FLAG::FOURSIDE_REACHED
	.WORD $017C ;X
	.WORD $01F9 ;Y

	PADDEDEBTEXT "Winters", .SIZEOF(psi_teleport_destination::name)
	.WORD EVENT_FLAG::WINTERS_REACHED
	.WORD $003E ;X
	.WORD $0121 ;Y

	PADDEDEBTEXT "Summers", .SIZEOF(psi_teleport_destination::name)
	.WORD EVENT_FLAG::SUMMERS_REACHED
	.WORD $022A ;X
	.WORD $0161 ;Y

	PADDEDEBTEXT "Scaraba", .SIZEOF(psi_teleport_destination::name)
	.WORD EVENT_FLAG::SCARABA_REACHED
	.WORD $0098 ;X
	.WORD $020E ;Y

	PADDEDEBTEXT "Dalaam", .SIZEOF(psi_teleport_destination::name)
	.WORD EVENT_FLAG::DALAAM_REACHED
	.WORD $023A ;X
	.WORD $01C1 ;Y

	PADDEDEBTEXT "Deep Darkness", .SIZEOF(psi_teleport_destination::name)
	.WORD EVENT_FLAG::DEEP_DARKNESS_REACHED
	.WORD $02C0 ;X
	.WORD $0380 ;Y

	PADDEDEBTEXT "Tenda Village", .SIZEOF(psi_teleport_destination::name)
	.WORD EVENT_FLAG::TENDA_VILLAGE_REACHED
	.WORD $0234 ;X
	.WORD $0379 ;Y

	PADDEDEBTEXT "Underworld", .SIZEOF(psi_teleport_destination::name)
	.WORD EVENT_FLAG::UNDERWORLD_REACHED
	.WORD $0145 ;X
	.WORD $015F ;Y

	PADDEDEBTEXT "", .SIZEOF(psi_teleport_destination::name)
	.WORD EVENT_FLAG::UNKNOWN_092
	.WORD $01B1 ;X
	.WORD $0203 ;Y

	PADDEDEBTEXT "Dusty Dunes", .SIZEOF(psi_teleport_destination::name)
	.WORD EVENT_FLAG::UNKNOWN_254
	.WORD $00A0 ;X
	.WORD $04E3 ;Y

	PADDEDEBTEXT "", .SIZEOF(psi_teleport_destination::name)
	.WORD EVENT_FLAG::UNKNOWN_092
	.WORD $02EE ;X
	.WORD $02EB ;Y

	PADDEDEBTEXT "", .SIZEOF(psi_teleport_destination::name)
	.WORD NULL
	.WORD $0000 ;X
	.WORD $0000 ;Y
