	.syntax unified
	lsls r1, r1, #0x10
	str r1, [r0, #0x20]
	bx lr
	.align 2, 0
	.syntax divided
