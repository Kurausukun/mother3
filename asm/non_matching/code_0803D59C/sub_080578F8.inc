	.syntax unified
sub_080578F8:
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_08057FB0
	ldrb r1, [r4, #0x1d]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08057914
	movs r0, #0xd
	bl sub_08057A14
_08057914:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
