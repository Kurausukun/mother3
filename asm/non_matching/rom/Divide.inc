	.syntax unified
Divide:
	push {lr}
	cmp r1, #0
	beq _08002FCC
	bl Div
	b _08002FCE
_08002FCC:
	movs r0, #0
_08002FCE:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
