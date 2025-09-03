	.syntax unified
	push {lr}
	adds r0, #0x30
	bl sub_0805D2DC
	pop {r1}
	bx r1
	.syntax divided
