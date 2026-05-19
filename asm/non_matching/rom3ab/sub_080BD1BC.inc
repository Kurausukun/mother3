	.syntax unified
sub_080BD1BC:
	push {lr}
	ldr r2, _080BD1CC
	str r2, [r0, #0x1c]
	bl  _._3Psi
	pop {r0}
	bx r0
	.align 2, 0
_080BD1CC: .4byte __vt_5Goods
	.syntax divided
