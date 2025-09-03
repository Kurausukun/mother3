	.syntax unified
	push {lr}
	movs r0, #0xa
	bl setsleep
	pop {r0}
	bx r0
	.syntax divided
