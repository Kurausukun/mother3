	.syntax unified
sub_0800289C:
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r1, r1, r0
	ldr r1, [r1, #4]
	adds r0, r0, r1
	bx lr
	.syntax divided
