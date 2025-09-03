	.syntax unified
sub_08012CEC:
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08012D14
	ldr r0, _08012D0C
	ldr r1, _08012D10
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
	b _08012D44
	.align 2, 0
_08012D0C: .4byte gGame
_08012D10: .4byte 0x000067C4
_08012D14:
	ldr r2, _08012D4C
	movs r3, #0
	movs r6, #1
	adds r4, r1, #0
	movs r5, #2
	rsbs r5, r5, #0
_08012D20:
	ldrb r1, [r2, #0xc]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08012D38
	lsls r0, r1, #0x1a
	lsrs r0, r0, #0x1b
	cmp r0, r4
	bne _08012D38
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2, #0xc]
_08012D38:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #0x10
	cmp r3, #0x13
	bls _08012D20
_08012D44:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08012D4C: .4byte gUnknown_0200C07C
	.syntax divided
