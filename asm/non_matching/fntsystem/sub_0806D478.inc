	.syntax unified
	ldr r1, _0806D488
	str r1, [r0, #8]
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_0806D488: .4byte vt_09F7FC30
	.syntax divided
