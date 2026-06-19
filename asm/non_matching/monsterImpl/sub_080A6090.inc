	.syntax unified
sub_080A6090:
	push {lr}
	movs r2, #1
	cmp r2, r1
	bge _080A609A
	adds r2, r1, #0
_080A609A:
	adds r1, r2, #0
	bl setHP__7Monsteri
	pop {r0}
	bx r0
	.syntax divided
