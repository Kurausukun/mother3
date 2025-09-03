	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	lsls r5, r1, #0x10
	lsrs r5, r5, #0x10
	ldr r4, _080530D4
	adds r0, r4, #0
	movs r1, #0x78
	bl memclear
	ldr r0, _080530D8
	adds r2, r4, r0
	movs r0, #0
	strh r0, [r2]
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _080530DC
	adds r0, r0, r1
	mov ip, r0
	movs r7, #0
	ldrh r0, [r0]
	cmp r0, #0
	beq _08053132
	ldr r1, _080530E0
	adds r1, r1, r4
	mov sb, r1
	movs r3, #0x21
	rsbs r3, r3, #0
	mov sl, r3
	mov r8, r2
_0805307A:
	lsls r0, r7, #1
	add r0, ip
	ldrh r2, [r0]
	adds r5, r2, #0
	movs r0, #0x6c
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r3, _080530E4
	adds r0, r1, r3
	ldrh r0, [r0, #0xa]
	lsls r6, r0, #1
	ldr r0, _080530E8
	adds r1, r1, r0
	ldr r3, [r1]
	cmp r3, #8
	bne _080530A8
	ldr r0, _080530EC
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #0x62
	bhi _0805311E
	cmp r0, #0
	bgt _0805311E
_080530A8:
	strb r5, [r4]
	movs r0, #1
	strb r0, [r4, #1]
	movs r0, #0x1f
	ands r3, r0
	ldrb r0, [r4, #2]
	movs r2, #0x20
	rsbs r2, r2, #0
	ands r2, r0
	orrs r2, r3
	movs r0, #0x7f
	ands r2, r0
	strb r2, [r4, #2]
	ldr r0, _080530F0
	add r0, sb
	ldr r0, [r0]
	cmp r0, r6
	blo _080530F4
	movs r1, #0x20
	adds r0, r2, #0
	orrs r0, r1
	b _080530FA
	.align 2, 0
_080530D4: .4byte gUnknown_02019D6C
_080530D8: .4byte 0x0000053C
_080530DC: .4byte gShopData
_080530E0: .4byte 0xFFFFC2BC
_080530E4: .4byte gGoodsInfo
_080530E8: .4byte gUnknown_080E510C
_080530EC: .4byte gUnknown_02004870
_080530F0: .4byte 0x00002DF0
_080530F4:
	adds r0, r2, #0
	mov r1, sl
	ands r0, r1
_080530FA:
	strb r0, [r4, #2]
	ldr r3, [sp]
	cmp r3, #0
	beq _08053114
	ldr r0, _08053144
	add r0, sb
	ldrh r0, [r0]
	cmp r0, #0xf
	bls _08053114
	ldrb r1, [r4, #2]
	mov r0, sl
	ands r0, r1
	strb r0, [r4, #2]
_08053114:
	mov r1, r8
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r4, #4
_0805311E:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x1d
	bhi _08053132
	lsls r0, r7, #1
	add r0, ip
	ldrh r0, [r0]
	cmp r0, #0
	bne _0805307A
_08053132:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08053144: .4byte 0x0000426C
	.syntax divided
