	.syntax unified
sub_08060E80:
	ldr r2, _08060E88
	str r2, [r0, #4]
	strh r1, [r0]
	bx lr
	.align 2, 0
_08060E88: .4byte vt_09F46900
	.syntax divided
