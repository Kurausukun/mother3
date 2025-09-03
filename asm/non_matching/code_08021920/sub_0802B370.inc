	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r2, r0, #0
	ldr r1, _0802B3F0
	ldr r3, _0802B3F4
	adds r0, r1, r3
	ldrb r3, [r0]
	adds r7, r1, #0
	cmp r3, #6
	bne _0802B38E
	b _0802B4A2
_0802B38E:
	ldr r0, [r2]
	cmp r0, #0
	bne _0802B396
	b _0802B4A2
_0802B396:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	mov r2, sp
	adds r2, #2
	strh r0, [r2]
	add r1, sp, #4
	strh r0, [r1]
	movs r4, #0x80
	mov sb, r2
	mov r8, r1
	cmp r3, #3
	bne _0802B3B2
	movs r4, #0x40
_0802B3B2:
	ldr r1, _0802B3F8
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, r4
	blo _0802B4A2
	movs r0, #0
	str r0, [r1]
	movs r5, #0
	ldr r1, _0802B3FC
	adds r0, r7, r1
	ldrb r3, [r0]
	cmp r5, r3
	bhs _0802B460
	adds r1, #0x1f
	adds r6, r7, r1
	ldr r3, _0802B400
	mov sl, r3
_0802B3D6:
	adds r0, r5, #0
	bl get_char_stats
	adds r3, r0, #0
	ldr r2, [r3, #0x18]
	cmp r2, #0
	bgt _0802B404
	ldrb r0, [r6]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r6]
	b _0802B452
	.align 2, 0
_0802B3F0: .4byte gGame
_0802B3F4: .4byte 0x0000829B
_0802B3F8: .4byte gUnknown_02000FF8
_0802B3FC: .4byte 0x00008299
_0802B400: .4byte gUnknown_0201AAF8
_0802B404:
	adds r0, r3, #0
	adds r0, #0x30
	ldrb r1, [r0]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0802B452
	mov r0, r8
	strh r4, [r0]
	cmp r2, #1
	ble _0802B452
	adds r0, r2, #0
	subs r0, #0x14
	cmp r0, #1
	bhi _0802B42C
	mov r1, sl
	str r5, [r1]
	mov r0, sb
	strh r4, [r0]
_0802B42C:
	ldr r0, [r3, #0x18]
	cmp r0, #2
	ble _0802B440
	adds r0, r5, #0
	movs r1, #0
	movs r2, #2
	rsbs r2, r2, #0
	bl sub_0802AAEC
	b _0802B44C
_0802B440:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	rsbs r2, r2, #0
	bl sub_0802AAEC
_0802B44C:
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
_0802B452:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r1, _0802B4A8
	ldrb r1, [r1]
	cmp r5, r1
	blo _0802B3D6
_0802B460:
	mov r3, r8
	ldrh r0, [r3]
	cmp r0, #0
	beq _0802B49A
	ldr r0, _0802B4AC
	adds r2, r7, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0802B4B0
	adds r0, r7, r1
	movs r2, #0
	strh r2, [r0]
	ldr r3, _0802B4B4
	adds r1, r7, r3
	movs r0, #0x14
	strh r0, [r1]
	ldr r0, _0802B4B8
	adds r1, r7, r0
	movs r0, #4
	strh r0, [r1]
	ldr r1, _0802B4BC
	adds r0, r7, r1
	strh r2, [r0]
	adds r3, #4
	adds r1, r7, r3
	movs r0, #3
	strh r0, [r1]
_0802B49A:
	mov r1, sb
	ldrh r0, [r1]
	cmp r0, #0
	bne _0802B4C0
_0802B4A2:
	movs r0, #0
	b _0802B4C6
	.align 2, 0
_0802B4A8: .4byte gUnknown_0200DE99
_0802B4AC: .4byte 0x00008495
_0802B4B0: .4byte 0x000083CC
_0802B4B4: .4byte 0x000083CE
_0802B4B8: .4byte 0x000083CA
_0802B4BC: .4byte 0x000083D0
_0802B4C0:
	bl sub_08025A80
	movs r0, #1
_0802B4C6:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
