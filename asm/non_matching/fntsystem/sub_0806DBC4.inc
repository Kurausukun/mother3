	.syntax unified
	push {lr}
	adds r0, #0x74
	bl sub_08088660
	pop {r1}
	bx r1
	.syntax divided
