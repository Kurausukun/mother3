	.syntax unified
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	subs r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
	.syntax divided
