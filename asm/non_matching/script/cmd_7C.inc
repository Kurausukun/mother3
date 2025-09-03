	.syntax unified
cmd_7C:
	push {lr}
	bl sub_0802781C
	movs r0, #0
	pop {r1}
	bx r1
	.syntax divided
