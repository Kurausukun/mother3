	.syntax unified
sub_0806B680:
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #3
	subs r3, r3, r1
	lsls r3, r3, #3
	adds r3, #4
	adds r0, r0, r3
	lsls r2, r2, #1
	ldr r0, [r0, #0x38]
	adds r0, r0, r2
	bx lr
	.align 2, 0
	.syntax divided
