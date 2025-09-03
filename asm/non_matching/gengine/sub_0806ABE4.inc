	.syntax unified
sub_0806ABE4:
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r1, r1, r0
	ldr r0, [r2]
	str r0, [r1, #0x48]
	bx lr
	.syntax divided
