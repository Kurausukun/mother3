	.syntax unified
	adds r0, #0x44
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	bx lr
	.align 2, 0
	.syntax divided
