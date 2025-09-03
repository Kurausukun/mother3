	.syntax unified
	lsls r1, r1, #2
	ldr r0, [r0, #0x64]
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
	.syntax divided
