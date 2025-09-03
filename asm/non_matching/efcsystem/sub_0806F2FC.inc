	.syntax unified
	adds r0, #0xa0
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.syntax divided
