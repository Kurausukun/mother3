	.syntax unified
	ldr r1, _08088634
	str r1, [r0, #4]
	movs r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
_08088634: .4byte vt_09F85038
	.syntax divided
