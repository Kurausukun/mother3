	.syntax unified
	push {lr}
	bl sub_08052100
	bl sub_080523B8
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
