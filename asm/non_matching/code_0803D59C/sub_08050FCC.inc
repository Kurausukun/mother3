	.syntax unified
	adds r0, #0x6f
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.syntax divided
