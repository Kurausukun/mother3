	.syntax unified
	adds r0, #0xf8
	ldrh r0, [r0]
	bx lr
	.align 2, 0
	.syntax divided
