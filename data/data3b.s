.section .data
.align 2, 0

    .global gUnknown_08D2E114
gUnknown_08D2E114:
    .incbin "baserom.gba", 0x00D2E114, 0x8

    .global gUnknown_08D2E11C
gUnknown_08D2E11C:
        .4byte sub_08037B94+1
        .4byte sub_08037C04+1
        .4byte sub_08037C54+1
        .4byte sub_08037C84+1


    .global gUnknown_08D2E12C
gUnknown_08D2E12C:
        .4byte sub_08037E54+1
        .4byte sub_08037ED0+1
        .4byte nullsub_41+1
        .4byte sub_08037F74+1


    .global gUnknown_08D2E13C
gUnknown_08D2E13C:
        .4byte sub_08038208+1
        .4byte sub_080382A0+1
        .4byte nullsub_69+1
        .4byte nullsub_70+1

    .global gUnknown_08D2E14C
gUnknown_08D2E14C:
        .4byte sub_08038414+1
        .4byte sub_08038548+1
        .4byte sub_08038600+1
        .4byte sub_080387D4+1


    .global gUnknown_08D2E15C
gUnknown_08D2E15C:
    .incbin "baserom.gba", 0x00D2E15C, 0xC

    .global gUnknown_08D2E168
gUnknown_08D2E168:
        .4byte nullsub_71+1
        .4byte nullsub_72+1
        .4byte nullsub_73+1
        .4byte nullsub_74+1


    .global gDebugMenuInitTable
gDebugMenuInitTable:
        .4byte initDebugMenuPage1+1
        .4byte initDebugMenuPage2+1
        .4byte initDebugMenuPage3+1
        .4byte initDebugMenuPage4+1
        .4byte initDebugMenuPage5+1
        .4byte initDebugMenuPage6+1


    .global gDebugFuncTable
gDebugFuncTable:
        .4byte debugMenuPage1+1
        .4byte debugMenuPage2+1
        .4byte debugMenuPage3+1
        .4byte debugMenuPage4+1
        .4byte debugMenuPage5+1
        .4byte debugMenuPage6+1


    .global gUnknown_08D2E1A8
gUnknown_08D2E1A8:
        .4byte sub_0803ADA8+1
        .4byte sub_0803ADBC+1
        .4byte sub_0803ADD0+1
        .4byte sub_0803AEC8+1
        .4byte sub_0803B008+1
        .4byte sub_0803B160+1


    .global gUnknown_08D2E1C0
gUnknown_08D2E1C0:
        .4byte sub_0803B2C8+1
        .4byte sub_0803B3C4+1
        .4byte sub_0803B474+1
        .4byte sub_0803B4FC+1
        .4byte sub_0803B544+1
        .4byte sub_0803B58C+1


    .global gMapInfoTable
gMapInfoTable:
    .incbin "baserom.gba", 0x00D2E1D8, 0x6D6C

    .global gMapGraphicsTable
gMapGraphicsTable:
    .incbin "baserom.gba", 0x00D34F44, 0x659C

    .global gUnknown_08D3B4E0
gUnknown_08D3B4E0:
    .incbin "baserom.gba", 0x00D3B4E0, 0x200E64

    .global gUnknown_08F3C344
gUnknown_08F3C344:
    .incbin "baserom.gba", 0x00F3C344, 0x53CF8

    .global gUnknown_08F9003C
gUnknown_08F9003C:
    .incbin "baserom.gba", 0x00F9003C, 0xbd990

gUnknown_0904D9CC::
    .incbin "baserom.gba", 0x0104D9CC, 0xd04e8

gDoorHotSpotTable::
    .incbin "baserom.gba", 0x0111DEB4, 0xe4dc

gUnknown_0912C390::
    .incbin "baserom.gba", 0x0112C390, 0x67c8

gUnknown_09132B58::
    .incbin "baserom.gba", 0x01132B58, 0x330b8

gGiftBoxTable::
    .incbin "baserom.gba", 0x01165C10, 0x400c

gDoorDestinationTable::
    .incbin "baserom.gba", 0x01169C1C, 0x2eec

gMapAnimationTable::
    .incbin "baserom.gba", 0x0116CB08, 0x14c74

    .global gUnknown_0918177C
gUnknown_0918177C:
    .incbin "baserom.gba", 0x0118177C, 0x17494

    .global gScriptLogic
gScriptLogic:
    .incbin "baserom.gba", 0x01198C10, 0x1d1ae4
