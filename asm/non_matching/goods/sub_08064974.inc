	.syntax unified
sub_08064974:
	push {lr}
	bl getGoodsRTTI
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
