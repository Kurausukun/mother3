	.syntax unified
	adds r0, #0x80
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
	.syntax divided
