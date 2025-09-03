	.syntax unified
	push {r4, r5, r6, r7, lr}
	ldr r4, _08016554
	ldrh r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r4, #8]
	orrs r0, r1
	strh r0, [r4, #8]
	bl sub_08004FB4
	ldr r2, _08016558
	ldr r3, _0801655C
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #1
	beq _08016594
	cmp r0, #1
	bgt _08016560
	cmp r0, #0
	beq _08016566
	b _080165CC
	.align 2, 0
_08016554: .4byte gSomeBlend
_08016558: .4byte gGame
_0801655C: .4byte 0x0000595E
_08016560:
	cmp r0, #2
	beq _080165B0
	b _080165CC
_08016566:
	ldr r1, _0801658C
	adds r0, r2, r1
	ldrh r0, [r0]
	movs r3, #0x78
	subs r3, r3, r0
	adds r0, #0x78
	lsls r0, r0, #0x10
	lsls r3, r3, #0x18
	orrs r3, r0
	ldr r2, _08016590
	adds r0, r4, r2
	movs r1, #0xa0
	lsls r1, r1, #1
	lsrs r2, r3, #0x10
	orrs r2, r3
	bl sub_08001B54
	b _080165CC
	.align 2, 0
_0801658C: .4byte 0x00005968
_08016590: .4byte 0x00013210
_08016594:
	ldr r3, _080165AC
	adds r0, r2, r3
	adds r3, #4
	adds r1, r2, r3
	ldrh r1, [r1]
	adds r3, #4
	adds r2, r2, r3
	ldrh r2, [r2]
	bl sub_080199C8
	b _080165CC
	.align 2, 0
_080165AC: .4byte 0x00005964
_080165B0:
	ldr r1, _080165EC
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #0x78
	subs r0, r0, r1
	lsls r0, r0, #0x10
	adds r1, #0x78
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r0, r0, #8
	orrs r1, r0
	ldr r2, _080165F0
	adds r0, r4, r2
	strh r1, [r0]
_080165CC:
	bl sub_08001960
	bl sub_08005C4C
	ldr r5, _080165F4
	ldr r3, _080165F8
	adds r6, r5, r3
	ldrb r4, [r6]
	cmp r4, #1
	beq _08016650
	cmp r4, #1
	bgt _080165FC
	cmp r4, #0
	beq _08016602
	b _080166B4
	.align 2, 0
_080165EC: .4byte 0x00005968
_080165F0: .4byte 0x000132B0
_080165F4: .4byte gGame
_080165F8: .4byte 0x0000595E
_080165FC:
	cmp r4, #2
	beq _0801668C
	b _080166B4
_08016602:
	ldr r0, _08016640
	adds r7, r5, r0
	ldrh r2, [r7]
	movs r0, #0x78
	movs r1, #0x20
	movs r3, #0x2c
	bl sub_08002E60
	ldr r2, _08016644
	adds r1, r5, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bhi _080166B4
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	movs r0, #0x20
	strh r0, [r1]
	ldr r3, _08016648
	adds r1, r5, r3
	movs r0, #0x40
	strh r0, [r1]
	ldr r0, _0801664C
	adds r1, r5, r0
	movs r0, #1
	strh r0, [r1]
	strh r4, [r7]
	b _080166B4
	.align 2, 0
_08016640: .4byte 0x00005962
_08016644: .4byte 0x00005968
_08016648: .4byte 0x0000596C
_0801664C: .4byte 0x0000596A
_08016650:
	ldr r2, _08016680
	adds r1, r5, r2
	ldr r3, _08016684
	adds r0, r5, r3
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x7f
	bls _080166B4
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	subs r3, #2
	adds r1, r5, r3
	movs r0, #0x78
	strh r0, [r1]
	ldr r0, _08016688
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	b _080166B4
	.align 2, 0
_08016680: .4byte 0x0000596C
_08016684: .4byte 0x0000596A
_08016688: .4byte 0x00005962
_0801668C:
	ldr r1, _080166AC
	adds r0, r5, r1
	ldrh r2, [r0]
	movs r0, #0x78
	movs r1, #0
	movs r3, #0x3c
	bl sub_08002E60
	ldr r2, _080166B0
	adds r1, r5, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080166B4
	movs r0, #1
	b _080166CA
	.align 2, 0
_080166AC: .4byte 0x00005962
_080166B0: .4byte 0x00005968
_080166B4:
	ldr r1, _080166D0
	ldr r3, _080166D4
	adds r1, r1, r3
	ldrb r2, [r1]
	movs r3, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r3
	strb r0, [r1]
	movs r0, #0
_080166CA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080166D0: .4byte gSomeBlend
_080166D4: .4byte 0x0001ED10
	.syntax divided
