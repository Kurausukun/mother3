	.syntax unified
	push {lr}
	ldr r2, _080687BC
	str r2, [r0, #4]
	bl sub_0805D2B4
	pop {r0}
	bx r0
	.align 2, 0
_080687BC: .4byte vt_09F7EA80
	.syntax divided
