    .section .rodata

    .global gUnknown_080C17A0
gUnknown_080C17A0:
    .word sub_080008AC+1
    .word sub_080008D0+1
    .word sub_080008DC+1
    .word sub_080008DC+1
    .word sub_080008DC+1
    .word sub_080008DC+1
    .word sub_080008DC+1
    .word sub_080008DC+1
    .word sub_080008DC+1
    .word sub_080008DC+1
    .word sub_080008DC+1
    .word sub_080008DC+1
    .word sub_080008DC+1
    .word sub_080008DC+1
	
    .global gSineTable
gSineTable:
    .incbin "baserom.gba", 0x000C17D8, 0x28
	
    .global gUnknown_080C1800
gUnknown_080C1800:
    .incbin "baserom.gba", 0x000C1800, 0x258

gUnknown_080C1A58::
    .word sub_080053D0+1
    .word gUnknown_03004B14
    .word sub_080055E4+1
    .word nullsub_60+1
    .word nullsub_60+1
    .word nullsub_60+1
    .word nullsub_60+1
    .word nullsub_60+1
    .word nullsub_60+1
    .word nullsub_60+1
    .word nullsub_60+1
    .word nullsub_60+1
    .word nullsub_60+1
    .word nullsub_60+1

    .global gDirectionTable
gDirectionTable:
    .incbin "baserom.gba", 0x000C1A90, 0x90

    .global gUnknown_080C1B20
gUnknown_080C1B20:
    .incbin "baserom.gba", 0x000C1B20, 0x20

    .global gUnknown_080C1B40
gUnknown_080C1B40:
    .incbin "baserom.gba", 0x000C1B40, 0x20

    .global gUnknown_080C1B60
gUnknown_080C1B60:
    .incbin "baserom.gba", 0x000C1B60, 0x20

    .global gUnknown_080C1B80
gUnknown_080C1B80:
    .incbin "baserom.gba", 0x000C1B80, 0x18

    .global gUnknown_080C1B98
gUnknown_080C1B98:
    .incbin "baserom.gba", 0x000C1B98, 0x18

    .global gUnknown_080C1BB0
gUnknown_080C1BB0:
    .incbin "baserom.gba", 0x000C1BB0, 0x18

    .global gUnknown_080C1BC8
gUnknown_080C1BC8:
    .incbin "baserom.gba", 0x000C1BC8, 0x18

    .global gUnknown_080C1BE0
gUnknown_080C1BE0:
    .incbin "baserom.gba", 0x000C1BE0, 0x60

    .global gUnknown_080C1C40
gUnknown_080C1C40:
    .incbin "baserom.gba", 0x000C1C40, 0x30

    .global gUnknown_080C1C70
gUnknown_080C1C70:
    .incbin "baserom.gba", 0x000C1C70, 0xD8

    .global gUnknown_080C1D48
gUnknown_080C1D48:
    .incbin "baserom.gba", 0x000C1D48, 0xF0

    .global gUnknown_080C1E38
gUnknown_080C1E38:
    .incbin "baserom.gba", 0x000C1E38, 0x18

    .global gUnknown_080C1E50
gUnknown_080C1E50:
    .incbin "baserom.gba", 0x000C1E50, 0x30

    .global gUnknown_080C1E80
gUnknown_080C1E80:
    .incbin "baserom.gba", 0x000C1E80, 0x18

    .global gUnknown_080C1E98
gUnknown_080C1E98:
    .incbin "baserom.gba", 0x000C1E98, 0x18

    .global gUnknown_080C1EB0
gUnknown_080C1EB0:
    .incbin "baserom.gba", 0x000C1EB0, 0x18

    .global gUnknown_080C1EC8
gUnknown_080C1EC8:
    .incbin "baserom.gba", 0x000C1EC8, 0x18

    .global gUnknown_080C1EE0
gUnknown_080C1EE0:
    .incbin "baserom.gba", 0x000C1EE0, 0xD8

    .global gUnknown_080C1FB8
gUnknown_080C1FB8:
    .incbin "baserom.gba", 0x000C1FB8, 0x30

    .global gUnknown_080C1FE8
gUnknown_080C1FE8:
    .incbin "baserom.gba", 0x000C1FE8, 0x8

    .global gUnknown_080C1FF0
gUnknown_080C1FF0:
    .incbin "baserom.gba", 0x000C1FF0, 0x8

    .global gUnknown_080C1FF8
gUnknown_080C1FF8:
    .incbin "baserom.gba", 0x000C1FF8, 0x10

    .global gUnknown_080C2008
gUnknown_080C2008:
    .incbin "baserom.gba", 0x000C2008, 0x28

    .global gUnknown_080C2030
gUnknown_080C2030:
    .incbin "baserom.gba", 0x000C2030, 0x8

    .global gUnknown_080C2038
gUnknown_080C2038:
    .incbin "baserom.gba", 0x000C2038, 0x8

    .global gUnknown_080C2040
gUnknown_080C2040:
    .incbin "baserom.gba", 0x000C2040, 0x8

    .global gUnknown_080C2048
gUnknown_080C2048:
    .incbin "baserom.gba", 0x000C2048, 0x8

    .global gUnknown_080C2050
gUnknown_080C2050:
    .incbin "baserom.gba", 0x000C2050, 0x60

    .global gUnknown_080C20B0
gUnknown_080C20B0:
    .incbin "baserom.gba", 0x000C20B0, 0x14

    .global gUnknown_080C20C4
gUnknown_080C20C4:
    .incbin "baserom.gba", 0x000C20C4, 0x14

    .global gUnknown_080C20D8
gUnknown_080C20D8:
    .incbin "baserom.gba", 0x000C20D8, 0x10

    .global gUnknown_080C20E8
gUnknown_080C20E8:
    .incbin "baserom.gba", 0x000C20E8, 0xA

    .global gUnknown_080C20F2
gUnknown_080C20F2:
    .incbin "baserom.gba", 0x000C20F2, 0x10

    .global gUnknown_080C2102
gUnknown_080C2102:
    .incbin "baserom.gba", 0x000C2102, 0x10

    .global gUnknown_080C2112
gUnknown_080C2112:
    .incbin "baserom.gba", 0x000C2112, 0x8

    .global gUnknown_080C211A
gUnknown_080C211A:
    .incbin "baserom.gba", 0x000C211A, 0x97

    .global gUnknown_080C21B1
gUnknown_080C21B1:
    .incbin "baserom.gba", 0x000C21B1, 0x4C

    .global gUnknown_080C21FD
gUnknown_080C21FD:
    .incbin "baserom.gba", 0x000C21FD, 0x4B

    .global gUnknown_080C2248
gUnknown_080C2248:
    .incbin "baserom.gba", 0x000C2248, 0x4E8

    .global gUnknown_080C2730
gUnknown_080C2730:
    .incbin "baserom.gba", 0x000C2730, 0x120

    .global gUnknown_080C2850
gUnknown_080C2850:
    .incbin "baserom.gba", 0x000C2850, 0x120

    .global gUnknown_080C2970
gUnknown_080C2970:
    .incbin "baserom.gba", 0x000C2970, 0x120

    .global gUnknown_080C2A90
gUnknown_080C2A90:
    .incbin "baserom.gba", 0x000C2A90, 0xC

    .global gUnknown_080C2A9C
gUnknown_080C2A9C:
    .incbin "baserom.gba", 0x000C2A9C, 0x5C

    .global gTownMapSizeTable
gTownMapSizeTable:
    .incbin "baserom.gba", 0x000C2AF8, 0xF0

    .global gTownMapInfoTable
gTownMapInfoTable:
    .incbin "baserom.gba", 0x000C2BE8, 0x2EE0

    .global gUnknown_080C5AC8
gUnknown_080C5AC8:
    .incbin "baserom.gba", 0x000C5AC8, 0xF0

    .global gMapMusicTable
gMapMusicTable:
    .incbin "baserom.gba", 0x000C5BB8, 0x3E8

gUnknown_080C5FA0::
    .4byte sub_0803E358+1
    .4byte sub_0803E3B4+1
    .4byte sub_0803E3C0+1
    .4byte nullsub_77+1
    .4byte nullsub_77+1
    .4byte sub_0803E3EC+1
    .4byte nullsub_77+1
    .4byte nullsub_77+1
    .4byte nullsub_77+1
    .4byte nullsub_77+1
    .4byte nullsub_77+1
    .4byte nullsub_77+1
    .4byte nullsub_77+1
    .4byte nullsub_77+1

    .global gUnknown_080C5FD8
gUnknown_080C5FD8:
    .incbin "baserom.gba", 0x000C5FD8, 0x8

    .global gMenuTextPalette
gMenuTextPalette:
    .incbin "baserom.gba", 0x000C5FE0, 0x20

    .global gOverworldMenuScrollTable
gOverworldMenuScrollTable:
    .incbin "baserom.gba", 0x000C6000, 0x260

    .global gUnknown_080C6260
gUnknown_080C6260:
    .incbin "baserom.gba", 0x000C6260, 0x14

    .global gUnknown_080C6274
gUnknown_080C6274:
    .incbin "baserom.gba", 0x000C6274, 0x14

    .global gUnknown_080C6288
gUnknown_080C6288:
    .incbin "baserom.gba", 0x000C6288, 0x14

    .global gUnknown_080C629C
gUnknown_080C629C:
    .incbin "baserom.gba", 0x000C629C, 0x14

    .global gUnknown_080C62B0
gUnknown_080C62B0:
    .incbin "baserom.gba", 0x000C62B0, 0x14

    .global gUnknown_080C62C4
gUnknown_080C62C4:
    .incbin "baserom.gba", 0x000C62C4, 0xA0

    .global gUnknown_080C6364
gUnknown_080C6364:
    .incbin "baserom.gba", 0x000C6364, 0x64

    .global gUnknown_080C63C8
gUnknown_080C63C8:
    .incbin "baserom.gba", 0x000C63C8, 0x28

    .global gUnknown_080C63F0
gUnknown_080C63F0:
    .incbin "baserom.gba", 0x000C63F0, 0x28

    .global gUnknown_080C6418
gUnknown_080C6418:
    .incbin "baserom.gba", 0x000C6418, 0x28

    .global gUnknown_080C6440
gUnknown_080C6440:
    .incbin "baserom.gba", 0x000C6440, 0x14

    .global gUnknown_080C6454
gUnknown_080C6454:
    .incbin "baserom.gba", 0x000C6454, 0x14

    .global gUnknown_080C6468
gUnknown_080C6468:
    .incbin "baserom.gba", 0x000C6468, 0x14

    .global gUnknown_080C647C
gUnknown_080C647C:
    .incbin "baserom.gba", 0x000C647C, 0xB4

    .global gUnknown_080C6530
gUnknown_080C6530:
    .incbin "baserom.gba", 0x000C6530, 0x64

    .global gUnknown_080C6594
gUnknown_080C6594:
    .incbin "baserom.gba", 0x000C6594, 0x14

    .global gUnknown_080C65A8
gUnknown_080C65A8:
    .incbin "baserom.gba", 0x000C65A8, 0x28

    .global gUnknown_080C65D0
gUnknown_080C65D0:
    .incbin "baserom.gba", 0x000C65D0, 0x14

    .global gUnknown_080C65E4
gUnknown_080C65E4:
    .incbin "baserom.gba", 0x000C65E4, 0x14

    .global gUnknown_080C65F8
gUnknown_080C65F8:
    .incbin "baserom.gba", 0x000C65F8, 0x14

    .global gUnknown_080C660C
gUnknown_080C660C:
    .incbin "baserom.gba", 0x000C660C, 0x14

    .global gUnknown_080C6620
gUnknown_080C6620:
    .incbin "baserom.gba", 0x000C6620, 0x14

    .global gUnknown_080C6634
gUnknown_080C6634:
    .incbin "baserom.gba", 0x000C6634, 0x14

    .global gUnknown_080C6648
gUnknown_080C6648:
    .incbin "baserom.gba", 0x000C6648, 0x64

    .global gUnknown_080C66AC
gUnknown_080C66AC:
    .incbin "baserom.gba", 0x000C66AC, 0x28

    .global gUnknown_080C66D4
gUnknown_080C66D4:
    .incbin "baserom.gba", 0x000C66D4, 0x14

    .global gUnknown_080C66E8
gUnknown_080C66E8:
    .incbin "baserom.gba", 0x000C66E8, 0x14

    .global gUnknown_080C66FC
gUnknown_080C66FC:
    .incbin "baserom.gba", 0x000C66FC, 0x14

    .global gUnknown_080C6710
gUnknown_080C6710:
    .incbin "baserom.gba", 0x000C6710, 0x14

    .global gUnknown_080C6724
gUnknown_080C6724:
    .incbin "baserom.gba", 0x000C6724, 0x14

    .global gUnknown_080C6738
gUnknown_080C6738:
    .incbin "baserom.gba", 0x000C6738, 0x14

    .global gUnknown_080C674C
gUnknown_080C674C:
    .incbin "baserom.gba", 0x000C674C, 0x3C

    .global gUnknown_080C6788
gUnknown_080C6788:
    .incbin "baserom.gba", 0x000C6788, 0x14

    .global gUnknown_080C679C
gUnknown_080C679C:
    .incbin "baserom.gba", 0x000C679C, 0x14

    .global gUnknown_080C67B0
gUnknown_080C67B0:
    .incbin "baserom.gba", 0x000C67B0, 0x8

    .global gUnknown_080C67B8
gUnknown_080C67B8:
    .incbin "baserom.gba", 0x000C67B8, 0x178

    .global gUnknown_080C6930
gUnknown_080C6930:
    .incbin "baserom.gba", 0x000C6930, 0x14

    .global gUnknown_080C6944
gUnknown_080C6944:
    .incbin "baserom.gba", 0x000C6944, 0x14

    .global gUnknown_080C6958
gUnknown_080C6958:
    .incbin "baserom.gba", 0x000C6958, 0x14

    .global gUnknown_080C696C
gUnknown_080C696C:
    .incbin "baserom.gba", 0x000C696C, 0x8

    .global gUnknown_080C6974
gUnknown_080C6974:
    .incbin "baserom.gba", 0x000C6974, 0x8

    .global gUnknown_080C697C
gUnknown_080C697C:
    .incbin "baserom.gba", 0x000C697C, 0x8

    .global gUnknown_080C6984
gUnknown_080C6984:
    .incbin "baserom.gba", 0x000C6984, 0x10

    .global gUnknown_080C6994
gUnknown_080C6994:
    .incbin "baserom.gba", 0x000C6994, 0x24

    .global gUnknown_080C69B8
gUnknown_080C69B8:
    .incbin "baserom.gba", 0x000C69B8, 0x14

    .global gUnknown_080C69CC
gUnknown_080C69CC:
    .incbin "baserom.gba", 0x000C69CC, 0xB4

    .global gUnknown_080C6A80
gUnknown_080C6A80:
    .incbin "baserom.gba", 0x000C6A80, 0x2C

    .global gUnknown_080C6AAC
gUnknown_080C6AAC:
    .incbin "baserom.gba", 0x000C6AAC, 0x1E

    .global gUnknown_080C6ACA
gUnknown_080C6ACA:
    .incbin "baserom.gba", 0x000C6ACA, 0x1E

    .global gUnknown_080C6AE8
gUnknown_080C6AE8:
    .incbin "baserom.gba", 0x000C6AE8, 0xE

    .global gUnknown_080C6AF6
gUnknown_080C6AF6:
    .incbin "baserom.gba", 0x000C6AF6, 0x26

    .global gUnknown_080C6B1C
gUnknown_080C6B1C:
    .incbin "baserom.gba", 0x000C6B1C, 0x48

    .global gBattleMemoryEnemyLayout
gBattleMemoryEnemyLayout:
    .incbin "baserom.gba", 0x000C6B64, 0x1FE

    .global gBattleMemoryEnemyHeight
gBattleMemoryEnemyHeight:
    .incbin "baserom.gba", 0x000C6D62, 0x1FE

    .global gUnknown_080C6F60
gUnknown_080C6F60:
    .incbin "baserom.gba", 0x000C6F60, 0xA4

    .global gUnknown_080C7004
gUnknown_080C7004:
    .incbin "baserom.gba", 0x000C7004, 0xA4

    .global gUnknown_080C70A8
gUnknown_080C70A8:
    .incbin "baserom.gba", 0x000C70A8, 0xA4

    .global gUnknown_080C714C
gUnknown_080C714C:
    .incbin "baserom.gba", 0x000C714C, 0xC

    .global gUnknown_080C7158
gUnknown_080C7158:
    .incbin "baserom.gba", 0x000C7158, 0x5A

    .global gUnknown_080C71B2
gUnknown_080C71B2:
    .incbin "baserom.gba", 0x000C71B2, 0x1C8

    .global gUnknown_080C737A
gUnknown_080C737A:
    .incbin "baserom.gba", 0x000C737A, 0x2AE

gUnknown_080C7628::
    .4byte sub_08056948+1
    .4byte sub_080569A8+1
    .4byte nullsub_087+1
    .4byte nullsub_087+1
    .4byte nullsub_087+1
    .4byte nullsub_086+1
    .4byte nullsub_087+1
    .4byte nullsub_087+1
    .4byte nullsub_087+1
    .4byte nullsub_087+1
    .4byte nullsub_087+1
    .4byte nullsub_087+1
    .4byte nullsub_087+1
    .4byte nullsub_087+1

    .global gUnknown_080C7660
gUnknown_080C7660:
    .incbin "baserom.gba", 0x000C7660, 0x8

gUnknown_080C7668::
    .4byte sub_08058698+1
    .4byte sub_080586C8+1
    .4byte nullsub_92+1
    .4byte nullsub_92+1
    .4byte nullsub_92+1
    .4byte nullsub_91+1
    .4byte nullsub_92+1
    .4byte nullsub_92+1
    .4byte nullsub_92+1
    .4byte nullsub_92+1
    .4byte nullsub_92+1
    .4byte nullsub_92+1
    .4byte nullsub_92+1
    .4byte nullsub_92+1

    .global gUnknown_080C76A0
gUnknown_080C76A0:
    .incbin "baserom.gba", 0x000C76A0, 0x688

    .global gUnknown_080C7D28
gUnknown_080C7D28:
    .incbin "baserom.gba", 0x000C7D28, 0x58

    .global gUnknown_080C7D80
gUnknown_080C7D80:
    .incbin "baserom.gba", 0x000C7D80, 0x30

gUnknown_080C7DB0::
    .4byte sub_0805A464+1
    .4byte nullsub_93+1
    .4byte nullsub_93+1
    .4byte nullsub_93+1
    .4byte nullsub_93+1
    .4byte nullsub_93+1
    .4byte nullsub_93+1
    .4byte nullsub_93+1
    .4byte nullsub_93+1
    .4byte nullsub_93+1
    .4byte nullsub_93+1
    .4byte nullsub_93+1
    .4byte nullsub_93+1
    .4byte nullsub_93+1

    .global gGBPlayerLogoPalette
gGBPlayerLogoPalette:
    .incbin "baserom.gba", 0x000C7DE8, 0x200

    .global gGBPlayerLogoGfx
gGBPlayerLogoGfx:
    .incbin "baserom.gba", 0x000C7FE8, 0x4000

    .global gGBPlayerLogoLayout
gGBPlayerLogoLayout:
    .incbin "baserom.gba", 0x000CBFE8, 0x500

    .global gLevelStatTable
gLevelStatTable:
    .incbin "baserom.gba", 0x000CC4E8, 0x4

    .global gLevelStatTable2
gLevelStatTable2:
    .incbin "baserom.gba", 0x000CC4EC, 0x143C

    .global gLevelExpTable
gLevelExpTable:
    .incbin "baserom.gba", 0x000CD928, 0x1900

    .global gUnitTargetData
gUnitTargetData:
    .incbin "baserom.gba", 0x000CF228, 0x500
