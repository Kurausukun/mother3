	.syntax unified
sub_080BC754:
	push {lr}
	ldr r2, _080BC764
	str r2, [r0, #0x1c]
	bl  _._3Psi
	pop {r0}
	bx r0
	.align 2, 0
_080BC764: .4byte __vt_5Goods
	.syntax divided
