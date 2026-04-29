	.syntax unified
sub_08004114:
	push {r4, r5, lr}
	ldr r4, _08004150
	movs r0, #0
	strh r0, [r4]
	ldr r1, _08004154
	ldrh r0, [r1]
	movs r3, #1
	orrs r0, r3
	strh r0, [r1]
	ldr r2, _08004158
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	strh r3, [r4]
	bl snd_vsync_on
	ldr r5, _0800415C
	ldrb r0, [r5]
	cmp r0, #1
	bne _08004168
	ldr r0, _08004160
	ldr r1, _08004164
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	bl sub_08008704
	b _0800418E
	.align 2, 0
_08004150: .4byte 0x04000208
_08004154: .4byte 0x04000200
_08004158: .4byte 0x04000004
_0800415C: .4byte gUnknown_02005080
_08004160: .4byte gGame
_08004164: .4byte 0x000067AC
_08004168:
	ldr r4, _080041E0
	ldr r2, _080041E4
	adds r0, r4, r2
	ldrh r0, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	bl setup_overworld_music
	ldr r0, _080041E8
	adds r4, r4, r0
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800418E
	ldrb r0, [r5]
	cmp r0, #4
	bne _0800418E
	bl retrieveMusicPlayerVolumes
_0800418E:
	ldr r4, _080041EC
	ldr r5, _080041E0
	ldr r1, _080041F0
	adds r0, r5, r1
	ldrh r0, [r0]
	ldrh r1, [r4]
	strh r0, [r4]
	ldr r2, _080041F4
	adds r0, r5, r2
	ldrh r0, [r0]
	ldrh r1, [r4, #2]
	strh r0, [r4, #2]
	ldr r1, _080041F8
	adds r0, r5, r1
	ldrh r0, [r0]
	ldrh r1, [r4, #4]
	strh r0, [r4, #4]
	movs r0, #6
	strb r0, [r5]
	bl sub_08013D38
	ldr r2, _080041E8
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _080041C6
	b _08004360
_080041C6:
	movs r0, #1
	strb r0, [r5]
	ldr r0, _080041FC
	ldrb r0, [r0]
	cmp r0, #4
	beq _08004200
	cmp r0, #4
	ble _080041D8
	b _080043DA
_080041D8:
	cmp r0, #3
	beq _0800429C
	b _080043DA
	.align 2, 0
_080041E0: .4byte gGame
_080041E4: .4byte 0x000067AC
_080041E8: .4byte 0x00008494
_080041EC: .4byte gSomeBlend
_080041F0: .4byte 0x0000679C
_080041F4: .4byte 0x0000679E
_080041F8: .4byte 0x000067A0
_080041FC: .4byte gUnknown_02005080
_08004200:
	ldr r0, _08004210
	ldrb r0, [r0]
	cmp r0, #5
	beq _08004214
	cmp r0, #0xc
	beq _08004220
	b _080043DA
	.align 2, 0
_08004210: .4byte gUnknown_02004100
_08004214:
	ldr r1, _08004238
	adds r0, r5, r1
	ldrh r0, [r0]
	cmp r0, #0x8b
	beq _08004220
	b _080043DA
_08004220:
	ldr r1, _0800423C
	ldr r2, _08004240
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r2, r0, #0x1f
	cmp r2, #0
	beq _08004248
	ldr r0, _08004244
	adds r1, r1, r0
	b _080043D6
	.align 2, 0
_08004238: .4byte 0x000067AC
_0800423C: .4byte gGame
_08004240: .4byte 0x00008496
_08004244: .4byte 0x00009485
_08004248:
	ldr r4, _08004284
	ldr r1, _08004288
	adds r0, r4, r1
	strh r2, [r0]
	ldr r0, _0800428C
	bl sub_0800A240
	ldr r2, _08004290
	adds r0, r4, r2
	movs r1, #0
	bl sub_08009E38
	movs r0, #1
	bl sub_0800ACA0
	ldr r0, _08004294
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08004298
	adds r4, r4, r1
	movs r0, #0x50
	strb r0, [r4]
	b _080043DA
	.align 2, 0
_08004284: .4byte gSomeBlend
_08004288: .4byte 0x00004B02
_0800428C: .4byte gUnknown_080C1FF0
_08004290: .4byte 0x00005778
_08004294: .4byte 0x000121BB
_08004298: .4byte 0x000121C4
_0800429C:
	ldr r2, _080042EC
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r1, r0, #0x1f
	cmp r1, #0
	beq _08004314
	ldr r1, _080042F0
	adds r0, r5, r1
	ldrh r0, [r0]
	cmp r0, #0xe
	bne _08004308
	ldr r2, _080042F4
	adds r1, r4, r2
	movs r0, #0
	strh r0, [r1]
	ldr r0, _080042F8
	bl sub_0800A240
	ldr r1, _080042FC
	adds r0, r4, r1
	movs r1, #0
	bl sub_08009E38
	movs r0, #1
	bl sub_0800ACA0
	ldr r0, _08004300
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldr r2, _08004304
	adds r1, r4, r2
	movs r0, #0x50
	b _080043D8
	.align 2, 0
_080042EC: .4byte 0x00008496
_080042F0: .4byte 0x000067AC
_080042F4: .4byte 0x00004B02
_080042F8: .4byte gUnknown_080C1FF0
_080042FC: .4byte 0x00005778
_08004300: .4byte 0x000121BB
_08004304: .4byte 0x000121C4
_08004308:
	ldr r0, _08004310
	adds r1, r5, r0
	movs r0, #0
	b _080043D8
	.align 2, 0
_08004310: .4byte 0x00009485
_08004314:
	ldr r2, _0800434C
	adds r0, r4, r2
	strh r1, [r0]
	ldr r0, _08004350
	bl sub_0800A240
	ldr r1, _08004354
	adds r0, r4, r1
	movs r1, #0
	bl sub_08009E38
	movs r0, #1
	bl sub_0800ACA0
	ldr r0, _08004358
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldr r2, _0800435C
	adds r1, r4, r2
	movs r0, #0x50
	b _080043D8
	.align 2, 0
_0800434C: .4byte 0x00004B02
_08004350: .4byte gUnknown_080C1FF0
_08004354: .4byte 0x00005778
_08004358: .4byte 0x000121BB
_0800435C: .4byte 0x000121C4
_08004360:
	ldr r0, _08004388
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #3
	bne _08004394
	ldr r1, _0800438C
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #3
	bne _08004394
	ldr r2, _08004390
	adds r0, r4, r2
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080043DA
	movs r0, #0xe
	strb r0, [r5]
	b _080043DA
	.align 2, 0
_08004388: .4byte gUnknown_02005080
_0800438C: .4byte 0x00008490
_08004390: .4byte 0x000035BA
_08004394:
	ldr r0, _080043AC
	ldr r1, _080043B0
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080043B8
	ldr r1, _080043B4
	movs r0, #0xe
	b _080043D8
	.align 2, 0
_080043AC: .4byte gSomeBlend
_080043B0: .4byte 0x000035BA
_080043B4: .4byte gGame
_080043B8:
	ldrb r0, [r2]
	cmp r0, #4
	bne _080043D4
	ldr r2, _080043D0
	ldrb r0, [r2, #2]
	cmp r0, #0
	beq _080043D4
	strb r1, [r2, #2]
	bl sub_08025D64
	b _080043DA
	.align 2, 0
_080043D0: .4byte gUnknown_020051E8
_080043D4:
	ldr r1, _080043E0
_080043D6:
	movs r0, #0
_080043D8:
	strb r0, [r1]
_080043DA:
	ldr r4, _080043E4
	b _080043EC
	.align 2, 0
_080043E0: .4byte gGame
_080043E4: .4byte gUnknown_020051E4
_080043E8:
	bl sub_0800444C
_080043EC:
	bl sub_080044B8
	bl sub_08013EB8
	ldrb r0, [r4]
	cmp r0, #7
	beq _080043E8
	ldr r0, _08004434
	ldrb r0, [r0]
	cmp r0, #3
	beq _0800442C
	cmp r0, #5
	beq _0800442C
	bl snd_vsync_off
	ldr r3, _08004438
	movs r0, #0
	strh r0, [r3]
	ldr r2, _0800443C
	ldrh r1, [r2]
	ldr r0, _08004440
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08004444
	ldrh r1, [r2]
	ldr r0, _08004448
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	bl sub_080018E4
_0800442C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08004434: .4byte gUnknown_020051E4
_08004438: .4byte 0x04000208
_0800443C: .4byte 0x04000200
_08004440: .4byte 0x0000FFFC
_08004444: .4byte 0x04000004
_08004448: .4byte 0x0000FFE7
	.syntax divided
