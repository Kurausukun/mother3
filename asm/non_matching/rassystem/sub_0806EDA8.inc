	.syntax unified
	lsls r2, r1, #3
	adds r2, r2, r1
	lsls r2, r2, #4
	ldr r0, [r0, #0x2c]
	adds r0, r0, r2
	bx lr
	.syntax divided
