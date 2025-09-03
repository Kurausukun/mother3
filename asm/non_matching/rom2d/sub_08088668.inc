	.syntax unified
	ldr r0, [r0]
	ldrh r2, [r0]
	lsls r2, r2, #3
	adds r2, #4
	adds r0, r0, r2
	lsls r1, r1, #3
	adds r0, r0, r1
	bx lr
	.syntax divided
