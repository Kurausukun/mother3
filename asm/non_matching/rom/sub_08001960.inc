	.syntax unified
	push {lr}
	bl VBlankIntrWait
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
