	.syntax unified
sub_080BCFEC:
	push {lr}
	ldr r2, _080BCFFC
	str r2, [r0, #0x1c]
	bl  sub_08082BA8
	pop {r0}
	bx r0
	.align 2, 0
_080BCFFC: .4byte __vt_5Goods
	.syntax divided
