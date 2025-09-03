	.syntax unified
	push {lr}
	adds r0, #0x3c
	bl sub_08088870
	pop {r1}
	bx r1
	.syntax divided
