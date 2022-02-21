	.align 2
	.section .rodata

	.incbin "baserom.gba", 0xCDB0B4, 0xCDB134 - 0xCDB0B4

    .global gUnknown_08CDB134
gUnknown_08CDB134:
        .4byte gUnknown_08CDB1B0
        .4byte gUnknown_08CDB260
        .4byte gUnknown_08CDB234
        .4byte gUnknown_08CDB184
        .4byte gUnknown_08CDB134
        .4byte 0x2015E1C
        .4byte 0x2015E28
        .4byte 0x2015E2C
        .4byte 0x2015E18
        .4byte 0x2015E30
        .4byte 0x2015E20
        .4byte 0x2015E14
        .4byte 0x2015E10
        .4byte 0x2015E20
gUnknown_08CDB16C::
        .4byte 0xFFBD000A
        .4byte 0xA00C2
        .4byte 0xC2FFBD
        .4byte 0xFFBD0028
        .4byte 0xC800C2
        .4byte 0xC2FFBD
gUnknown_08CDB184::
        .4byte sub_08091728+1
        .4byte sub_080915E0+1
        .4byte sub_08091654+1
        .4byte sub_08091558+1
        .4byte gUnknown_08CDB16C
        .4byte 0x10000
        .4byte 0x1000
        .4byte 0x10000C
        .4byte 0x0
        .4byte 0x30003
        .4byte 0x0
gUnknown_08CDB1B0::
        .4byte sub_08091728+1
        .4byte sub_080915E0+1
        .4byte sub_08091654+1
        .4byte sub_08091558+1
        .4byte gUnknown_08CDB16C
        .4byte 0x10000
        .4byte 0x1000
        .4byte 0x10000C
        .4byte 0x0
        .4byte 0x20001
        .4byte 0xD4BF
        .4byte 0x2015E20
        .4byte 0x2015E18
        .4byte 0x2015E20
        .4byte 0x2015E18
        .4byte 0x2015E18
        .4byte 0x2015E20
        .4byte sub_0809184C+1
        .4byte sub_08091870+1
        .4byte 0x2015E24
        .4byte 0x2015E20
gUnknown_08CDB204::
        .4byte 0xFFBD000A
        .4byte 0xA00C2
        .4byte 0xC2FFBD
        .4byte 0xFFBD07D0
        .4byte 0x7D000C2
        .4byte 0xC2FFBD
gUnknown_08CDB21C::
        .4byte 0xFFBD000A
        .4byte 0xA00C2
        .4byte 0xC2FFBD
        .4byte 0xFFBD01F4
        .4byte 0x1F400C2
        .4byte 0xC2FFBD
gUnknown_08CDB234::
        .4byte sub_08091888+1
        .4byte sub_080915E0+1
        .4byte sub_08091654+1
        .4byte sub_08091558+1
        .4byte gUnknown_08CDB204
        .4byte 0x10000
        .4byte 0x1000
        .4byte 0x10000C
        .4byte 0x0
        .4byte 0x10003
        .4byte 0x1CC2
gUnknown_08CDB260::
        .4byte sub_08091888+1
        .4byte sub_080915E0+1
        .4byte sub_08091654+1
        .4byte sub_08091558+1
        .4byte gUnknown_08CDB21C
        .4byte 0x10000
        .4byte 0x1000
        .4byte 0x10000C
        .4byte 0x0
        .4byte 0x20000
        .4byte 0x1B32
        .4byte 0x2015E20
        .4byte 0x2015E24
