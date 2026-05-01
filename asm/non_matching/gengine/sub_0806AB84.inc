	.syntax unified
sub_0806AB84:
	push {lr}
	ldr r2, _0806AB94
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_0806AB94: .4byte _vt.7GEngine
	.syntax divided
