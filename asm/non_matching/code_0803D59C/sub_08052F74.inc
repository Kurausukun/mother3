	.syntax unified
	movs r2, #0x2c
	strb r2, [r0]
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bx lr
	.syntax divided
