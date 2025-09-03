	.syntax unified
sub_0806BA4C:
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r1, #3
	subs r2, r2, r1
	lsls r2, r2, #3
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0, #0x50]
	bx lr
	.align 2, 0
	.syntax divided
