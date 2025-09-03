	.syntax unified
	adds r0, #0x50
	strh r1, [r0]
	bx lr
	.align 2, 0
	.syntax divided
