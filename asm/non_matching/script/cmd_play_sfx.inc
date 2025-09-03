	.syntax unified
cmd_play_sfx:
	push {lr}
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xa
	bhi _080213E0
	lsls r0, r0, #2
	ldr r1, _08021330
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08021330: .4byte _08021334
_08021334:
	.4byte _08021360
	.4byte _08021368
	.4byte _0802136E
	.4byte _08021376
	.4byte _0802137C
	.4byte _08021382
	.4byte _08021388
	.4byte _08021390
	.4byte _08021396
	.4byte _0802139C
	.4byte _080213A8
_08021360:
	movs r0, #0x6d
	movs r2, #0x9c
	lsls r2, r2, #1
	b _080213AC
_08021368:
	movs r0, #0x6e
	movs r2, #0x97
	b _080213AC
_0802136E:
	movs r0, #0x77
	movs r2, #0xba
	lsls r2, r2, #1
	b _080213AC
_08021376:
	movs r0, #0x78
	movs r2, #0xb4
	b _080213AC
_0802137C:
	movs r0, #0xc9
	movs r2, #0x5e
	b _080213AC
_08021382:
	movs r0, #0x2b
	movs r2, #0xfc
	b _080213AC
_08021388:
	movs r0, #0xd2
	lsls r0, r0, #1
	movs r2, #0xc8
	b _080213AC
_08021390:
	movs r0, #0x72
	movs r2, #0xb8
	b _080213AC
_08021396:
	movs r0, #0xcb
	movs r2, #0xb4
	b _080213AC
_0802139C:
	ldr r0, _080213A4
	movs r2, #0xb4
	b _080213AC
	.align 2, 0
_080213A4: .4byte 0x000001B3
_080213A8:
	ldr r0, _080213E8
	movs r2, #0xa2
_080213AC:
	adds r2, #0x50
	movs r1, #0x50
	bl sub_08027C20
	movs r0, #0
	bl sub_08003D48
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0
	movs r2, #0
	movs r3, #0x20
	bl sub_08027B84
	movs r0, #1
	bl sub_08003D48
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	movs r2, #0
	movs r3, #0x20
	bl sub_08027B84
_080213E0:
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_080213E8: .4byte 0x000005EF
	.syntax divided
