	.syntax unified
	movs r1, #3
	str r1, [r0, #0x40]
	bx lr
	.align 2, 0
	.syntax divided
