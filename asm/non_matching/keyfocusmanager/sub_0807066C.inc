	.syntax unified
	push {lr}
	cmp r1, #0
	beq _08070676
	bl Div
_08070676:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
