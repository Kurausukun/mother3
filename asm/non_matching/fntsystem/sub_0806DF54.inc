	.syntax unified
	ldr r1, [r1]
	str r1, [r0, #0x30]
	bx lr
	.align 2, 0
	.syntax divided
