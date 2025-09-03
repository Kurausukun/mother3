	.syntax unified
sub_08065780:
	push {lr}
	adds r0, #0x44
	bl sub_080714C0
	movs r1, #0x24
	cmp r0, #1
	bgt _08065790
	movs r1, #0x1c
_08065790:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
