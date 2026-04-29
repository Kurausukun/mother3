	.syntax unified
sub_0802462C:
	push {r4, r5, r6, r7, lr}
	ldr r4, _080246D4
	adds r0, r4, #0
	bl sub_08024B40
	ldr r0, _080246D8
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_08024A74
	ldr r4, _080246DC
	ldr r1, _080246E0
	adds r7, r4, r1
	ldrb r0, [r7]
	movs r2, #0x7f
	ands r2, r0
	strb r2, [r7]
	ldr r0, _080246E4
	adds r0, r0, r4
	mov ip, r0
	ldrb r5, [r0]
	lsls r0, r5, #0x1f
	cmp r0, #0
	beq _08024708
	movs r3, #0
	movs r0, #1
	strb r0, [r4]
	movs r1, #3
	rsbs r1, r1, #0
	adds r6, r1, #0
	ands r6, r5
	mov r0, ip
	strb r6, [r0]
	adds r0, r2, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #0x38
	ands r0, r1
	strb r0, [r7]
	ldr r1, _080246E8
	adds r2, r4, r1
	ldrb r1, [r2]
	movs r5, #0x11
	rsbs r5, r5, #0
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _080246EC
	adds r0, r4, r1
	str r3, [r0]
	adds r1, #4
	adds r0, r4, r1
	strh r3, [r0]
	ldr r0, _080246F0
	adds r1, r4, r0
	ldr r0, _080246F4
	strh r0, [r1]
	ldr r0, _080246F8
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r0, _080246FC
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r0, _08024700
	ldrb r0, [r0]
	cmp r0, #4
	bne _080246C8
	ldr r0, _08024704
	ldrb r0, [r0]
	cmp r0, #7
	beq _08024726
_080246C8:
	adds r0, r6, #0
	ands r0, r5
	mov r1, ip
	strb r0, [r1]
	b _08024726
	.align 2, 0
_080246D4: .4byte gSoundUnkInfos
_080246D8: .4byte 0xFFFFE00C
_080246DC: .4byte gGame
_080246E0: .4byte 0x00008495
_080246E4: .4byte 0x00008494
_080246E8: .4byte 0x00008496
_080246EC: .4byte 0x00008488
_080246F0: .4byte 0x00008456
_080246F4: .4byte 0x0000FFFF
_080246F8: .4byte 0x0000847A
_080246FC: .4byte 0x0000847C
_08024700: .4byte gUnknown_02005080
_08024704: .4byte gUnknown_02004100
_08024708:
	ldr r1, _08024734
	adds r0, r4, r1
	bl sub_080248D4
	ldr r1, _08024738
	adds r0, r4, r1
	bl sub_080249E8
	ldrh r1, [r4, #2]
	ldr r0, _0802473C
	ands r0, r1
	strh r0, [r4, #2]
	movs r0, #1
	bl sub_0801B5E8
_08024726:
	ldr r0, _08024740
	bl sub_0802519C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024734: .4byte 0x00008384
_08024738: .4byte 0x00008498
_0802473C: .4byte 0xFFFFF87F
_08024740: .4byte gUnknown_0201B574
	.syntax divided
