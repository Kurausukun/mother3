	.syntax unified
	push {lr}
	bl sub_08056160
	bl sub_0802BB04
	movs r0, #4
	bl sub_080506CC
	pop {r0}
	bx r0
	.syntax divided
