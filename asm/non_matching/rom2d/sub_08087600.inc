	.syntax unified
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1, #0x28]
	bx lr
	.syntax divided
