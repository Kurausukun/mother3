	.syntax unified
sub_080B4DD8:
	push {lr}
	movs r0, #0
	movs r1, #0x63
	bl randS32
	movs r1, #0
	cmp r0, #0x4f
	bgt _080B4DEA
	movs r1, #1
_080B4DEA:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.syntax divided
