    .section .rodata

    .global gUnknown_080E1708
gUnknown_080E1708:
    .incbin "baserom.gba", 0x000E1708, 0x200

    .global gPsiData
gPsiData:
    .incbin "baserom.gba", 0x000E1908, 0x4

    .global gUnknown_080E190C
gUnknown_080E190C:
    .incbin "baserom.gba", 0x000E190C, 0x4

    .global gUnknown_080E1910
gUnknown_080E1910:
    .incbin "baserom.gba", 0x000E1910, 0x8

    .global gUnknown_080E1918
gUnknown_080E1918:
    .incbin "baserom.gba", 0x000E1918, 0x37F0

    .global gGoodsInfo
gGoodsInfo:
    .incbin "baserom.gba", 0x000E5108, 0x4

    .global gUnknown_080E510C
gUnknown_080E510C:
    .incbin "baserom.gba", 0x000E510C, 0x3C

    .global gUnknown_080E5148
gUnknown_080E5148:
    .incbin "baserom.gba", 0x000E5148, 0x6BC0

    .global gShopData
gShopData:
    .incbin "baserom.gba", 0x000EBD08, 0x870

    .global gUnknown_080EC578
gUnknown_080EC578:
    .incbin "baserom.gba", 0x000EC578, 0x3B8

    .global gBattleGroupTable
gBattleGroupTable:
    .incbin "baserom.gba", 0x000EC930, 0x410

    .global gSoundPlayerTable
gSoundPlayerTable:
    .incbin "baserom.gba", 0x000ECD40, 0x1A9F

    .global gUnknown_080EE7DF
gUnknown_080EE7DF:
    .incbin "baserom.gba", 0x000EE7DF, 0x20

    .global gUnknown_080EE7FF
gUnknown_080EE7FF:
    .incbin "baserom.gba", 0x000EE7FF, 0x20

    .global gUnknown_080EE81F
gUnknown_080EE81F:
    .incbin "baserom.gba", 0x000EE81F, 0x20

    .global gUnknown_080EE83F
gUnknown_080EE83F:
    .incbin "baserom.gba", 0x000EE83F, 0x20

    .global gUnknown_080EE85F
gUnknown_080EE85F:
    .incbin "baserom.gba", 0x000EE85F, 0x20

    .global gUnknown_080EE87F
gUnknown_080EE87F:
    .incbin "baserom.gba", 0x000EE87F, 0x1001

    .global gUnknown_080EF880
gUnknown_080EF880:
    .incbin "baserom.gba", 0x000EF880, 0x1400

    .global gUnknown_080F0C80
gUnknown_080F0C80:
    .incbin "baserom.gba", 0x000F0C80, 0x1850

    .global gUnknown_080F24D0
gUnknown_080F24D0:
    .incbin "baserom.gba", 0x000F24D0, 0x8

    .global gUnknown_080F24D8
gUnknown_080F24D8:
    .4byte 0xFFFF0000
    .4byte system_callback__FP6System+1
    .incbin "baserom.gba", 0x000F24E0, 0x454

    .global gUnknown_080F2934 // gUnknown_02002004
gUnknown_080F2934:
    .incbin "baserom.gba", 0x000F2934, 0x18

    .global gUnknown_080F294C // gUnknown_02001FF8
gUnknown_080F294C:
    .incbin "baserom.gba", 0x000F294C, 0x1C

    .global gUnknown_080F2968
gUnknown_080F2968:
    .incbin "baserom.gba", 0x000F2968, 0x1C

    .global gUnknown_080F2984
gUnknown_080F2984:
    .incbin "baserom.gba", 0x000F2984, 0x1C

    .global gUnknown_080F29A0
gUnknown_080F29A0:
    .incbin "baserom.gba", 0x000F29A0, 0x24

    .global gUnknown_080F29C4
gUnknown_080F29C4:
    .incbin "baserom.gba", 0x000F29C4, 0x24 // ShowDownAsEscape

    .global gUnknown_080F29E8
gUnknown_080F29E8:
    .incbin "baserom.gba", 0x000F29E8, 0x170 // ShowDownAsLose

    .global gUnknown_080F2B58
gUnknown_080F2B58:
    .incbin "baserom.gba", 0x000F2B58, 0x8 // Battle

    .global gUnknown_080F2B60
gUnknown_080F2B60:
    .4byte 0xFFFF0000
    .4byte nullsub_95+1
    .incbin "baserom.gba", 0x000F2B68, 0x680

    .global gUnknown_080F31E8
gUnknown_080F31E8:
    .4byte 0xFFFF0000
    .4byte sub_08097990+1
    .incbin "baserom.gba", 0x000F31F0, 0x680

    .global gUnknown_080F3870
gUnknown_080F3870:
    .4byte 0xFFFF0000
    .4byte sub_0805F138+1

    .global gUnknown_080F3878
gUnknown_080F3878:
    .4byte 0xFFFF0000
    .4byte sub_0805F140+1
    .incbin "baserom.gba", 0x000F3880, 0x680

    .global gUnknown_080F3F00
gUnknown_080F3F00:
    .4byte 0xFFFF0000
    .4byte sub_0805F860+1

    .global gUnknown_080F3F08
gUnknown_080F3F08:
    .4byte 0xFFFF0000
    .4byte sub_0805F8E8+1
    .incbin "baserom.gba", 0x000F3F10, 0x680

    .global gUnknown_080F4590
gUnknown_080F4590:
    .4byte 0xFFFF0000
    .4byte sub_08060E1C+1

    .global gUnknown_080F4598
gUnknown_080F4598:
    .incbin "baserom.gba", 0x000F4598, 0x690

    .global gUnknown_080F4C28
gUnknown_080F4C28:
    .incbin "baserom.gba", 0x000F4C28, 0x6A0

    .global gUnknown_080F52C8
gUnknown_080F52C8:
    .4byte 0xFFFF0000
    .4byte sub_0809BED4+1

    .global gUnknown_080F52D0
gUnknown_080F52D0:
    .4byte 0xFFFF0000
    .4byte sub_0809BEB4+1

    .global gUnknown_080F52D8
gUnknown_080F52D8:
    .incbin "baserom.gba", 0x000F52D8, 0xD0C

    .global gUnknown_080F5FE4
gUnknown_080F5FE4:
    .4byte 0xFFFF0000
    .4byte sub_0809D838+1

    .global gUnknown_080F5FEC
gUnknown_080F5FEC:
    .4byte 0xFFFF0000
    .4byte sub_0809D7D4+1

    .global gUnknown_080F5FF4
gUnknown_080F5FF4:
    .4byte 0xFFFF0000
    .4byte sub_0809D728+1

    .global gUnknown_080F5FFC
gUnknown_080F5FFC:
    .4byte 0xFFFF0000
    .4byte sub_0809D6B8+1

    .global gUnknown_080F6004
gUnknown_080F6004:
    .incbin "baserom.gba", 0x000F6004, 0x40

    .global gUnknown_080F6044
gUnknown_080F6044:
    .incbin "baserom.gba", 0x000F6044, 0x6C0

    .global gUnknown_080F6704
gUnknown_080F6704:
    .4byte 0xFFFF0000
    .4byte battle_end_callback__FP5Guest+1
    .incbin "baserom.gba", 0x000F670C, 0x620

    .global gUnknown_080F6D2C
gUnknown_080F6D2C:
    .incbin "baserom.gba", 0x000F6D2C, 0x60

    .global gUnknown_080F6D8C
gUnknown_080F6D8C:
    .4byte 0xFFFF0000
    .4byte guest_callback1__FP5Guest+1

    .global gUnknown_080F6D94
gUnknown_080F6D94:
    .4byte 0xFFFF0000
    .4byte guest_callback2__FP5Guest+1
    .incbin "baserom.gba", 0x000F6D9C, 0x680

    .global gUnknown_080F741C
gUnknown_080F741C:
    .4byte 0xFFFF0000
    .4byte sub_0809FD08+1

    .global gUnknown_080F7424
gUnknown_080F7424:
    .4byte 0xFFFF0000
    .4byte sub_0809FCE8+1
    .incbin "baserom.gba", 0x000F742C, 0xD00

    .global gUnknown_080F812C
gUnknown_080F812C:
    .4byte 0xFFFF0000
    .4byte sub_08063944+1
    .incbin "baserom.gba", 0x000F8134, 0x680

    .global gUnknown_080F87B4
gUnknown_080F87B4:
    .incbin "baserom.gba", 0x000F87B4, 0x14

    .global gUnknown_080F87C8
gUnknown_080F87C8:
    .incbin "baserom.gba", 0x000F87C8, 0x694

    .global gUnknown_080F8E5C
gUnknown_080F8E5C:
    .4byte 0xFFFF0000
    .4byte sub_080A187C+1

    .global gUnknown_080F8E64
gUnknown_080F8E64:
    .4byte 0xFFFF0000
    .4byte sub_080A184C+1

    .global gUnknown_080F8E6C
gUnknown_080F8E6C:
    .incbin "baserom.gba", 0x000F8E6C, 0xC

    .global gUnknown_080F8E78
gUnknown_080F8E78:
    .incbin "baserom.gba", 0x000F8E78, 0xA

    .global gUnknown_080F8E82
gUnknown_080F8E82:
    .incbin "baserom.gba", 0x000F8E82, 0x68A

    .global gUnknown_080F950C
gUnknown_080F950C:
    .incbin "baserom.gba", 0x000F950C, 0x10

    .global gUnknown_080F951C
gUnknown_080F951C:
    .incbin "baserom.gba", 0x000F951C, 0x1C

    .global gUnknown_080F9538
gUnknown_080F9538:
    .incbin "baserom.gba", 0x000F9538, 0x10

    .global gUnknown_080F9548
gUnknown_080F9548:
    .incbin "baserom.gba", 0x000F9548, 0x10

    .global gUnknown_080F9558
gUnknown_080F9558:
    .incbin "baserom.gba", 0x000F9558, 0x10

    .global gUnknown_080F9568
gUnknown_080F9568:
    .incbin "baserom.gba", 0x000F9568, 0x10

    .global gUnknown_080F9578
gUnknown_080F9578:
    .incbin "baserom.gba", 0x000F9578, 0x10

    .global gUnknown_080F9588
gUnknown_080F9588:
    .incbin "baserom.gba", 0x000F9588, 0x10

    .global gUnknown_080F9598
gUnknown_080F9598:
    .incbin "baserom.gba", 0x000F9598, 0x10

    .global gUnknown_080F95A8
gUnknown_080F95A8:
    .incbin "baserom.gba", 0x000F95A8, 0x10

    .global gUnknown_080F95B8
gUnknown_080F95B8:
    .incbin "baserom.gba", 0x000F95B8, 0x10

    .global gUnknown_080F95C8
gUnknown_080F95C8:
    .incbin "baserom.gba", 0x000F95C8, 0x10

    .global gUnknown_080F95D8
gUnknown_080F95D8:
    .incbin "baserom.gba", 0x000F95D8, 0x10

    .global gUnknown_080F95E8
gUnknown_080F95E8:
    .incbin "baserom.gba", 0x000F95E8, 0x10

    .global gUnknown_080F95F8
gUnknown_080F95F8:
    .incbin "baserom.gba", 0x000F95F8, 0x20

    .global gUnknown_080F9618
gUnknown_080F9618:
    .incbin "baserom.gba", 0x000F9618, 0xD20

    .global gUnknown_080FA338
gUnknown_080FA338:
    .incbin "baserom.gba", 0x000FA338, 0x10

    .global gUnknown_080FA348
gUnknown_080FA348:
    .incbin "baserom.gba", 0x000FA348, 0x10

    .global gUnknown_080FA358
gUnknown_080FA358:
    .incbin "baserom.gba", 0x000FA358, 0x5F8

    .global gUnknown_080FA950
gUnknown_080FA950:
    .incbin "baserom.gba", 0x000FA950, 0x718

    .global gUnknown_080FB068
gUnknown_080FB068:
    .incbin "baserom.gba", 0x000FB068, 0x10

    .global gUnknown_080FB078
gUnknown_080FB078:
    .incbin "baserom.gba", 0x000FB078, 0x690

    .global gUnknown_080FB708
gUnknown_080FB708:
    .4byte 0xFFFF0000
    .4byte sub_080C0904+1

    .global gUnknown_080FB710
gUnknown_080FB710:
    .4byte 0xFFFF0000
    .4byte sub_080C08E4+1

    .global gUnknown_080FB718
gUnknown_080FB718:
    .4byte 0xFFFF0000
    .4byte sub_080C08C4+1
    .incbin "baserom.gba", 0x000FB720, 0x680

    .global gUnknown_080FBDA0
gUnknown_080FBDA0:
    .4byte 0xFFFF0000
    .4byte sub_0806536C+1
    .incbin "baserom.gba", 0x000FBDA8, 0x680

    .global gUnknown_080FC428
gUnknown_080FC428:
    .4byte 0xFFFF0000
    .4byte sub_08065834+1
    .incbin "baserom.gba", 0x000FC430, 0x680

    .global gUnknown_080FCAB0
gUnknown_080FCAB0:
    .4byte 0xFFFF0000
    .4byte sub_08065A50+1
    .incbin "baserom.gba", 0x000FCAB8, 0xAA0

    .global gUnknown_080FD558
gUnknown_080FD558:
    .incbin "baserom.gba", 0x000FD558, 0x8

    .global gUnknown_080FD560
gUnknown_080FD560:
    .4byte 0xFFFF0000
    .4byte sub_0806625C+1
    .incbin "baserom.gba", 0x000FD568, 0xC78

    .global gUnknown_080FE1E0
gUnknown_080FE1E0:
    .4byte 0xFFFF0000
    .4byte sub_080670FC+1

    .global gUnknown_080FE1E8
gUnknown_080FE1E8:
    .4byte 0xFFFF0000
    .4byte sub_08067144+1

    .global gUnknown_080FE1F0
gUnknown_080FE1F0:
    .4byte 0xFFFF0000
    .4byte sub_0806718C+1

    .global gUnknown_080FE1F8
gUnknown_080FE1F8:
    .4byte 0xFFFF0000
    .4byte sub_080671B8+1

    .global gUnknown_080FE200
gUnknown_080FE200:
    .4byte 0xFFFF0000
    .4byte sub_080671E4+1

    .global gUnknown_080FE208
gUnknown_080FE208:
    .4byte 0xFFFF0000
    .4byte sub_080672A0+1

    .global gUnknown_080FE210
gUnknown_080FE210:
    .4byte 0xFFFF0000
    .4byte sub_080672EC+1

    .global gUnknown_080FE218
gUnknown_080FE218:
    .incbin "baserom.gba", 0x000FE218, 0x458

    .global gUnknown_080FE670
gUnknown_080FE670:
    .4byte 0xFFFF0000
    .4byte sub_08068198+1

    .global gUnknown_080FE678
gUnknown_080FE678:
    .4byte 0xFFFF0000
    .4byte sub_080681E0+1

    .global gUnknown_080FE680
gUnknown_080FE680:
    .4byte 0xFFFF0000
    .4byte sub_08068228+1

    .global gUnknown_080FE688
gUnknown_080FE688:
    .4byte 0xFFFF0000
    .4byte sub_08068254+1

    .global gUnknown_080FE690
gUnknown_080FE690:
    .4byte 0xFFFF0000
    .4byte sub_08068280+1

    .global gUnknown_080FE698
gUnknown_080FE698:
    .4byte 0xFFFF0000
    .4byte sub_08068334+1

    .global gUnknown_080FE6A0
gUnknown_080FE6A0:
    .4byte 0xFFFF0000
    .4byte sub_08068380+1

    .global gUnknown_080FE6A8
gUnknown_080FE6A8:
    .incbin "baserom.gba", 0x000FE6A8, 0x500

    .global gUnknown_080FEBA8
gUnknown_080FEBA8:
    .incbin "baserom.gba", 0x000FEBA8, 0xC0
