	.syntax unified
	movs r1, #1
	str r1, [r0, #0x28]
	bx lr
	.align 2, 0
	.syntax divided
