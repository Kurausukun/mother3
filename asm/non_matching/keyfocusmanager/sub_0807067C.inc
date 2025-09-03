	.syntax unified
	push {lr}
	cmp r1, #0
	beq _08070686
	bl sub_08090F80
_08070686:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
