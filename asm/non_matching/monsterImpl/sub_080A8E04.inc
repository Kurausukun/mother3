	.syntax unified
sub_080A8E04:
	push {lr}
	movs r2, #1
	cmp r2, r1
	bge _080A8E0E
	adds r2, r1, #0
_080A8E0E:
	adds r1, r2, #0
	bl setHP__7Monsteri
	pop {r0}
	bx r0
	.syntax divided
