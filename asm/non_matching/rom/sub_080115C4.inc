	.syntax unified
sub_080115C4:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	ldr r4, [sp, #0x54]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	adds r0, r6, #0
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x14
	str r0, [sp, #0x18]
	adds r0, r6, #0
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x14
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	cmp r5, r0
	blo _0801160A
	b _080117B4
_0801160A:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	ldr r3, [sp]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_0801A904
	str r0, [sp, #4]
	ldr r5, _0801170C
	adds r4, r6, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, sb
	adds r3, r7, #0
	bl sub_08001378
	mov r8, r0
	adds r3, r7, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, sb
	bl sub_08001378
	adds r7, r0, #0
	movs r4, #0
_08011646:
	ldr r1, [sp]
	adds r0, r1, r4
	ldr r2, [sp, #0x1c]
	cmp r0, r2
	blt _08011652
	b _080117B4
_08011652:
	ldr r3, [sp, #4]
	ldr r1, [r3]
	lsls r2, r1, #0x16
	lsrs r0, r2, #0x1c
	cmp r0, #0xb
	bls _08011660
	b _0801176A
_08011660:
	lsls r1, r1, #0x1a
	lsrs r0, r1, #0x1a
	cmp r0, #0x3f
	bls _0801166A
	b _0801176A
_0801166A:
	lsrs r0, r2, #0x1c
	lsrs r1, r1, #0x1a
	bl sub_0801AD4C
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	bl sub_0801AE18
	str r0, [sp, #0x14]
	ldr r1, [sp, #4]
	ldr r0, [r1]
	movs r2, #0xf0
	lsls r2, r2, #2
	mov ip, r2
	mov r3, ip
	ands r3, r0
	mov ip, r3
	lsls r1, r0, #0x11
	lsrs r1, r1, #0x1f
	str r1, [sp, #0xc]
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x10]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x1c
	lsls r0, r0, #0xc
	str r0, [sp, #0x20]
	movs r6, #1
	mov r0, r8
	adds r0, #0x80
	str r0, [sp, #0x24]
	adds r1, r7, #0
	adds r1, #0x80
	str r1, [sp, #0x28]
	ldr r2, [sp, #0x18]
	lsls r2, r2, #1
	str r2, [sp, #0x30]
	adds r4, #1
	str r4, [sp, #0x2c]
	ldr r3, [sp, #8]
	ldr r3, [r3]
	mov sl, r3
_080116BE:
	ldr r1, [sp, #0x14]
	adds r0, r1, r6
	ldrb r3, [r0]
	movs r2, #0x80
	lsls r2, r2, #9
	lsls r2, r3
	mov r1, sl
	ands r2, r1
	mov sb, r0
	cmp r2, #0
	beq _08011710
	adds r0, r3, #4
	ldr r2, [sp, #8]
	adds r0, r2, r0
	lsls r4, r6, #1
	mov r3, r8
	adds r5, r4, r3
	ldr r3, [r0]
	lsls r2, r3, #0x1a
	lsrs r2, r2, #0x1a
	add r2, ip
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	ldr r0, [sp, #0xc]
	eors r0, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1f
	ldr r0, [sp, #0x10]
	eors r0, r3
	lsls r0, r0, #0xb
	orrs r2, r0
	ldr r0, [sp, #0x20]
	orrs r2, r0
	strh r2, [r5]
	adds r1, r4, #0
	b _08011718
	.align 2, 0
_0801170C: .4byte gUnknown_02016078
_08011710:
	lsls r1, r6, #1
	mov r3, r8
	adds r0, r1, r3
	strh r2, [r0]
_08011718:
	mov r0, sb
	ldrb r3, [r0, #2]
	movs r2, #0x80
	lsls r2, r2, #9
	lsls r2, r3
	mov r0, sl
	ands r2, r0
	cmp r2, #0
	beq _0801175A
	adds r0, r3, #4
	ldr r2, [sp, #8]
	adds r0, r2, r0
	adds r4, r1, r7
	ldr r3, [r0]
	lsls r2, r3, #0x1a
	lsrs r2, r2, #0x1a
	add r2, ip
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	ldr r0, [sp, #0xc]
	eors r0, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1f
	ldr r0, [sp, #0x10]
	eors r0, r3
	lsls r0, r0, #0xb
	orrs r2, r0
	ldr r3, [sp, #0x20]
	orrs r2, r3
	strh r2, [r4]
	b _0801175E
_0801175A:
	adds r0, r1, r7
	strh r2, [r0]
_0801175E:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #1
	bls _080116BE
	b _0801179A
_0801176A:
	movs r6, #0
	mov r0, r8
	adds r0, #0x80
	str r0, [sp, #0x24]
	adds r1, r7, #0
	adds r1, #0x80
	str r1, [sp, #0x28]
	ldr r2, [sp, #0x18]
	lsls r2, r2, #1
	str r2, [sp, #0x30]
	adds r4, #1
	str r4, [sp, #0x2c]
	movs r2, #0
_08011784:
	lsls r0, r6, #1
	mov r3, r8
	adds r1, r0, r3
	adds r0, r0, r7
	strh r2, [r0]
	strh r2, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #1
	bls _08011784
_0801179A:
	ldr r0, [sp, #0x24]
	mov r8, r0
	ldr r7, [sp, #0x28]
	ldr r1, [sp, #4]
	ldr r2, [sp, #0x30]
	adds r1, r1, r2
	str r1, [sp, #4]
	ldr r3, [sp, #0x2c]
	lsls r0, r3, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xa
	bhi _080117B4
	b _08011646
_080117B4:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
