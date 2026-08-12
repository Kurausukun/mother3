	.syntax unified
sub_080687AC:
	push {lr}
	ldr r2, _080687BC
	str r2, [r0, #4]
	bl _._6ResPtr
	pop {r0}
	bx r0
	.align 2, 0
_080687BC: .4byte _vt.9SARHandle
	.syntax divided
