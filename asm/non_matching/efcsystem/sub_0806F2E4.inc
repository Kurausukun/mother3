	.syntax unified
	adds r0, #0xa6
	strh r1, [r0]
	bx lr
	.align 2, 0
	.syntax divided
