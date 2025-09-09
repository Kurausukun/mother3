	.syntax unified
sub_080977B4:
	push {lr}
	movs r0, #0x80
	bl __builtin_new
	bl sub_0805EE80
	pop {r1}
	bx r1
	.syntax divided
