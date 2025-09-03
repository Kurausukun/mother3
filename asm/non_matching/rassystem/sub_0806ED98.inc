	.syntax unified
sub_0806ED98:
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	ldr r0, [r0, #0x24]
	adds r0, r0, r2
	bx lr
	.syntax divided
