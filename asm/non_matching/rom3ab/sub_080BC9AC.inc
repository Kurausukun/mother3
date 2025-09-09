	.syntax unified
sub_080BC9AC:
	push {lr}
	ldr r2, _080BC9BC
	str r2, [r0, #0x1c]
	bl  sub_08082BA8
	pop {r0}
	bx r0
	.align 2, 0
_080BC9BC: .4byte __vt_5Goods
	.syntax divided
