	.syntax unified
sub_0809FC24:
	push {lr}
	movs r0, #0x82
	lsls r0, r0, #1
	bl __builtin_new
	bl __5Guest
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
