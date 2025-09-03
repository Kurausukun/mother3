	.syntax unified
	ldrh r1, [r1, #2]
	adds r0, #0x9a
	strh r1, [r0]
	movs r0, #1
	bx lr
	.align 2, 0
	.syntax divided
