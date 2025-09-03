	.syntax unified
sub_0806DFBC:
	push {lr}
	adds r0, #0x80
	bl sub_08088660
	pop {r1}
	bx r1
	.syntax divided
