	.syntax unified
sub_080B3B64:
	push {lr}
	movs r0, #0
	movs r1, #0x63
	bl randS32
	movs r1, #0
	cmp r0, #0x45
	bgt _080B3B76
	movs r1, #1
_080B3B76:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.syntax divided
