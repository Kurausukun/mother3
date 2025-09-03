	.syntax unified
	adds r3, r0, #0
	asrs r1, r1, #1
	lsls r0, r1, #7
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	adds r0, #0x20
	lsls r2, r2, #3
	adds r2, #4
	adds r0, r0, r2
	bx lr
	.align 2, 0
	.syntax divided
