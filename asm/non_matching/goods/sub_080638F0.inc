	.syntax unified
	adds r0, #0x80
	lsls r1, r1, #2
	ldr r0, [r0, #8]
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.syntax divided
