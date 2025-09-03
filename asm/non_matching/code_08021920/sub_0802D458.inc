	.syntax unified
sub_0802D458:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	bl sub_0802D3F8
	ldr r2, _0802D484
	ldrb r0, [r2, #2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #2]
	mov r3, sp
	ldrb r1, [r2, #8]
	lsls r0, r1, #0x1f
	lsrs r0, r0, #0x1f
	strh r0, [r3]
	movs r0, #1
	orrs r1, r0
	strb r1, [r2, #8]
	movs r6, #0
	b _0802D590
	.align 2, 0
_0802D484: .4byte gGame
_0802D488:
	adds r0, r6, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r4, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0802D4A6
	adds r0, r4, #0
	bl sub_0802D6A0
	b _0802D58A
_0802D4A6:
	adds r2, r4, #0
	adds r2, #0xbf
	ldrb r1, [r2]
	movs r3, #9
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r1, r0
	subs r3, #8
	adds r0, r3, #0
	ands r1, r0
	subs r3, #0x10
	adds r0, r3, #0
	ands r1, r0
	strb r1, [r2]
	ldr r0, [r4, #0x34]
	adds r7, r2, #0
	cmp r0, #0
	beq _0802D4D2
	adds r0, r4, #0
	bl sub_0802D790
	b _0802D55E
_0802D4D2:
	adds r5, r4, #0
	adds r5, #0xca
	ldrb r0, [r5]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802D4F4
	ldr r0, _0802D4F0
	ldrb r0, [r0]
	cmp r0, #9
	beq _0802D55E
	adds r0, r4, #0
	bl sub_080347B8
	b _0802D55E
	.align 2, 0
_0802D4F0: .4byte gGame
_0802D4F4:
	ldr r0, _0802D50C
	ldrb r0, [r0]
	cmp r0, #1
	bne _0802D510
	adds r0, r4, #0
	adds r0, #0xc8
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0802D55E
	b _0802D53A
	.align 2, 0
_0802D50C: .4byte gGame
_0802D510:
	subs r0, #9
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r4, #0
	adds r2, #0xcc
	cmp r0, #1
	bls _0802D52C
	lsls r0, r1, #0x19
	cmp r0, #0
	blt _0802D52C
	ldrb r0, [r2]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802D53A
_0802D52C:
	ldrb r0, [r2]
	movs r3, #2
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
	b _0802D58A
_0802D53A:
	adds r0, r4, #0
	bl sub_0802DA58
	ldrb r0, [r5]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0802D55E
	adds r2, r4, #0
	adds r2, #0xcb
	ldrb r0, [r2]
	movs r3, #3
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	subs r3, #2
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
_0802D55E:
	ldr r0, _0802D5C8
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802D576
	ldrb r0, [r7]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _0802D576
	adds r0, r4, #0
	bl sub_0802D9F8
_0802D576:
	ldr r1, _0802D5C8
	ldrb r0, [r1]
	cmp r0, #9
	beq _0802D58A
	ldr r2, _0802D5CC
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0802D59C
_0802D58A:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0802D590:
	mov r0, r8
	adds r0, #0xb4
	ldrb r0, [r0]
	cmp r6, r0
	bhs _0802D59C
	b _0802D488
_0802D59C:
	ldr r3, _0802D5C8
	ldrb r1, [r3, #2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #2]
	mov r0, sp
	ldrh r0, [r0]
	movs r1, #1
	ands r1, r0
	ldrb r2, [r3, #8]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #8]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D5C8: .4byte gGame
_0802D5CC: .4byte 0x00009D14
	.syntax divided
