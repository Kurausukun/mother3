	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08035FE4
	movs r0, #0xd8
	bl sub_0803B800
	str r0, [r4, #0x34]
	str r0, [r4, #0x30]
	adds r4, #0xc7
	ldrb r1, [r4]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
