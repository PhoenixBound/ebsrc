.SEGMENT "BANK0E"
.ORG $CE0000

BATTLE_SPRITE_82: ;$CE0000
	.INCBIN"bin/battle_sprites/82.bin"

BATTLE_SPRITE_6: ;$CE0305
	.INCBIN"bin/battle_sprites/6.bin"

BATTLE_SPRITE_31: ;$CE0601
	.INCBIN"bin/battle_sprites/31.bin"

BATTLE_SPRITE_50: ;$CE08F3
	.INCBIN"bin/battle_sprites/50.bin"

BATTLE_SPRITE_109: ;$CE0BD6
	.INCBIN"bin/battle_sprites/109.bin"

BATTLE_SPRITE_53: ;$CE0EB3
	.INCBIN"bin/battle_sprites/53.bin"

BATTLE_SPRITE_103: ;$CE118D
	.INCBIN"bin/battle_sprites/103.bin"

BATTLE_SPRITE_98: ;$CE1461
	.INCBIN"bin/battle_sprites/98.bin"

BATTLE_SPRITE_68: ;$CE170A
	.INCBIN"bin/battle_sprites/68.bin"

BATTLE_SPRITE_52: ;$CE19A9
	.INCBIN"bin/battle_sprites/52.bin"

BATTLE_SPRITE_8: ;$CE1C2E
	.INCBIN"bin/battle_sprites/8.bin"

BATTLE_SPRITE_21: ;$CE1EB1
	.INCBIN"bin/battle_sprites/21.bin"

BATTLE_SPRITE_43: ;$CE2133
	.INCBIN"bin/battle_sprites/43.bin"

BATTLE_SPRITE_7: ;$CE239C
	.INCBIN"bin/battle_sprites/7.bin"

BATTLE_SPRITE_5: ;$CE25E6
	.INCBIN"bin/battle_sprites/5.bin"

BATTLE_SPRITE_26: ;$CE2830
	.INCBIN"bin/battle_sprites/26.bin"

BATTLE_SPRITE_61: ;$CE2A5E
	.INCBIN"bin/battle_sprites/61.bin"

BATTLE_SPRITE_24: ;$CE2C7E
	.INCBIN"bin/battle_sprites/24.bin"

BATTLE_SPRITE_92: ;$CE2E9B
	.INCBIN"bin/battle_sprites/92.bin"

BATTLE_SPRITE_33: ;$CE30B7
	.INCBIN"bin/battle_sprites/33.bin"

BATTLE_SPRITE_29: ;$CE32C9
	.INCBIN"bin/battle_sprites/29.bin"

BATTLE_SPRITE_69: ;$CE34C5
	.INCBIN"bin/battle_sprites/69.bin"

BATTLE_SPRITE_49: ;$CE36B1
	.INCBIN"bin/battle_sprites/49.bin"

BATTLE_SPRITE_80: ;$CE3897
	.INCBIN"bin/battle_sprites/80.bin"

BATTLE_SPRITE_3: ;$CE3A60
	.INCBIN"bin/battle_sprites/3.bin"

BATTLE_SPRITE_45: ;$CE3C0F
	.INCBIN"bin/battle_sprites/45.bin"

BATTLE_SPRITE_20: ;$CE3DB9
	.INCBIN"bin/battle_sprites/20.bin"

BATTLE_SPRITE_91: ;$CE3F63
	.INCBIN"bin/battle_sprites/91.bin"

BATTLE_SPRITE_19: ;$CE4104
	.INCBIN"bin/battle_sprites/19.bin"

BATTLE_SPRITE_2: ;$CE429C
	.INCBIN"bin/battle_sprites/2.bin"

BATTLE_SPRITE_25: ;$CE4432
	.INCBIN"bin/battle_sprites/25.bin"

BATTLE_SPRITE_17: ;$CE45BF
	.INCBIN"bin/battle_sprites/17.bin"

BATTLE_SPRITE_76: ;$CE4745
	.INCBIN"bin/battle_sprites/76.bin"

BATTLE_SPRITE_15: ;$CE48C8
	.INCBIN"bin/battle_sprites/15.bin"

BATTLE_SPRITE_48: ;$CE4A4A
	.INCBIN"bin/battle_sprites/48.bin"

BATTLE_SPRITE_70: ;$CE4BAE
	.INCBIN"bin/battle_sprites/70.bin"

BATTLE_SPRITE_57: ;$CE4D0E
	.INCBIN"bin/battle_sprites/57.bin"

BATTLE_SPRITE_1: ;$CE4E6D
	.INCBIN"bin/battle_sprites/1.bin"

BATTLE_SPRITE_47: ;$CE4FCC
	.INCBIN"bin/battle_sprites/47.bin"

BATTLE_SPRITE_46: ;$CE5128
	.INCBIN"bin/battle_sprites/46.bin"

BATTLE_SPRITE_4: ;$CE5283
	.INCBIN"bin/battle_sprites/4.bin"

BATTLE_SPRITE_77: ;$CE53DB
	.INCBIN"bin/battle_sprites/77.bin"

BATTLE_SPRITE_65: ;$CE5527
	.INCBIN"bin/battle_sprites/65.bin"

BATTLE_SPRITE_85: ;$CE5673
	.INCBIN"bin/battle_sprites/85.bin"

BATTLE_SPRITE_44: ;$CE57BD
	.INCBIN"bin/battle_sprites/44.bin"

BATTLE_SPRITE_58: ;$CE58FD
	.INCBIN"bin/battle_sprites/58.bin"

BATTLE_SPRITE_18: ;$CE5A3B
	.INCBIN"bin/battle_sprites/18.bin"

BATTLE_SPRITE_59: ;$CE5B5F
	.INCBIN"bin/battle_sprites/59.bin"

BATTLE_SPRITE_16: ;$CE5C78
	.INCBIN"bin/battle_sprites/16.bin"

BATTLE_SPRITE_66: ;$CE5D8A
	.INCBIN"bin/battle_sprites/66.bin"

BATTLE_SPRITE_90: ;$CE5E8A
	.INCBIN"bin/battle_sprites/90.bin"

BATTLE_SPRITE_88: ;$CE5F82
	.INCBIN"bin/battle_sprites/88.bin"

BATTLE_SPRITE_0: ;$CE606D
	.INCBIN"bin/battle_sprites/0.bin"

BATTLE_SPRITE_42: ;$CE6158
	.INCBIN"bin/battle_sprites/42.bin"

BATTLE_SPRITE_89: ;$CE6230
	.INCBIN"bin/battle_sprites/89.bin"

BATTLE_SPRITES_POINTERS: ;$CE62EE
	.DWORD BATTLE_SPRITE_0
	.BYTE BATTLE_SPRITE_SIZE_32X32
	.DWORD BATTLE_SPRITE_1
	.BYTE BATTLE_SPRITE_SIZE_32X32
	.DWORD BATTLE_SPRITE_2
	.BYTE BATTLE_SPRITE_SIZE_32X32
	.DWORD BATTLE_SPRITE_3
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_4
	.BYTE BATTLE_SPRITE_SIZE_32X32
	.DWORD BATTLE_SPRITE_5
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_6
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_7
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_8
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_9
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_10
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_11
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_12
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_13
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_14
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_15
	.BYTE BATTLE_SPRITE_SIZE_32X32
	.DWORD BATTLE_SPRITE_16
	.BYTE BATTLE_SPRITE_SIZE_32X32
	.DWORD BATTLE_SPRITE_17
	.BYTE BATTLE_SPRITE_SIZE_32X32
	.DWORD BATTLE_SPRITE_18
	.BYTE BATTLE_SPRITE_SIZE_32X32
	.DWORD BATTLE_SPRITE_19
	.BYTE BATTLE_SPRITE_SIZE_32X32
	.DWORD BATTLE_SPRITE_20
	.BYTE BATTLE_SPRITE_SIZE_64X32
	.DWORD BATTLE_SPRITE_21
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_22
	.BYTE BATTLE_SPRITE_SIZE_64X32
	.DWORD BATTLE_SPRITE_23
	.BYTE BATTLE_SPRITE_SIZE_64X32
	.DWORD BATTLE_SPRITE_24
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_25
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_26
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_27
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_28
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_29
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_30
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_31
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_32
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_33
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_34
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_35
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_36
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_37
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_38
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_39
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_40
	.BYTE BATTLE_SPRITE_SIZE_128X64
	.DWORD BATTLE_SPRITE_41
	.BYTE BATTLE_SPRITE_SIZE_128X64
	.DWORD BATTLE_SPRITE_42
	.BYTE BATTLE_SPRITE_SIZE_32X32
	.DWORD BATTLE_SPRITE_43
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_44
	.BYTE BATTLE_SPRITE_SIZE_32X32
	.DWORD BATTLE_SPRITE_45
	.BYTE BATTLE_SPRITE_SIZE_32X32
	.DWORD BATTLE_SPRITE_46
	.BYTE BATTLE_SPRITE_SIZE_32X32
	.DWORD BATTLE_SPRITE_47
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_48
	.BYTE BATTLE_SPRITE_SIZE_64X32
	.DWORD BATTLE_SPRITE_49
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_50
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_51
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_52
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_53
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_54
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_55
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_56
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_57
	.BYTE BATTLE_SPRITE_SIZE_32X32
	.DWORD BATTLE_SPRITE_58
	.BYTE BATTLE_SPRITE_SIZE_32X32
	.DWORD BATTLE_SPRITE_59
	.BYTE BATTLE_SPRITE_SIZE_32X32
	.DWORD BATTLE_SPRITE_60
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_61
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_62
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_63
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_64
	.BYTE BATTLE_SPRITE_SIZE_128X64
	.DWORD BATTLE_SPRITE_65
	.BYTE BATTLE_SPRITE_SIZE_32X32
	.DWORD BATTLE_SPRITE_66
	.BYTE BATTLE_SPRITE_SIZE_32X32
	.DWORD BATTLE_SPRITE_67
	.BYTE BATTLE_SPRITE_SIZE_64X32
	.DWORD BATTLE_SPRITE_68
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_69
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_70
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_71
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_72
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_73
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_74
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_75
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_76
	.BYTE BATTLE_SPRITE_SIZE_32X32
	.DWORD BATTLE_SPRITE_77
	.BYTE BATTLE_SPRITE_SIZE_32X32
	.DWORD BATTLE_SPRITE_78
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_79
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_80
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_81
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_82
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_83
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_84
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_85
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_86
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_87
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_88
	.BYTE BATTLE_SPRITE_SIZE_32X32
	.DWORD BATTLE_SPRITE_89
	.BYTE BATTLE_SPRITE_SIZE_32X32
	.DWORD BATTLE_SPRITE_90
	.BYTE BATTLE_SPRITE_SIZE_32X32
	.DWORD BATTLE_SPRITE_91
	.BYTE BATTLE_SPRITE_SIZE_32X32
	.DWORD BATTLE_SPRITE_92
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_93
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_94
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_95
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_96
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_97
	.BYTE BATTLE_SPRITE_SIZE_128X64
	.DWORD BATTLE_SPRITE_98
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_99
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_100
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_101
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_102
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_103
	.BYTE BATTLE_SPRITE_SIZE_32X64
	.DWORD BATTLE_SPRITE_104
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_105
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_106
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_107
	.BYTE BATTLE_SPRITE_SIZE_128X128
	.DWORD BATTLE_SPRITE_108
	.BYTE BATTLE_SPRITE_SIZE_64X64
	.DWORD BATTLE_SPRITE_109
	.BYTE BATTLE_SPRITE_SIZE_64X64


BATTLE_SPRITE_PALETTES: ;$CE6514
	.INCBIN "bin/battle_sprites/palettes/0.bin"
	.INCBIN "bin/battle_sprites/palettes/1.bin"
	.INCBIN "bin/battle_sprites/palettes/2.bin"
	.INCBIN "bin/battle_sprites/palettes/3.bin"
	.INCBIN "bin/battle_sprites/palettes/4.bin"
	.INCBIN "bin/battle_sprites/palettes/5.bin"
	.INCBIN "bin/battle_sprites/palettes/6.bin"
	.INCBIN "bin/battle_sprites/palettes/7.bin"
	.INCBIN "bin/battle_sprites/palettes/8.bin"
	.INCBIN "bin/battle_sprites/palettes/9.bin"
	.INCBIN "bin/battle_sprites/palettes/10.bin"
	.INCBIN "bin/battle_sprites/palettes/11.bin"
	.INCBIN "bin/battle_sprites/palettes/12.bin"
	.INCBIN "bin/battle_sprites/palettes/13.bin"
	.INCBIN "bin/battle_sprites/palettes/14.bin"
	.INCBIN "bin/battle_sprites/palettes/15.bin"
	.INCBIN "bin/battle_sprites/palettes/16.bin"
	.INCBIN "bin/battle_sprites/palettes/17.bin"
	.INCBIN "bin/battle_sprites/palettes/18.bin"
	.INCBIN "bin/battle_sprites/palettes/19.bin"
	.INCBIN "bin/battle_sprites/palettes/20.bin"
	.INCBIN "bin/battle_sprites/palettes/21.bin"
	.INCBIN "bin/battle_sprites/palettes/22.bin"
	.INCBIN "bin/battle_sprites/palettes/23.bin"
	.INCBIN "bin/battle_sprites/palettes/24.bin"
	.INCBIN "bin/battle_sprites/palettes/25.bin"
	.INCBIN "bin/battle_sprites/palettes/26.bin"
	.INCBIN "bin/battle_sprites/palettes/27.bin"
	.INCBIN "bin/battle_sprites/palettes/28.bin"
	.INCBIN "bin/battle_sprites/palettes/29.bin"
	.INCBIN "bin/battle_sprites/palettes/30.bin"
	.INCBIN "bin/battle_sprites/palettes/31.bin"

SWIRL_DATA: ;$CE6914
	.INCBIN "bin/unknowns/CE6914.bin"

SWIRL_POINTER_TABLE: ;$CEDC45
	.INCBIN "bin/unknowns/CEDC45.bin"

SWIRL_PRIMARY_TABLE: ;$CEDD41
	.INCBIN "bin/unknowns/CEDD41.bin"

SOUND_STONE_GFX: ;$CEDD5D
	.INCBIN "bin/unknowns/CEDD5D.bin"

SOUND_STONE_PALETTE: ;$CEF806
	.INCBIN "bin/unknowns/CEF806.bin"

AUDIO_PACK_102: ;$CEF8C6
	.INCBIN "bin/audiopacks/102.bin"
