	.syntax unified
sub_0806AC3C:
	lsls r2, r2, #0x10
	lsrs r2, r2, #0xe
	adds r2, r2, r1
	ldr r1, [r2, #0x40]
	str r1, [r0]
	bx lr
	.syntax divided
