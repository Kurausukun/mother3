	.syntax unified
sub_080A09C4:
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
	.syntax divided
