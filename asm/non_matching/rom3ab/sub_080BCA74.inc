	.syntax unified
sub_080BCA74:
	push {lr}
	ldr r2, _080BCA84
	str r2, [r0, #0x1c]
	bl  _._3Psi
	pop {r0}
	bx r0
	.align 2, 0
_080BCA84: .4byte __vt_5Goods
	.syntax divided
