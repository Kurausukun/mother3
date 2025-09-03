	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0x40
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080719DC
	adds r0, r5, #0
	adds r0, #0x34
	ldrb r4, [r0]
	b _080719DE
_080719DC:
	movs r4, #0
_080719DE:
	adds r0, r5, #0
	adds r0, #0x44
	bl sub_0806D648
	adds r6, r0, #0
	movs r2, #0
	cmp r2, r4
	bge _08071A0A
	ldr r0, _08071A50
	adds r3, r6, r0
	ldr r1, _08071A54
	ldr r7, _08071A58
_080719F6:
	lsls r0, r2, #5
	adds r0, r0, r5
	adds r0, #0x64
	str r3, [r1]
	str r0, [r1, #4]
	str r7, [r1, #8]
	ldr r0, [r1, #8]
	adds r2, #1
	cmp r2, r4
	blt _080719F6
_08071A0A:
	adds r2, r4, #0
	cmp r2, #2
	bgt _08071A48
	ldr r3, _08071A54
_08071A12:
	lsls r1, r2, #2
	adds r0, r5, #0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r1, [r0]
	asrs r0, r1, #0x10
	lsls r0, r0, #0x13
	movs r4, #0x90
	lsls r4, r4, #0x11
	adds r0, r0, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x1d
	lsrs r0, r0, #0x10
	orrs r0, r1
	lsls r0, r0, #5
	adds r0, r0, r6
	lsls r1, r2, #5
	adds r1, r1, r5
	adds r1, #0x64
	str r0, [r3]
	str r1, [r3, #4]
	ldr r0, _08071A58
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	adds r2, #1
	cmp r2, #2
	ble _08071A12
_08071A48:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08071A50: .4byte 0x000023E0
_08071A54: .4byte 0x040000D4
_08071A58: .4byte 0x80000010
	.syntax divided
