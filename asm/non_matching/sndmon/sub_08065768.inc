	.syntax unified
	push {lr}
	adds r0, #0x44
	bl sub_080714C0
	movs r1, #0x7a
	cmp r0, #1
	bgt _08065778
	movs r1, #0x14
_08065778:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
