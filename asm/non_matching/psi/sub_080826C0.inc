	.syntax unified
	movs r1, #0x2c
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
	.syntax divided
