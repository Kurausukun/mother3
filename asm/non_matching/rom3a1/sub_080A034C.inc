	.syntax unified
sub_080A034C:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x22
	cmp r1, #0x1e
	blt _080A0368
	movs r0, #0x24
	cmp r1, #0x37
	bge _080A0368
	movs r0, #0x23
_080A0368:
	adds r1, r4, #0
	bl sub_08074124
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
