	.syntax unified
sub_080BD138:
	push {lr}
	movs r0, #0
	movs r1, #0x63
	bl randS32
	movs r1, #0
	cmp r0, #0x59
	bgt _080BD14A
	movs r1, #1
_080BD14A:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.syntax divided
