	.syntax unified
	ldrh r1, [r0, #4]
	adds r0, r0, r1
	bx lr
	.align 2, 0
	.syntax divided
