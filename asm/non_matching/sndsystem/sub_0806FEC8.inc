	.syntax unified
	push {lr}
	bl m4aSoundVSyncOff
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
