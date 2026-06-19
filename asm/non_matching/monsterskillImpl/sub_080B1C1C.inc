	.syntax unified
sub_080B1C1C:
	push {lr}
	movs r0, #0
	movs r1, #0x63
	bl randS32
	movs r1, #0
	cmp r0, #0x31
	bgt _080B1C2E
	movs r1, #1
_080B1C2E:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.syntax divided
