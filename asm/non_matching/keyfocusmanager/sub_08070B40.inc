	.syntax unified
	strh r1, [r0, #0x34]
	strh r2, [r0, #0x36]
	bx lr
	.align 2, 0
	.syntax divided
