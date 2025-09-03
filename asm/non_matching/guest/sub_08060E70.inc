	.syntax unified
sub_08060E70:
	ldr r1, _08060E7C
	str r1, [r0, #4]
	movs r1, #8
	strh r1, [r0]
	bx lr
	.align 2, 0
_08060E7C: .4byte vt_09F46900
	.syntax divided
