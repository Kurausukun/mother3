	.syntax unified
	push {lr}
	cmp r1, #0
	beq _08002FE0
	bl sub_08090F80
	b _08002FE2
_08002FE0:
	movs r0, #0
_08002FE2:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
