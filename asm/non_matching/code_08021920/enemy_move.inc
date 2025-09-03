	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r0, #0xc6
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0802DC4E
	movs r5, #0
	adds r0, r7, #0
	bl sub_0802DD04
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802DC50
_0802DC4E:
	movs r5, #0x13
_0802DC50:
	cmp r5, #0x13
	bhi _0802DCF6
	ldr r0, _0802DCDC
	mov sb, r0
	movs r1, #0xc5
	adds r1, r1, r7
	mov r8, r1
_0802DC5E:
	ldr r0, _0802DCE0
	lsls r1, r5, #2
	adds r6, r1, r0
	ldr r0, [r6]
	cmp r0, #0
	beq _0802DCEC
	adds r4, r7, #0
	adds r4, #0xc4
	ldrh r0, [r4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	bl sub_08027DC4
	adds r1, r0, #0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802DCEC
	ldr r2, [r6]
	adds r0, r7, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802DCEC
	cmp r5, #0x13
	bne _0802DCA0
	ldrh r1, [r4]
	ldr r2, _0802DCE4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, sb
	beq _0802DCD6
_0802DCA0:
	ldrb r0, [r4]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4]
	movs r0, #0x1f
	ands r5, r0
	lsls r2, r5, #2
	mov r3, r8
	ldrb r0, [r3]
	movs r3, #0x7d
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	mov r1, r8
	strb r0, [r1]
	ldr r0, [r4]
	ldr r1, _0802DCE8
	ands r0, r1
	str r0, [r4]
	adds r1, r7, #0
	adds r1, #0x9a
	movs r0, #0
	strh r0, [r1]
	ldr r1, [r7, #0x2c]
	stm r1!, {r0}
	str r0, [r1]
_0802DCD6:
	movs r0, #1
	b _0802DCF8
	.align 2, 0
_0802DCDC: .4byte 0x00004C01
_0802DCE0: .4byte gUnknown_08D2DF14
_0802DCE4: .4byte 0x00007C01
_0802DCE8: .4byte 0xFFE07FFF
_0802DCEC:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x13
	bls _0802DC5E
_0802DCF6:
	movs r0, #0
_0802DCF8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
