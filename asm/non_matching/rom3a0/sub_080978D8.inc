	.syntax unified
sub_080978D8:
	push {lr}
	movs r0, #0x24
	bl __builtin_new
	bl __8RoundEnd
	pop {r1}
	bx r1
	.syntax divided
