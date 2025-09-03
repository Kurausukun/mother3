	.syntax unified
	lsls r1, r1, #5
	ldr r0, [r0, #4]
	adds r0, r0, r1
	bx lr
	.syntax divided
