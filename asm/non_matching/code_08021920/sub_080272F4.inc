	.syntax unified
sub_080272F4:
	push {r4, r5, r6, lr}
	sub sp, #0x10
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	cmp r5, #1
	bhi _08027318
	ldr r0, _08027310
	ldr r1, _08027314
	b _08027354
	.align 2, 0
_08027310: .4byte gUnknown_0200F088
_08027314: .4byte gUnknown_03005314
_08027318:
	subs r0, r6, #4
	cmp r0, #7
	bls _08027320
	b _0802749A
_08027320:
	lsls r0, r0, #2
	ldr r1, _0802732C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802732C: .4byte _08027330
_08027330:
	.4byte _08027350
	.4byte _08027368
	.4byte _08027350
	.4byte _08027368
	.4byte _08027350
	.4byte _08027368
	.4byte _08027350
	.4byte _08027368
_08027350:
	ldr r0, _08027360
	ldr r1, _08027364
_08027354:
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
	b _08027374
	.align 2, 0
_08027360: .4byte gUnknown_03005314
_08027364: .4byte gUnknown_0200F088
_08027368:
	ldr r0, _08027384
	ldr r1, _08027388
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
_08027374:
	cmp r4, #1
	beq _080273B0
	cmp r4, #1
	bgt _0802738C
	cmp r4, #0
	beq _08027392
	b _080273F0
	.align 2, 0
_08027384: .4byte gUnknown_0200F088
_08027388: .4byte gUnknown_03005314
_0802738C:
	cmp r4, #2
	beq _080273D0
	b _080273F0
_08027392:
	ldr r0, _080273A4
	ldr r2, _080273A8
	adds r1, r0, r2
	strb r4, [r1]
	ldr r3, _080273AC
	adds r0, r0, r3
	movs r1, #0x20
	strb r1, [r0]
	b _08027428
	.align 2, 0
_080273A4: .4byte gGame
_080273A8: .4byte 0x000083AE
_080273AC: .4byte 0x000083AF
_080273B0:
	ldr r1, _080273C4
	ldr r0, _080273C8
	adds r2, r1, r0
	movs r0, #0
	strb r0, [r2]
	ldr r2, _080273CC
	adds r1, r1, r2
	movs r0, #0x10
	strb r0, [r1]
	b _08027428
	.align 2, 0
_080273C4: .4byte gGame
_080273C8: .4byte 0x000083AE
_080273CC: .4byte 0x000083AF
_080273D0:
	ldr r0, _080273E4
	ldr r3, _080273E8
	adds r1, r0, r3
	movs r2, #0x10
	strb r2, [r1]
	ldr r1, _080273EC
	adds r0, r0, r1
	strb r2, [r0]
	b _08027428
	.align 2, 0
_080273E4: .4byte gGame
_080273E8: .4byte 0x000083AE
_080273EC: .4byte 0x000083AF
_080273F0:
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	beq _08027408
	ldr r2, _08027404
	movs r1, #0xf
	adds r0, r4, #0
	ands r0, r1
	b _0802741A
	.align 2, 0
_08027404: .4byte gGame
_08027408:
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _0802749A
	ldr r2, _0802746C
	movs r1, #0xf
	adds r0, r4, #0
	ands r0, r1
	adds r0, #0x10
_0802741A:
	ldr r3, _08027470
	adds r1, r2, r3
	strb r0, [r1]
	ldr r0, _08027474
	adds r2, r2, r0
	movs r0, #1
	strb r0, [r2]
_08027428:
	ldr r4, _08027478
	ldr r2, _0802747C
	adds r1, r4, r2
	ldr r2, [r4, #0x20]
	str r6, [sp]
	ldrh r0, [r4, #0x24]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x26]
	str r0, [sp, #8]
	ldrh r0, [r4, #0x28]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r3, r5, #0
	bl sub_080031F0
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	cmp r5, #1
	bhi _08027480
	movs r0, #0
	strh r0, [r4, #0x12]
	movs r0, #1
	strh r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08027680
	b _0802749A
	.align 2, 0
_0802746C: .4byte gGame
_08027470: .4byte 0x000083AE
_08027474: .4byte 0x000083AF
_08027478: .4byte gUnknown_0200DF84
_0802747C: .4byte 0x00001104
_08027480:
	ldr r3, _080274A4
	adds r0, r4, r3
	ldrh r0, [r0]
	cmp r0, #0x27
	beq _0802749A
	ldr r1, _080274A8
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0802749A
	bl sub_08005BFC
_0802749A:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080274A4: .4byte 0xFFFFE428
_080274A8: .4byte 0xFFFFE440
	.syntax divided
