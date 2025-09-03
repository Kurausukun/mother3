	.syntax unified
sub_080702A8:
	push {lr}
	cmp r1, #0
	bge _080702B0
	adds r1, #0xf
_080702B0:
	asrs r1, r1, #4
	movs r0, #1
	cmp r0, r1
	bge _080702BA
	adds r0, r1, #0
_080702BA:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
