	.syntax unified
sub_080A09D0:
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0
	.syntax divided
