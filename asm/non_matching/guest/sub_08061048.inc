	.syntax unified
sub_08061048:
	push {lr}
	ldr r2, _08061058
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_08061058: .4byte vt_09F490E8
	.syntax divided
