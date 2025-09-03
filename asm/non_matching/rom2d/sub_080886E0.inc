	.syntax unified
sub_080886E0:
	ldr r1, _080886EC
	str r1, [r0, #4]
	movs r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
_080886EC: .4byte vt_09F85048
	.syntax divided
