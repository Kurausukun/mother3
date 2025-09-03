	.syntax unified
sub_0806FFA8:
	push {lr}
	ldr r2, _0806FFB8
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_0806FFB8: .4byte vt_09F80680
	.syntax divided
