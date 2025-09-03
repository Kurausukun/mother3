	.syntax unified
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
	.syntax divided
