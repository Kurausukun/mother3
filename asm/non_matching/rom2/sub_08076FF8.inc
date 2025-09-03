	.syntax unified
	push {lr}
	movs r1, #3
	movs r2, #0
	bl sub_080770C8
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
