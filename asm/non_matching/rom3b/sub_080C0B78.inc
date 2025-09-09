	.syntax unified
sub_080C0B78:
	push {lr}
	movs r0, #0x38
	bl __builtin_new
	bl sub_08065DEC
	pop {r1}
	bx r1
	.syntax divided
