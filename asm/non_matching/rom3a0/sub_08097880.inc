	.syntax unified
sub_08097880:
	push {lr}
	movs r0, #0x24
	bl __builtin_new
	bl sub_0805EEC0
	pop {r1}
	bx r1
	.syntax divided
