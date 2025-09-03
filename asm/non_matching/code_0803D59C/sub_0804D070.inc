	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r0, #0
	adds r5, r1, #0
	ldr r6, _0804D0A0
	ldr r1, _0804D0A4
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0804D106
	ldrh r1, [r7]
	cmp r1, #1
	bne _0804D0AC
	ldr r1, _0804D0A8
	adds r0, r6, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _0804D106
	adds r0, r5, #0
	bl sub_0804EEE8
	b _0804D106
	.align 2, 0
_0804D0A0: .4byte gSomeBlend
_0804D0A4: .4byte 0x000044F2
_0804D0A8: .4byte 0x0000427E
_0804D0AC:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804D0C2
	movs r0, #0xd3
	bl play_sound
	movs r0, #0
	bl sub_080506CC
	b _0804D106
_0804D0C2:
	ldr r1, _0804D110
	adds r0, r6, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _0804D106
	adds r0, r5, #4
	adds r1, r5, #0
	adds r1, #8
	ldrh r4, [r5, #2]
	lsrs r3, r4, #1
	movs r2, #1
	ands r2, r4
	adds r3, r3, r2
	str r3, [sp]
	ldrh r2, [r5, #2]
	str r2, [sp, #4]
	ldrh r2, [r5, #6]
	str r2, [sp, #8]
	adds r2, r7, #0
	movs r3, #2
	bl sub_08053968
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bne _0804D106
	bl sub_08046D90
	ldr r1, _0804D114
	adds r0, r6, r1
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
_0804D106:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804D110: .4byte 0x0000427E
_0804D114: .4byte 0x0000C5AD
	.syntax divided
