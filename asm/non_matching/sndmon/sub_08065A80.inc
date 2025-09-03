	.syntax unified
	ldr r1, _08065A90
	str r1, [r0, #0x10]
	adds r2, r0, #4
	movs r1, #0
	str r1, [r0, #4]
	str r1, [r2, #4]
	str r1, [r2, #8]
	bx lr
	.align 2, 0
_08065A90: .4byte vt_09F7E240
	.syntax divided
