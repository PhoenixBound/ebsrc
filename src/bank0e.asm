.SEGMENT "BANK0E"
.ORG $CE0000

.INCBIN "bin/bank0e.bin"

.ORG $CE62EE
BATTLE_SPRITES_POINTERS: ;$CE62EE

.ORG $CEDC45
SWIRL_POINTER_TABLE: ;$CEDC45
