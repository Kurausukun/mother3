	.syntax unified
sub_080978AC:
	push {lr}
	movs r0, #0x24
	bl __builtin_new
	bl sub_0805EEF8
	pop {r1}
	bx r1
	.syntax divided
