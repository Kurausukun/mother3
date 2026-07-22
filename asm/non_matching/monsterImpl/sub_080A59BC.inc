	.syntax unified
sub_080A59BC:
	push {lr}
	movs r2, #1
	cmp r2, r1
	bge _080A59C6
	adds r2, r1, #0
_080A59C6:
	adds r1, r2, #0
	bl setHP__7Monsteri
	pop {r0}
	bx r0
	.syntax divided
