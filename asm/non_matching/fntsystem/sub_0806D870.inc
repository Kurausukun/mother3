	.syntax unified
	ldr r1, [r1, #0x2c]
	str r1, [r0]
	bx lr
	.align 2, 0
	.syntax divided
