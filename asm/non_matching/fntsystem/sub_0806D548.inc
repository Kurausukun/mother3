	.syntax unified
sub_0806D548:
	ldr r1, _0806D558
	str r1, [r0, #0x10]
	movs r1, #0
	strh r1, [r0]
	str r1, [r0, #4]
	strh r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_0806D558: .4byte vt_09F7FC40
	.syntax divided
