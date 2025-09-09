	.syntax unified
sub_080C0BE0:
	push {lr}
	movs r0, #0xb3
	lsls r0, r0, #2
	bl __builtin_new
	bl __3Irc
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
