	.syntax unified
cmd_open_bank:
	push {lr}
	bl sub_08037A7C
	movs r0, #1
	pop {r1}
	bx r1
	.syntax divided
