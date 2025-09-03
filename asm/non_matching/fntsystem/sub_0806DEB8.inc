	.syntax unified
sub_0806DEB8:
	adds r0, #0x38
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	bx lr
	.align 2, 0
	.syntax divided
