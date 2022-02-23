.section .data
.align 2, 0

// Unknown, not referenced by anything?
gUnknown_08D2D2D8::
    .2byte 0x300
    .2byte 0x202
    .2byte 0x600
    .2byte 0x101
    .2byte 0x405
    .2byte 0x100
    .2byte 0x2
    .2byte 0x600

gUnknown_08D2D2E8::
    .4byte sub_0800B1FC+1
    .4byte sub_0800B358+1
    .4byte sub_0800B474+1
    .4byte sub_0800B504+1
    .4byte sub_0800B614+1
    .4byte sub_0800B63C+1
    .4byte sub_0800B660+1

    .global gUnknown_08D2D304
gUnknown_08D2D304:
    .incbin "baserom.gba", 0x00D2D304, 0xC

    .global gUnknown_08D2D310
gUnknown_08D2D310:
    .incbin "baserom.gba", 0x00D2D310, 0x4

    .global gUnknown_08D2D314
gUnknown_08D2D314:
    .incbin "baserom.gba", 0x00D2D314, 0x4

    .global gUnknown_08D2D318
gUnknown_08D2D318:
    .incbin "baserom.gba", 0x00D2D318, 0x4

    .global gUnknown_08D2D31C
gUnknown_08D2D31C:
    .incbin "baserom.gba", 0x00D2D31C, 0x4

    .global gUnknown_08D2D320
gUnknown_08D2D320:
    .4byte sub_0801402C+1
    .4byte 00000000
    .4byte sub_08014074+1
    .4byte sub_080140D0+1
    .4byte sub_080141D0+1
    .4byte 00000000
    .4byte 00000000
    .4byte 00000000
    .4byte sub_08014244+1
    .4byte sub_080142F0+1
    .4byte sub_0801439C+1
    .4byte 00000000
    .4byte 00000000
    .4byte 00000000
    .4byte 00000000
    .4byte 00000000
    .4byte 00000000
    .4byte 00000000
    .4byte 00000000
    .4byte 00000000
    .4byte 00000000
    .4byte sub_08014464+1
    .4byte sub_080144E8+1
    .4byte sub_08014584+1
    .4byte sub_080145A8+1
    .4byte sub_080145BC+1
    .4byte 00000000
    .4byte 00000000
    .4byte 00000000
    .4byte 00000000
    .4byte 00000000

    .global gUnknown_08D2D39C
gUnknown_08D2D39C:
        .4byte sub_080145F4+1
        .4byte 00000000
        .4byte sub_08014640+1
        .4byte sub_0801468C+1
        .4byte sub_08014798+1
        .4byte sub_0801480C+1
        .4byte sub_080148D4+1
        .4byte sub_080149D4+1
        .4byte sub_08014A40+1
        .4byte sub_08014AEC+1
        .4byte sub_08014B98+1
        .4byte sub_08014C84+1
        .4byte sub_08014CFC+1
        .4byte sub_08014D74+1
        .4byte sub_08014DEC+1
        .4byte sub_08014E04+1
        .4byte sub_08014E1C+1
        .4byte sub_08014EB0+1
        .4byte sub_08014F28+1
        .4byte sub_08014FAC+1
        .4byte sub_08014FE0+1
        .4byte sub_08015090+1
        .4byte sub_080150F8+1
        .4byte 00000000
        .4byte 00000000
        .4byte sub_08015174+1
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte sub_0801526C+1


    .global gUnknown_08D2D418
gUnknown_08D2D418:
        .4byte sub_08015278+1
        .4byte 00000000
        .4byte sub_080152B4+1
        .4byte sub_080152E0+1
        .4byte sub_08015360+1
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte sub_08015440+1
        .4byte sub_080154C0+1
        .4byte sub_08015540+1
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte sub_080155C0+1
        .4byte sub_08015668+1
        .4byte sub_08015730+1
        .4byte sub_080157C4+1
        .4byte sub_08015844+1
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000


    .global gUnknown_08D2D494
gUnknown_08D2D494:
        .4byte sub_080158C4+1
        .4byte 00000000
        .4byte sub_080158F0+1
        .4byte sub_0801591C+1
        .4byte sub_08015988+1
        .4byte sub_08015A64+1
        .4byte sub_08015CEC+1
        .4byte sub_08015E50+1
        .4byte sub_08015ED0+1
        .4byte sub_08015F50+1
        .4byte sub_08015FD0+1
        .4byte sub_0801603C+1
        .4byte sub_08016108+1
        .4byte sub_080161D4+1
        .4byte sub_080162A8+1
        .4byte sub_0801632C+1
        .4byte sub_080163E4+1
        .4byte sub_0801645C+1
        .4byte sub_08016528+1
        .4byte sub_080166D8+1
        .4byte sub_080167B0+1
        .4byte sub_0801685C+1
        .4byte sub_080168D8+1
        .4byte 00000000
        .4byte 00000000
        .4byte sub_08016984+1
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte sub_08016A18+1

    .global gUnknown_08D2D510
gUnknown_08D2D510:
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte sub_08016A28+1
        .4byte sub_08016A48+1
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte sub_08016A60+1
        .4byte sub_08016A80+1
        .4byte nullsub_65+1
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte nullsub_66+1
        .4byte sub_08016AA8+1
        .4byte sub_08016AE4+1
        .4byte sub_08016AF4+1
        .4byte sub_08016B14+1
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000


    .global gUnknown_08D2D58C
gUnknown_08D2D58C:
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte sub_08016B34+1
        .4byte sub_08016B54+1
        .4byte sub_08016B6C+1
        .4byte nullsub_67+1
        .4byte sub_08016BB8+1
        .4byte sub_08016BC4+1
        .4byte sub_08016BE4+1
        .4byte sub_08016C04+1
        .4byte sub_08016C10+1
        .4byte sub_08016C1C+1
        .4byte sub_08016C28+1
        .4byte sub_08016C34+1
        .4byte sub_08016C40+1
        .4byte sub_08016C4C+1
        .4byte sub_08016C58+1
        .4byte sub_08016C64+1
        .4byte sub_08016C70+1
        .4byte sub_08016C7C+1
        .4byte sub_08016C88+1
        .4byte sub_08016C94+1
        .4byte 00000000
        .4byte 00000000
        .4byte sub_08016CA0+1
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte sub_08016CB0+1


    .global gUnknown_08D2D608
gUnknown_08D2D608:
        .4byte sub_08018630+1
        .4byte sub_08018694+1
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000


    .global gUnknown_08D2D628
gUnknown_08D2D628:
    .incbin "baserom.gba", 0x00D2D628, 0x6

    .global gUnknown_08D2D62E
gUnknown_08D2D62E:
    .incbin "baserom.gba", 0x00D2D62E, 0x6

    .global gUnknown_08D2D634
gUnknown_08D2D634:
    .incbin "baserom.gba", 0x00D2D634, 0x8

    .global gUnknown_08D2D63C
gUnknown_08D2D63C:
    .incbin "baserom.gba", 0x00D2D63C, 0x4

    .global gUnknown_08D2D640
gUnknown_08D2D640:
    .incbin "baserom.gba", 0x00D2D640, 0x4

    .global gUnknown_08D2D644
gUnknown_08D2D644:
    .incbin "baserom.gba", 0x00D2D644, 0x4

    .global gUnknown_08D2D648
gUnknown_08D2D648:
    .incbin "baserom.gba", 0x00D2D648, 0x4

    .global gUnknown_08D2D64C
gUnknown_08D2D64C:
    .incbin "baserom.gba", 0x00D2D64C, 0x4

    .global gUnknown_08D2D650
gUnknown_08D2D650:
    .incbin "baserom.gba", 0x00D2D650, 0x4

    .global gUnknown_08D2D654
gUnknown_08D2D654:
    .incbin "baserom.gba", 0x00D2D654, 0x4

    .global gUnknown_08D2D658
gUnknown_08D2D658:
    .incbin "baserom.gba", 0x00D2D658, 0x400

    .global gScriptCmdTable
gScriptCmdTable:
           .4byte cmd_delay+1
           .4byte cmd_set_anim_speed+1
           .4byte 00000000      
           .4byte cmd_load_subscript+1
           .4byte cmd_04+1
           .4byte cmd_05+1
           .4byte cmd_06+1
           .4byte cmd_07+1
           .4byte cmd_reload_room+1
           .4byte 00000000      
           .4byte cmd_set_flag+1
           .4byte cmd_0B+1
           .4byte cmd_0C+1
           .4byte cmd_push_flag+1
           .4byte cmd_0E+1
           .4byte cmd_0F+1
           .4byte cmd_flag_equals+1
           .4byte cmd_11+1
           .4byte cmd_12+1
           .4byte 00000000      
           .4byte cmd_14+1
           .4byte cmd_push_map_id+1
           .4byte cmd_add_pocket+1
           .4byte cmd_push_pocket+1
           .4byte cmd_set_key_item+1
           .4byte cmd_get_item_count+1
           .4byte cmd_get_party_size+1
           .4byte cmd_has_party_member+1
           .4byte cmd_has_party_member_2+1
           .4byte cmd_party_heal+1
           .4byte cmd_party_add+1
           .4byte cmd_party_remove+1
           .4byte cmd_20+1
           .4byte cmd_set_giftbox_flag+1
           .4byte cmd_get_giftbox_flag+1
           .4byte cmd_member_heal+1
           .4byte cmd_24+1
           .4byte cmd_add_bank+1
           .4byte cmd_get_bank+1
           .4byte cmd_27+1
           .4byte cmd_28+1
           .4byte cmd_29+1
           .4byte cmd_2A+1
           .4byte cmd_cfg_member+1
           .4byte cmd_cfg_member_item+1
           .4byte cmd_get_hp_pp+1
           .4byte cmd_2E+1
           .4byte cmd_2F+1
           .4byte cmd_set_ailment+1
           .4byte cmd_31+1
           .4byte cmd_disp_msg+1
           .4byte cmd_disp_msg_0+1
           .4byte cmd_34+1
           .4byte cmd_35+1
           .4byte cmd_get_menu_selection+1
           .4byte cmd_37+1
           .4byte cmd_38+1
           .4byte cmd_load_name+1
           .4byte cmd_3A+1
           .4byte cmd_3B+1
           .4byte cmd_change_room+1
           .4byte cmd_3D+1
           .4byte cmd_3E+1
           .4byte cmd_3F+1
           .4byte cmd_pan_to_pos+1
           .4byte cmd_41+1
           .4byte cmd_pan_to_map_pos+1
           .4byte cmd_43+1
           .4byte cmd_44+1
           .4byte cmd_45+1
           .4byte cmd_46+1
           .4byte cmd_47+1
           .4byte cmd_48+1
           .4byte cmd_cam_follow_sprite+1
           .4byte cmd_4A+1
           .4byte cmd_4B+1
           .4byte cmd_4C+1
           .4byte cmd_4D+1
           .4byte cmd_4E+1
           .4byte cmd_4F+1
           .4byte cmd_50+1
           .4byte cmd_play_anim+1
           .4byte cmd_linemove+1
           .4byte cmd_53+1
           .4byte cmd_54+1
           .4byte cmd_55+1
           .4byte cmd_56+1
           .4byte cmd_57+1
           .4byte cmd_58+1
           .4byte cmd_59+1
           .4byte cmd_5A+1
           .4byte cmd_5B+1
           .4byte cmd_5C+1
           .4byte cmd_set_member_sprite+1
           .4byte cmd_5E+1
           .4byte cmd_5F+1
           .4byte cmd_60+1
           .4byte cmd_61+1
           .4byte cmd_62+1
           .4byte cmd_63+1
           .4byte cmd_64+1
           .4byte cmd_65+1
           .4byte cmd_66+1
           .4byte cmd_67+1
           .4byte cmd_68+1
           .4byte cmd_69+1
           .4byte cmd_6A+1
           .4byte cmd_6B+1
           .4byte cmd_6C+1
           .4byte cmd_6D+1
           .4byte cmd_set_fade+1
           .4byte cmd_fade_in+1
           .4byte cmd_play_fade+1
           .4byte cmd_71+1
           .4byte cmd_72+1
           .4byte cmd_73+1
           .4byte cmd_set_palettes+1
           .4byte cmd_75+1
           .4byte cmd_76+1
           .4byte cmd_stop_shake+1
           .4byte cmd_play_anim_above+1
           .4byte cmd_79+1
           .4byte cmd_7A+1
           .4byte cmd_7B+1
           .4byte cmd_7C+1
           .4byte cmd_7D+1
           .4byte cmd_7E+1
           .4byte cmd_7F+1
           .4byte cmd_80+1
           .4byte cmd_81+1
           .4byte cmd_play_sound_ext+1
           .4byte cmd_play_sound+1
           .4byte cmd_84+1
           .4byte cmd_85+1
           .4byte cmd_86+1
           .4byte cmd_87+1
           .4byte cmd_88+1
           .4byte cmd_set_bgm+1
           .4byte cmd_8A+1
           .4byte cmd_set_bgm_other+1
           .4byte cmd_init_battle+1
           .4byte cmd_8D+1
           .4byte cmd_8E+1
           .4byte cmd_8F+1
           .4byte cmd_90+1
           .4byte cmd_91+1
           .4byte cmd_set_gameover+1
           .4byte cmd_93+1
           .4byte 00000000      
           .4byte 00000000      
           .4byte cmd_96+1
           .4byte 00000000      
           .4byte 00000000      
           .4byte 00000000      
           .4byte 00000000      
           .4byte 00000000      
           .4byte 00000000      
           .4byte 00000000      
           .4byte 00000000      
           .4byte 00000000      
           .4byte cmd_open_shop+1
           .4byte cmd_open_save+1
           .4byte cmd_open_naming+1
           .4byte cmd_cmp_input_name+1
           .4byte cmd_open_itemguy+1
           .4byte cmd_open_bank+1
           .4byte cmd_A6+1
           .4byte 00000000      
           .4byte 00000000      
           .4byte 00000000      
           .4byte cmd_restart+1
           .4byte cmd_set_movement_property+1
           .4byte cmd_AC+1
           .4byte cmd_AD+1
           .4byte cmd_AE+1
           .4byte cmd_AF+1
           .4byte cmd_B0+1
           .4byte cmd_B1+1
           .4byte 00000000      
           .4byte 00000000      
           .4byte cmd_B4+1
           .4byte cmd_load_sprite_table+1
           .4byte cmd_disp_text_special+1
           .4byte cmd_B7+1
           .4byte cmd_B8+1
           .4byte cmd_B9+1
           .4byte cmd_BA+1
           .4byte cmd_BB+1
           .4byte cmd_BC+1
           .4byte cmd_BD+1
           .4byte cmd_BE+1
           .4byte cmd_BF+1
           .4byte cmd_C0+1
           .4byte cmd_get_talker_sprite+1
           .4byte cmd_C2+1
           .4byte cmd_C3+1
           .4byte cmd_C4+1
           .4byte cmd_C5+1
           .4byte cmd_C6+1
           .4byte cmd_C7+1
           .4byte cmd_C8+1
           .4byte cmd_C9+1
           .4byte cmd_CA+1
           .4byte cmd_CB+1
           .4byte cmd_CC+1
           .4byte cmd_CD+1
           .4byte cmd_CE+1
           .4byte cmd_CF+1
           .4byte cmd_D0+1
           .4byte cmd_D1+1
           .4byte cmd_D2+1
           .4byte cmd_D3+1
           .4byte cmd_set_volume+1
           .4byte cmd_D5+1
           .4byte cmd_D6+1
           .4byte cmd_D7+1
           .4byte cmd_set_logo_disp+1
           .4byte cmd_D9+1
           .4byte cmd_DA+1
           .4byte cmd_DB+1
           .4byte cmd_DC+1
           .4byte cmd_DD+1
           .4byte cmd_DE+1
           .4byte cmd_DF+1
           .4byte cmd_E0+1
           .4byte cmd_E1+1
           .4byte cmd_play_sfx+1
           .4byte cmd_E3+1
           .4byte cmd_E4+1
           .4byte cmd_E5+1
           .4byte cmd_E6+1
           .4byte cmd_E7+1
           .4byte cmd_E8+1
           .4byte cmd_E9+1
           .4byte cmd_EA+1
           .4byte cmd_EB+1
           .4byte cmd_get_char_lvl+1
           .4byte cmd_heal_hp+1
           .4byte cmd_heal_pp+1
           .4byte cmd_set_psi+1
           .4byte cmd_F0+1
           .4byte cmd_F1+1
           .4byte cmd_F2+1
           .4byte cmd_F3+1
           .4byte cmd_F4+1
           .4byte cmd_F5+1
           .4byte cmd_disp_staffroll+1
           .4byte cmd_F7+1
           .4byte cmd_F8+1
           .4byte cmd_F9+1
           .4byte cmd_FA+1
           .4byte cmd_put_ocho+1
           .4byte cmd_get_ocho+1
           .4byte cmd_FD+1
           .4byte cmd_FE+1
           .4byte cmd_FF+1

//     .incbin "baserom.gba", 0x00D2DA58, 0x400

    .global gUnknown_08D2DE58
gUnknown_08D2DE58:
    .incbin "baserom.gba", 0x00D2DE58, 0xA0

    .global gUnknown_08D2DEF8
gUnknown_08D2DEF8:
    .incbin "baserom.gba", 0x00D2DEF8, 0x10

    .global gUnknown_08D2DF08
gUnknown_08D2DF08:
    .incbin "baserom.gba", 0x00D2DF08, 0xC

    .global gUnknown_08D2DF14
gUnknown_08D2DF14:
        .4byte sub_0802DEB0+1
        .4byte sub_0802DF14+1
        .4byte sub_0802DF48+1
        .4byte sub_0802DF94+1
        .4byte sub_0802DFC0+1
        .4byte sub_0802DFE4+1
        .4byte sub_0802E048+1
        .4byte sub_0802E070+1
        .4byte sub_0802E07C+1
        .4byte sub_0802E0A4+1
        .4byte sub_0802E0C8+1
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte 00000000
        .4byte sub_0802E100+1


    .global gUnknown_08D2DF64
gUnknown_08D2DF64:
        .4byte sub_0802E104+1
        .4byte sub_0802E13C+1
        .4byte sub_0802E200+1
        .4byte sub_0802E25C+1
        .4byte sub_0802E2BC+1
        .4byte sub_0802E340+1
        .4byte sub_0802E394+1
        .4byte sub_0802E400+1
        .4byte sub_0802E410+1
        .4byte sub_0802E420+1
        .4byte sub_0802E43C+1
        .4byte sub_0802E458+1
        .4byte sub_0802E474+1
        .4byte sub_0802E4C4+1
        .4byte sub_0802E530+1
        .4byte sub_0802E580+1
        .4byte sub_0802E58C+1
        .4byte sub_0802E5F4+1
        .4byte sub_0802E630+1
        .4byte sub_0802E64C+1
        .4byte sub_0802E668+1
        .4byte sub_0802E684+1
        .4byte sub_0802E6A0+1
        .4byte sub_0802E6BC+1
        .4byte sub_0802E728+1
        .4byte sub_0802E7C0+1
        .4byte sub_0802E830+1
        .4byte sub_0802E884+1
        .4byte sub_0802E9C8+1
        .4byte sub_0802E9E8+1
        .4byte sub_0802EA04+1
        .4byte sub_0802EB5C+1
        .4byte sub_0802EBAC+1
        .4byte sub_0802EBD4+1
        .4byte sub_0802EBE4+1
        .4byte sub_0802EC3C+1
        .4byte sub_0802ECCC+1
        .4byte sub_0802ECF4+1
        .4byte sub_0802ED2C+1
        .4byte sub_0802ED5C+1
        .4byte sub_0802ED90+1
        .4byte sub_0802EDBC+1
        .4byte sub_0802F02C+1
        .4byte sub_0802F200+1
        .4byte sub_0802F234+1
        .4byte sub_0802F2B4+1
        .4byte sub_0802F2CC+1
        .4byte sub_0802F304+1
        .4byte sub_0802F348+1
        .4byte sub_0802F390+1
        .4byte sub_08030170+1
        .4byte sub_08030174+1
        .4byte sub_08030178+1
        .4byte sub_08030170+1


    .global gUnknown_08D2E03C
gUnknown_08D2E03C:
    .incbin "baserom.gba", 0x00D2E03C, 0x8

    .global gUnknown_08D2E044
gUnknown_08D2E044:
    .incbin "baserom.gba", 0x00D2E044, 0xC

    .global gUnknown_08D2E050
gUnknown_08D2E050:
    .incbin "baserom.gba", 0x00D2E050, 0x10

    .global gUnknown_08D2E060
gUnknown_08D2E060:
    .incbin "baserom.gba", 0x00D2E060, 0x10

    .global gUnknown_08D2E070
gUnknown_08D2E070:
    .incbin "baserom.gba", 0x00D2E070, 0x6C

    .global gUnknown_08D2E0DC
gUnknown_08D2E0DC:
    .incbin "baserom.gba", 0x00D2E0DC, 0x6

    .global gUnknown_08D2E0E2
gUnknown_08D2E0E2:
    .incbin "baserom.gba", 0x00D2E0E2, 0x6

    .global gUnknown_08D2E0E8
gUnknown_08D2E0E8:
    .incbin "baserom.gba", 0x00D2E0E8, 0x6

    .global gUnknown_08D2E0EE
gUnknown_08D2E0EE:
    .incbin "baserom.gba", 0x00D2E0EE, 0x10

    .global gUnknown_08D2E0FE
gUnknown_08D2E0FE:
    .incbin "baserom.gba", 0x00D2E0FE, 0x16

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


    .global gUnknown_08D2E178
gUnknown_08D2E178:
        .4byte sub_08039EC8+1
        .4byte sub_08039F00+1
        .4byte sub_08039F40+1
        .4byte sub_08039F80+1
        .4byte sub_08039FBC+1
        .4byte sub_08039FFC+1


    .global gUnknown_08D2E190
gUnknown_08D2E190:
        .4byte sub_0803A0EC+1
        .4byte sub_0803A2D4+1
        .4byte sub_0803A4D0+1
        .4byte sub_0803A75C+1
        .4byte sub_0803A974+1
        .4byte sub_0803AC9C+1


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


    .global gUnknown_08D2E1D8
gUnknown_08D2E1D8:
    .incbin "baserom.gba", 0x00D2E1D8, 0x6D6C

    .global gUnknown_08D34F44
gUnknown_08D34F44:
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

gUnknown_0911DEB4::
    .incbin "baserom.gba", 0x0111DEB4, 0xe4dc

gUnknown_0912C390::
    .incbin "baserom.gba", 0x0112C390, 0x67c8

gUnknown_09132B58::
    .incbin "baserom.gba", 0x01132B58, 0x330b8

gUnknown_09165C10::
    .incbin "baserom.gba", 0x01165C10, 0x400c

gUnknown_09169C1C::
    .incbin "baserom.gba", 0x01169C1C, 0x2eec

gUnknown_0916CB08::
    .incbin "baserom.gba", 0x0116CB08, 0x14c74

    .global gUnknown_0918177C
gUnknown_0918177C:
    .incbin "baserom.gba", 0x0118177C, 0x17494

    .global gUnknown_09198C10
gUnknown_09198C10:
    .incbin "baserom.gba", 0x01198C10, 0x1d1ae4
