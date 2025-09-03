	.syntax unified
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	cmp r1, #0
	beq _0801A3F4
	cmp r1, #1
	beq _0801A410
	b _0801A42A
_0801A3F4:
	ldr r0, _0801A40C
	lsls r1, r4, #2
	adds r1, r1, r0
	lsls r3, r5, #6
	ldrb r2, [r1, #0x1c]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, #0x1c]
	strb r6, [r1, #0x1e]
	b _0801A42A
	.align 2, 0
_0801A40C: .4byte gGame
_0801A410:
	ldr r0, _0801A430
	lsls r2, r4, #2
	adds r2, r2, r0
	movs r0, #3
	adds r1, r5, #0
	ands r1, r0
	ldrb r3, [r2, #0x1d]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x1d]
	strb r6, [r2, #0x1f]
_0801A42A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801A430: .4byte gGame
	.syntax divided
