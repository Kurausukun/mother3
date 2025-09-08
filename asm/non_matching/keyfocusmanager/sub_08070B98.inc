	.syntax unified
getRhythm__5Combo:
	ldr r1, [r1, #0x30]
	str r1, [r0]
	bx lr
	.align 2, 0
	.syntax divided
