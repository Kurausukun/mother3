	.syntax unified
	ldr r1, _08087EE8
	str r1, [r0, #0x10]
	movs r1, #0
	strh r1, [r0]
	str r1, [r0, #4]
	strh r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08087EE8: .4byte vt_09F85018
	.syntax divided
