	.syntax unified
	push {lr}
	movs r0, #1
	bl sub_080517AC
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
