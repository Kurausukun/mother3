	.syntax unified
sub_08087AC8:
	movs r1, #0x85
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
	.syntax divided
