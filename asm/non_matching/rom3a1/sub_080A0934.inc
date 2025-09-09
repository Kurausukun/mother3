	.syntax unified
sub_080A0934:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #7
	cmp r1, #0x21
	blt _080A0950
	movs r0, #9
	cmp r1, #0x42
	bge _080A0950
	movs r0, #8
_080A0950:
	adds r1, r4, #0
	bl sub_08074124
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
