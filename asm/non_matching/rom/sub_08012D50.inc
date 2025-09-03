	.syntax unified
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08012D78
	ldr r0, _08012D70
	ldr r1, _08012D74
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
	b _08012DA6
	.align 2, 0
_08012D70: .4byte gGame
_08012D74: .4byte 0x000067C4
_08012D78:
	ldr r2, _08012DAC
	movs r3, #0
	movs r6, #1
	adds r4, r1, #0
	movs r5, #0x40
_08012D82:
	ldrb r1, [r2, #0xc]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08012D9A
	lsls r0, r1, #0x1a
	lsrs r0, r0, #0x1b
	cmp r0, r4
	bne _08012D9A
	adds r0, r1, #0
	orrs r0, r5
	strb r0, [r2, #0xc]
_08012D9A:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #0x10
	cmp r3, #0x13
	bls _08012D82
_08012DA6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08012DAC: .4byte gUnknown_0200C07C
	.syntax divided
