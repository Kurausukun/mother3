	.syntax unified
cmd_restart:
	push {lr}
	bl DoReset
	movs r0, #1
	pop {r1}
	bx r1
	.syntax divided
