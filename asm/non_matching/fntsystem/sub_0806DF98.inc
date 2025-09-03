	.syntax unified
	push {lr}
	adds r0, #0x78
	bl sub_08088718
	pop {r1}
	bx r1
	.syntax divided
