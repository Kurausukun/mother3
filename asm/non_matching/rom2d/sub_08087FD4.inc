	.syntax unified
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
	.syntax divided
