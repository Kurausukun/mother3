	.syntax unified
	movs r1, #0x3c
	movs r2, #0x20
	strh r1, [r0]
	strh r2, [r0, #2]
	bx lr
	.align 2, 0
	.syntax divided
