	.syntax unified
	push {lr}
	adds r0, #0x90
	bl sub_08071150
	pop {r0}
	bx r0
	.syntax divided
