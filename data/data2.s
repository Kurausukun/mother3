    .section .rodata

    .global gUnknown_080FEC68
gUnknown_080FEC68:
    .incbin "baserom.gba", 0x000FEC68, 0x44

    .global gUnknown_080FECAC
gUnknown_080FECAC:
    .incbin "baserom.gba", 0x000FECAC, 0x44

    .global gUnknown_080FECF0
gUnknown_080FECF0:
    .incbin "baserom.gba", 0x000FECF0, 0x28

    .global gUnknown_080FED18
gUnknown_080FED18:
    .incbin "baserom.gba", 0x000FED18, 0x48

    .global gUnknown_080FED60
gUnknown_080FED60:
    .incbin "baserom.gba", 0x000FED60, 0x20

    .global gUnknown_080FED80
gUnknown_080FED80:
    .incbin "baserom.gba", 0x000FED80, 0x24

    .global gUnknown_080FEDA4
gUnknown_080FEDA4:
    .incbin "baserom.gba", 0x000FEDA4, 0x10

    .global gUnknown_080FEDB4
gUnknown_080FEDB4:
    .incbin "baserom.gba", 0x000FEDB4, 0x10

    .global gUnknown_080FEDC4
gUnknown_080FEDC4:
    .incbin "baserom.gba", 0x000FEDC4, 0x1C

    .global gUnknown_080FEDE0
gUnknown_080FEDE0:
    .incbin "baserom.gba", 0x000FEDE0, 0xC8

    .global gUnknown_080FEEA8
gUnknown_080FEEA8:
    .incbin "baserom.gba", 0x000FEEA8, 0x18

    .global gUnknown_080FEEC0
gUnknown_080FEEC0:
    .incbin "baserom.gba", 0x000FEEC0, 0x18

    .global gUnknown_080FEED8
gUnknown_080FEED8:
    .incbin "baserom.gba", 0x000FEED8, 0x18

    .global gUnknown_080FEEF0
gUnknown_080FEEF0:
    .incbin "baserom.gba", 0x000FEEF0, 0x1C

    .global gUnknown_080FEF0C
gUnknown_080FEF0C:
    .incbin "baserom.gba", 0x000FEF0C, 0x20

    .global gUnknown_080FEF2C
gUnknown_080FEF2C:
    .incbin "baserom.gba", 0x000FEF2C, 0x18

    .global gUnknown_080FEF44
gUnknown_080FEF44:
    .incbin "baserom.gba", 0x000FEF44, 0x1F0

    .global gUnknown_080FF134
gUnknown_080FF134:
    .incbin "baserom.gba", 0x000FF134, 0x68

    .global callback_sub_0806AC48
callback_sub_0806AC48:
    .4byte 0xFFFF0000
    .4byte sub_0806AC48+1
    .incbin "baserom.gba", 0x000FF1A4, 0xD4

    .global gUnknown_080FF278
gUnknown_080FF278:
    .incbin "baserom.gba", 0x000FF278, 0x54

    .global callback_bgengine_updateScrollHorizontal
callback_bgengine_updateScrollHorizontal:
    .4byte 0xFFFF0000
    .4byte bgengine_updateScrollHorizontal+1
    .incbin "baserom.gba", 0x000FF2D4, 0xEC

    .global gUnknown_080FF3C0
gUnknown_080FF3C0:
    .incbin "baserom.gba", 0x000FF3C0, 0x3C

    .global callback_sub_0806C1D8
callback_sub_0806C1D8:
    .4byte 0xFFFF0000
    .4byte sub_0806C1D8+1

    .global callback_sub_0806C3DC
callback_sub_0806C3DC:
    .4byte 0xFFFF0000
    .4byte sub_0806C3DC+1
    .incbin "baserom.gba", 0x000FF40C, 0x104

    .global gUnknown_080FF510
gUnknown_080FF510:
    .incbin "baserom.gba", 0x000FF510, 0x24

    .global callback_sub_0806C738
callback_sub_0806C738:
    .4byte 0xFFFF0000
    .4byte sub_0806C738+1
    .incbin "baserom.gba", 0x000FF53C, 0x11C

    .global gUnknown_080FF658
gUnknown_080FF658:
    .incbin "baserom.gba", 0x000FF658, 0xC

    .global callback_clear__10ObjPltPool
callback_clear__10ObjPltPool:
    .4byte 0xFFFF0000
    .4byte clear__10ObjPltPool+1
    .incbin "baserom.gba", 0x000FF66C, 0xC0

    .global const_classname_KeyPad
const_classname_KeyPad:
    .ascii "KeyPad"
    .byte 0,0
    .incbin "baserom.gba", 0x000FF734, 0xC

    .global gUnknown_080FF740
gUnknown_080FF740:
    .incbin "baserom.gba", 0x000FF740, 0x1C

    .global gUnknown_080FF75C
gUnknown_080FF75C:
    .incbin "baserom.gba", 0x000FF75C, 0x20

    .global gUnknown_080FF77C
gUnknown_080FF77C:
    .incbin "baserom.gba", 0x000FF77C, 0x24

    .global gUnknown_080FF7A0
gUnknown_080FF7A0:
    .incbin "baserom.gba", 0x000FF7A0, 0x24

    .global gUnknown_080FF7C4
gUnknown_080FF7C4:
    .incbin "baserom.gba", 0x000FF7C4, 0x24

    .global gUnknown_080FF7E8
gUnknown_080FF7E8:
    .incbin "baserom.gba", 0x000FF7E8, 0x24

    .global gUnknown_080FF80C
gUnknown_080FF80C:
    .incbin "baserom.gba", 0x000FF80C, 0x24

    .global gUnknown_080FF830
gUnknown_080FF830:
    .incbin "baserom.gba", 0x000FF830, 0x20

    .global gUnknown_080FF850
gUnknown_080FF850:
    .incbin "baserom.gba", 0x000FF850, 0x1C

    .global gUnknown_080FF86C
gUnknown_080FF86C:
    .incbin "baserom.gba", 0x000FF86C, 0x1C

    .global gUnknown_080FF888
gUnknown_080FF888:
    .incbin "baserom.gba", 0x000FF888, 0x1C

    .global gUnknown_080FF8A4
gUnknown_080FF8A4:
    .incbin "baserom.gba", 0x000FF8A4, 0x1C

    .global gUnknown_080FF8C0
gUnknown_080FF8C0:
    .incbin "baserom.gba", 0x000FF8C0, 0x1C

    .global gUnknown_080FF8DC
gUnknown_080FF8DC:
    .incbin "baserom.gba", 0x000FF8DC, 0x1C

    .global gUnknown_080FF8F8
gUnknown_080FF8F8:
    .incbin "baserom.gba", 0x000FF8F8, 0x1C

    .global gUnknown_080FF914
gUnknown_080FF914:
    .incbin "baserom.gba", 0x000FF914, 0x20

    .global gUnknown_080FF934
gUnknown_080FF934:
    .incbin "baserom.gba", 0x000FF934, 0x24

    .global gUnknown_080FF958
gUnknown_080FF958:
    .incbin "baserom.gba", 0x000FF958, 0x24

    .global gUnknown_080FF97C
gUnknown_080FF97C:
    .incbin "baserom.gba", 0x000FF97C, 0x24

    .global gUnknown_080FF9A0
gUnknown_080FF9A0:
    .incbin "baserom.gba", 0x000FF9A0, 0x14

    .global callback_update__6KeyPadP5Clock
callback_update__6KeyPadP5Clock:
    .4byte 0xFFFF0000
    .4byte update__6KeyPadP5Clock+1

    .global callback_emitNewKeys__6KeyPad
callback_emitNewKeys__6KeyPad:
    .4byte 0xFFFF0000
    .4byte emitNewKeys__6KeyPad+1
    .incbin "baserom.gba", 0x000FF9C4, 0x378

    .global callback_sub_0806D878
callback_sub_0806D878:
    .4byte 0xFFFF0000
    .4byte sub_0806D878+1
    .incbin "baserom.gba", 0x000FFD44, 0x128

    .global callback_sub_0806DBF8
callback_sub_0806DBF8:
    .4byte 0xFFFF0000
    .4byte sub_0806DBF8+1
    .incbin "baserom.gba", 0x000FFE74, 0x128

    .global callback_sub_0806DFF0
callback_sub_0806DFF0:
    .4byte 0xFFFF0000
    .4byte sub_0806DFF0+1
    .incbin "baserom.gba", 0x000FFFA4, 0x1EC

    .global const_classname_FntSystem
const_classname_FntSystem:
    .ascii "FntSystem"
    .byte 0, 0, 0

    .global callback_sub_0806E7B4
callback_sub_0806E7B4:
    .4byte 0xFFFF0000
    .4byte sub_0806E7B4+1
    .incbin "baserom.gba", 0x001001A4, 0x140

    .global callback_sub_0806EA88
callback_sub_0806EA88:
    .4byte 0xFFFF0000
    .4byte sub_0806EA88+1
    .incbin "baserom.gba", 0x001002EC, 0x134

    .global const_classname_RasSystem
const_classname_RasSystem:
    .ascii "RasSystem"
    .byte 0, 0, 0
    .incbin "baserom.gba", 0x0010042C, 0x140

    .global callback_sub_0806EF34
callback_sub_0806EF34:
    .4byte 0xFFFF0000
    .4byte sub_0806EF34+1
    .incbin "baserom.gba", 0x00100574, 0x140

    .global callback_sub_0806F380
callback_sub_0806F380:
    .4byte 0xFFFF0000
    .4byte sub_0806F380+1

    .global gUnknown_081006BC
gUnknown_081006BC:
    .incbin "baserom.gba", 0x001006BC, 0x1140

    .global callback_sub_0806F600
callback_sub_0806F600:
    .4byte 0xFFFF0000
    .4byte sub_0806F600+1
    .incbin "baserom.gba", 0x00101804, 0x140

    .global callback_sub_0806F8B0
callback_sub_0806F8B0:
    .4byte 0xFFFF0000
    .4byte sub_0806F8B0+1
    .incbin "baserom.gba", 0x0010194C, 0x140

    .global callback_sub_0806FA14
callback_sub_0806FA14:
    .4byte 0xFFFF0000
    .4byte sub_0806FA14+1
    .incbin "baserom.gba", 0x00101A94, 0x14C

    .global const_classname_EfcSystem
const_classname_EfcSystem:
    .ascii "EfcSystem"
    .byte 0, 0, 0
    .incbin "baserom.gba", 0x00101BEC, 0xC4

    .global const_classname_SndSystem
const_classname_SndSystem:
    .ascii "SndSystem"
    .byte 0, 0, 0

    .global callback_main__9SndSystem
callback_main__9SndSystem:
    .4byte 0xFFFF0000
    .4byte main__9SndSystem+1

    .global callback_vsync__9SndSystem
callback_vsync__9SndSystem:
    .4byte 0xFFFF0000
    .4byte vsync__9SndSystem+1
    .incbin "baserom.gba", 0x00101CCC, 0x1A0

    .global callback_sub_080705A4
callback_sub_080705A4:
    .4byte 0xFFFF0000
    .4byte sub_080705A4+1
    .incbin "baserom.gba", 0x00101E74, 0xC28

    .global callback_sub_080710B0
callback_sub_080710B0:
    .4byte 0xFFFF0000
    .4byte sub_080710B0+1
    .incbin "baserom.gba", 0x00102AA4, 0x830

    .global callback_sub_080714E4
callback_sub_080714E4:
    .4byte 0xFFFF0000
    .4byte sub_080714E4+1

    .global gUnknown_081032DC
gUnknown_081032DC:
    .incbin "baserom.gba", 0x001032DC, 0xA

    .global gUnknown_081032E6
gUnknown_081032E6:
    .incbin "baserom.gba", 0x001032E6, 0xA

    .global gUnknown_081032F0
gUnknown_081032F0:
    .incbin "baserom.gba", 0x001032F0, 0x420

    .global callback_sub_08071920
callback_sub_08071920:
    .4byte 0xFFFF0000
    .4byte sub_08071920+1
    .incbin "baserom.gba", 0x00103718, 0x418

    .global callback_sub_08071BA0
callback_sub_08071BA0:
    .4byte 0xFFFF0000
    .4byte sub_08071BA0+1
    .incbin "baserom.gba", 0x00103B38, 0x418

    .global callback_sub_08071CD4
callback_sub_08071CD4:
    .4byte 0xFFFF0000
    .4byte sub_08071CD4+1
    .incbin "baserom.gba", 0x00103F58, 0x418

    .global callback_sub_08071E08
callback_sub_08071E08:
    .4byte 0xFFFF0000
    .4byte sub_08071E08+1
    .incbin "baserom.gba", 0x00104378, 0x418

    .global callback_sub_08071F38
callback_sub_08071F38:
    .4byte 0xFFFF0000
    .4byte sub_08071F38+1
    .incbin "baserom.gba", 0x00104798, 0x820

    .global gUnknown_08104FB8
gUnknown_08104FB8:
    .incbin "baserom.gba", 0x00104FB8, 0x10

    .global callback_sub_08072518
callback_sub_08072518:
    .4byte 0xFFFF0000
    .4byte sub_08072518+1
    .incbin "baserom.gba", 0x00104FD0, 0xBA4

    .global gUnknown_08105B74
gUnknown_08105B74:
    .incbin "baserom.gba", 0x00105B74, 0x18

    .global gUnknown_08105B8C
gUnknown_08105B8C:
    .incbin "baserom.gba", 0x00105B8C, 0x18

    .global gUnknown_08105BA4
gUnknown_08105BA4:
    .incbin "baserom.gba", 0x00105BA4, 0x12C

    .global callback_sub_0807489C
callback_sub_0807489C:
    .4byte 0xFFFF0000
    .4byte sub_0807489C+1

    .global callback_sub_080748C8
callback_sub_080748C8:
    .4byte 0xFFFF0000
    .4byte sub_080748C8+1
    .incbin "baserom.gba", 0x00105CE0, 0x568

    .global gUnknown_08106248
gUnknown_08106248:
    .incbin "baserom.gba", 0x00106248, 0x10

    .global gUnknown_08106258
gUnknown_08106258:
    .incbin "baserom.gba", 0x00106258, 0x14

    .global gUnknown_0810626C
gUnknown_0810626C:
    .incbin "baserom.gba", 0x0010626C, 0x18

    .global gUnknown_08106284
gUnknown_08106284:
    .incbin "baserom.gba", 0x00106284, 0x18

    .global gUnknown_0810629C
gUnknown_0810629C:
    .incbin "baserom.gba", 0x0010629C, 0x14

    .global gUnknown_081062B0
gUnknown_081062B0:
    .incbin "baserom.gba", 0x001062B0, 0xB0

    .global gUnknown_08106360
gUnknown_08106360:
    .incbin "baserom.gba", 0x00106360, 0xD10

    .global callback_sub_080775E8
callback_sub_080775E8:
    .4byte 0xFFFF0000
    .4byte sub_080775E8+1

    .global callback_sub_0807762C
callback_sub_0807762C:
    .4byte 0xFFFF0000
    .4byte sub_0807762C+1

    .global callback_sub_08077670
callback_sub_08077670:
    .4byte 0xFFFF0000
    .4byte sub_08077670+1

    .global callback_sub_080776AC
callback_sub_080776AC:
    .4byte 0xFFFF0000
    .4byte sub_080776AC+1

    .global callback_sub_080776E8
callback_sub_080776E8:
    .4byte 0xFFFF0000
    .4byte sub_080776E8+1

    .global callback_sub_08077704
callback_sub_08077704:
    .4byte 0xFFFF0000
    .4byte sub_08077704+1

    .global callback_sub_08077898
callback_sub_08077898:
    .4byte 0xFFFF0000
    .4byte sub_08077898+1

    .global callback_sub_08077A48
callback_sub_08077A48:
    .4byte 0xFFFF0000
    .4byte sub_08077A48+1
    .incbin "baserom.gba", 0x001070B0, 0xD00

    .global callback_unit_join_callback
callback_unit_join_callback:
    .4byte 0xFFFF0000
    .4byte unit_join_callback+1

    .global callback_unit_leave_callback
callback_unit_leave_callback:
    .4byte 0xFFFF0000
    .4byte unit_leave_callback+1
    .incbin "baserom.gba", 0x00107DC0, 0x5F8

    .global gUnknown_081083B8
gUnknown_081083B8:
    .incbin "baserom.gba", 0x001083B8, 0x88

    .global callback_sub_0807C1C8
callback_sub_0807C1C8:
    .4byte 0xFFFF0000
    .4byte sub_0807C1C8+1

    .global callback_sub_0807C244
callback_sub_0807C244:
    .4byte 0xFFFF0000
    .4byte sub_0807C244+1

    .global callback_sub_0807C264
callback_sub_0807C264:
    .4byte 0xFFFF0000
    .4byte sub_0807C264+1

    .global callback_sub_0807C324
callback_sub_0807C324:
    .4byte 0xFFFF0000
    .4byte sub_0807C324+1
    .incbin "baserom.gba", 0x00108460, 0x680

    .global callback_sub_0807CF5C
callback_sub_0807CF5C:
    .4byte 0xFFFF0000
    .4byte sub_0807CF5C+1
    .incbin "baserom.gba", 0x00108AE8, 0x680

    .global callback_sub_0807D280
callback_sub_0807D280:
    .4byte 0xFFFF0000
    .4byte sub_0807D280+1
    .incbin "baserom.gba", 0x00109170, 0x680

    .global callback_sub_0807E44C
callback_sub_0807E44C:
    .4byte 0xFFFF0000
    .4byte sub_0807E44C+1

    .global callback_sub_0807E48C
callback_sub_0807E48C:
    .4byte 0xFFFF0000
    .4byte sub_0807E48C+1

    .global callback_sub_0807E4CC
callback_sub_0807E4CC:
    .4byte 0xFFFF0000
    .4byte sub_0807E4CC+1

    .global callback_sub_0807E50C
callback_sub_0807E50C:
    .4byte 0xFFFF0000
    .4byte sub_0807E50C+1

    .global callback_sub_0807E54C
callback_sub_0807E54C:
    .4byte 0xFFFF0000
    .4byte sub_0807E54C+1

    .global callback_sub_0807E58C
callback_sub_0807E58C:
    .4byte 0xFFFF0000
    .4byte sub_0807E58C+1

    .global callback_sub_0807E5DC
callback_sub_0807E5DC:
    .4byte 0xFFFF0000
    .4byte sub_0807E5DC+1

    .global callback_sub_0807EB40
callback_sub_0807EB40:
    .4byte 0xFFFF0000
    .4byte sub_0807EB40+1

    .global callback_sub_0807EB58
callback_sub_0807EB58:
    .4byte 0xFFFF0000
    .4byte sub_0807EB58+1

    .global callback_sub_0807EB88
callback_sub_0807EB88:
    .4byte 0xFFFF0000
    .4byte sub_0807EB88+1
    .incbin "baserom.gba", 0x00109840, 0x680

    .global callback_sub_0808014C
callback_sub_0808014C:
    .4byte 0xFFFF0000
    .4byte sub_0808014C+1

    .global callback_sub_080801A4
callback_sub_080801A4:
    .4byte 0xFFFF0000
    .4byte sub_080801A4+1

    .global callback_sub_080801FC
callback_sub_080801FC:
    .4byte 0xFFFF0000
    .4byte sub_080801FC+1

    .global callback_sub_08080220
callback_sub_08080220:
    .4byte 0xFFFF0000
    .4byte sub_08080220+1

    .global callback_sub_08080244
callback_sub_08080244:
    .4byte 0xFFFF0000
    .4byte sub_08080244+1

    .global callback_sub_0808025C
callback_sub_0808025C:
    .4byte 0xFFFF0000
    .4byte sub_0808025C+1

    .global callback_sub_0808028C
callback_sub_0808028C:
    .4byte 0xFFFF0000
    .4byte sub_0808028C+1
    .incbin "baserom.gba", 0x00109EF8, 0x60C

    .global gUnknown_0810A504
gUnknown_0810A504:
    .incbin "baserom.gba", 0x0010A504, 0x6A8

    .global gUnknown_0810ABAC
gUnknown_0810ABAC:
    .incbin "baserom.gba", 0x0010ABAC, 0x694

    .global gUnknown_0810B240
gUnknown_0810B240:
    .incbin "baserom.gba", 0x0010B240, 0x38

    .global callback_sub_08081790
callback_sub_08081790:
    .4byte 0xFFFF0000
    .4byte sub_08081790+1

    .global callback_sub_080817B0
callback_sub_080817B0:
        .4byte 0xFFFF0000
        .4byte sub_080817B0+1
    .incbin "baserom.gba", 0x0010B288, 0xCE0

    .global gUnknown_0810BF68
gUnknown_0810BF68:
    .incbin "baserom.gba", 0x0010BF68, 0x6A0

    .global callback_sub_08082968
callback_sub_08082968:
    .4byte 0xFFFF0000
    .4byte sub_08082968+1

    .global callback_sub_080829F4
callback_sub_080829F4:
    .4byte 0xFFFF0000
    .4byte sub_080829F4+1

    .global callback_sub_08082AA0
callback_sub_08082AA0:
    .4byte 0xFFFF0000
    .4byte sub_08082AA0+1

    .global callback_sub_08082AC0
callback_sub_08082AC0:
    .4byte 0xFFFF0000
    .4byte sub_08082AC0+1
    .incbin "baserom.gba", 0x0010C628, 0x5DC

    .global gUnknown_0810CC04
gUnknown_0810CC04:
    .incbin "baserom.gba", 0x0010CC04, 0x1424

    .global callback_sub_0808431C
callback_sub_0808431C:
        .4byte 0xFFFF0000
        .4byte sub_0808431C+1
    .incbin "baserom.gba", 0x0010E030, 0x680

    .global callback_sub_08084D8C
callback_sub_08084D8C:
    .4byte 0xFFFF0000
    .4byte sub_08084D8C+1

    .global callback_sub_08084DBC
callback_sub_08084DBC:
    .4byte 0xFFFF0000
    .4byte sub_08084DBC+1

    .global callback_sub_08084DEC
callback_sub_08084DEC:
    .4byte 0xFFFF0000
    .4byte sub_08084DEC+1
    .incbin "baserom.gba", 0x0010E6C8, 0x680

    .global callback_sub_080856D4
callback_sub_080856D4:
    .4byte 0xFFFF0000
    .4byte sub_080856D4+1
    .incbin "baserom.gba", 0x0010ED50, 0x680

    .global callback_sub_08085C84
callback_sub_08085C84:
    .4byte 0xFFFF0000
    .4byte sub_08085C84+1
    .incbin "baserom.gba", 0x0010F3D8, 0x680

    .global callback_sub_08085DF4
callback_sub_08085DF4:
    .4byte 0xFFFF0000
    .4byte sub_08085DF4+1
    .incbin "baserom.gba", 0x0010FA60, 0x680

    .global callback_sub_08085F80
callback_sub_08085F80:
    .4byte 0xFFFF0000
    .4byte sub_08085F80+1
    .incbin "baserom.gba", 0x001100E8, 0x680

    .global callback_sub_080860F4
callback_sub_080860F4:
    .4byte 0xFFFF0000
    .4byte sub_080860F4+1
    .incbin "baserom.gba", 0x00110770, 0x680

    .global callback_sub_080862A8
callback_sub_080862A8:
    .4byte 0xFFFF0000
    .4byte sub_080862A8+1
    .incbin "baserom.gba", 0x00110DF8, 0x680

    .global callback_sub_08086460
callback_sub_08086460:
    .4byte 0xFFFF0000
    .4byte sub_08086460+1
    .incbin "baserom.gba", 0x00111480, 0x680

    .global callback_sub_08086694
callback_sub_08086694:
    .4byte 0xFFFF0000
    .4byte sub_08086694+1
    .incbin "baserom.gba", 0x00111B08, 0x680

    .global callback_sub_08086820
callback_sub_08086820:
    .4byte 0xFFFF0000
    .4byte sub_08086820+1
    .incbin "baserom.gba", 0x00112190, 0x680

    .global callback_sub_08086AB0
callback_sub_08086AB0:
    .4byte 0xFFFF0000
    .4byte sub_08086AB0+1

    .global gUnknown_08112818
gUnknown_08112818:
    .incbin "baserom.gba", 0x00112818, 0x690

    .global gUnknown_08112EA8
gUnknown_08112EA8:
    .incbin "baserom.gba", 0x00112EA8, 0x700

    .global gUnknown_081135A8
gUnknown_081135A8:
    .incbin "baserom.gba", 0x001135A8, 0xD5C

    .global callback_sub_08086F80
callback_sub_08086F80:
    .4byte 0xFFFF0000
    .4byte sub_08086F80+1
    .incbin "baserom.gba", 0x0011430C, 0xC78

    .global callback_sub_08087AE0
callback_sub_08087AE0:
    .4byte 0xFFFF0000
    .4byte sub_08087AE0+1
    .incbin "baserom.gba", 0x00114F8C, 0x700

    .global gUnknown_0811568C
gUnknown_0811568C:
    .incbin "baserom.gba", 0x0011568C, 0x2

    .global gUnknown_0811568E
gUnknown_0811568E:
    .incbin "baserom.gba", 0x0011568E, 0x3E

    .global gUnknown_081156CC
gUnknown_081156CC:
    .incbin "baserom.gba", 0x001156CC, 0x206

    .global gUnknown_081158D2
gUnknown_081158D2:
    .incbin "baserom.gba", 0x001158D2, 0x8

    .global gUnknown_081158DA
gUnknown_081158DA:
    .incbin "baserom.gba", 0x001158DA, 0x162

    .global gUnknown_08115A3C
gUnknown_08115A3C:
    .incbin "baserom.gba", 0x00115A3C, 0x40

    .global gUnknown_08115A7C
gUnknown_08115A7C:
    .incbin "baserom.gba", 0x00115A7C, 0x430

    .global callback_sub_08089A9C
callback_sub_08089A9C:
    .4byte 0xFFFF0000
    .4byte sub_08089A9C+1
    .incbin "baserom.gba", 0x00115EB4, 0x158

    .global callback_sub_08089F94
callback_sub_08089F94:
    .4byte 0xFFFF0000
    .4byte sub_08089F94+1
    .incbin "baserom.gba", 0x00116014, 0x158

    .global callback_sub_0808A230
callback_sub_0808A230:
    .4byte 0xFFFF0000
    .4byte sub_0808A230+1
    .incbin "baserom.gba", 0x00116174, 0x158

    .global callback_sub_0808A3C8
callback_sub_0808A3C8:
    .4byte 0xFFFF0000
    .4byte sub_0808A3C8+1
    .incbin "baserom.gba", 0x001162D4, 0x158

    .global callback_sub_0808A5CC
callback_sub_0808A5CC:
    .4byte 0xFFFF0000
    .4byte sub_0808A5CC+1
    .incbin "baserom.gba", 0x00116434, 0x158

    .global callback_sub_0808A8F0
callback_sub_0808A8F0:
    .4byte 0xFFFF0000
    .4byte sub_0808A8F0+1
    .incbin "baserom.gba", 0x00116594, 0x158

    .global callback_sub_0808AB4C
callback_sub_0808AB4C:
    .4byte 0xFFFF0000
    .4byte sub_0808AB4C+1
    .incbin "baserom.gba", 0x001166F4, 0x158

    .global callback_sub_0808ADD4
callback_sub_0808ADD4:
    .4byte 0xFFFF0000
    .4byte sub_0808ADD4+1
    .incbin "baserom.gba", 0x00116854, 0x830

    .global callback_sub_0808AF44
callback_sub_0808AF44:
    .4byte 0xFFFF0000
    .4byte sub_0808AF44+1
    .incbin "baserom.gba", 0x0011708C, 0x418

    .global callback_sub_0808B084
callback_sub_0808B084:
    .4byte 0xFFFF0000
    .4byte sub_0808B084+1
    .incbin "baserom.gba", 0x001174AC, 0x418

    .global callback_sub_0808B1B8
callback_sub_0808B1B8:
    .4byte 0xFFFF0000
    .4byte sub_0808B1B8+1
    .incbin "baserom.gba", 0x001178CC, 0xA98

    .global callback_sub_0808C59C
callback_sub_0808C59C:
    .4byte 0xFFFF0000
    .4byte sub_0808C59C+1

    .global callback_sub_0808C618
callback_sub_0808C618:
    .4byte 0xFFFF0000
    .4byte sub_0808C618+1

    .global callback_sub_0808C694
callback_sub_0808C694:
    .4byte 0xFFFF0000
    .4byte sub_0808C694+1

    .global callback_sub_0808C6D8
callback_sub_0808C6D8:
    .4byte 0xFFFF0000
    .4byte sub_0808C6D8+1

    .global callback_sub_0808C758
callback_sub_0808C758:
    .4byte 0xFFFF0000
    .4byte sub_0808C758+1

    .global callback_sub_0808CB78
callback_sub_0808CB78:
    .4byte 0xFFFF0000
    .4byte sub_0808CB78+1

    .global callback_sub_0808CB90
callback_sub_0808CB90:
    .4byte 0xFFFF0000
    .4byte sub_0808CB90+1

    .global callback_sub_0808CBC0
callback_sub_0808CBC0:
    .4byte 0xFFFF0000
    .4byte sub_0808CBC0+1
    .incbin "baserom.gba", 0x001183A4, 0x680

    .global callback_sub_0808DA04
callback_sub_0808DA04:
    .4byte 0xFFFF0000
    .4byte sub_0808DA04+1

    .global callback_sub_0808DA44
callback_sub_0808DA44:
    .4byte 0xFFFF0000
    .4byte sub_0808DA44+1

    .global callback_sub_0808DA84
callback_sub_0808DA84:
    .4byte 0xFFFF0000
    .4byte sub_0808DA84+1

    .global callback_sub_0808DAC4
callback_sub_0808DAC4:
    .4byte 0xFFFF0000
    .4byte sub_0808DAC4+1

    .global callback_sub_0808DB04
callback_sub_0808DB04:
    .4byte 0xFFFF0000
    .4byte sub_0808DB04+1

    .global callback_sub_0808DB44
callback_sub_0808DB44:
    .4byte 0xFFFF0000
    .4byte sub_0808DB44+1

    .global callback_sub_0808DB94
callback_sub_0808DB94:
    .4byte 0xFFFF0000
    .4byte sub_0808DB94+1

    .global callback_sub_0808DF84
callback_sub_0808DF84:
    .4byte 0xFFFF0000
    .4byte sub_0808DF84+1

    .global callback_sub_0808DF9C
callback_sub_0808DF9C:
    .4byte 0xFFFF0000
    .4byte sub_0808DF9C+1

    .global callback_sub_0808DFBC
callback_sub_0808DFBC:
    .4byte 0xFFFF0000
    .4byte sub_0808DFBC+1
    .incbin "baserom.gba", 0x00118A74, 0x680

    .global callback_sub_0808E2DC
callback_sub_0808E2DC:
    .4byte 0xFFFF0000
    .4byte sub_0808E2DC+1

    .global callback_sub_0808E300
callback_sub_0808E300:
    .4byte 0xFFFF0000
    .4byte sub_0808E300+1

    .global callback_sub_0808E318
callback_sub_0808E318:
    .4byte 0xFFFF0000
    .4byte sub_0808E318+1

    .global callback_sub_0808E338
callback_sub_0808E338:
    .4byte 0xFFFF0000
    .4byte sub_0808E338+1
    .incbin "baserom.gba", 0x00119114, 0x428

    .global callback_sub_0808E664
callback_sub_0808E664:
    .4byte 0xFFFF0000
    .4byte sub_0808E664+1

    .global gUnknown_08119544
gUnknown_08119544:
    .incbin "baserom.gba", 0x00119544, 0x420

    .global callback_sub_0808EAB0
callback_sub_0808EAB0:
    .4byte 0xFFFF0000
    .4byte sub_0808EAB0+1

    .global gUnknown_0811996C
gUnknown_0811996C:
    .incbin "baserom.gba", 0x0011996C, 0xA

    .global gUnknown_08119976
gUnknown_08119976:
    .incbin "baserom.gba", 0x00119976, 0x6
