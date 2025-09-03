	.syntax unified
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r1, r1, r0
	ldr r0, [r1, #8]
	ldr r1, [r1, #4]
	subs r0, r0, r1
	bx lr
	.align 2, 0
	.syntax divided
