	.syntax unified
cmd_7B:
	push {lr}
	bl sub_08019D04
	movs r0, #0
	pop {r1}
	bx r1
	.syntax divided
