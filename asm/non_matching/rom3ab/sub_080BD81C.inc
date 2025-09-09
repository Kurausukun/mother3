	.syntax unified
sub_080BD81C:
	push {lr}
	ldr r2, _080BD82C
	str r2, [r0, #0x1c]
	bl  sub_08082BA8
	pop {r0}
	bx r0
	.align 2, 0
_080BD82C: .4byte __vt_5Goods
	.syntax divided
