	.syntax unified
sub_080579E8:
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_08057FB0
	ldrb r1, [r4, #0x1d]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08057A08
	ldr r1, _08057A10
	movs r0, #5
	strb r0, [r1, #1]
	bl sub_08057F98
_08057A08:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08057A10: .4byte gUnknown_02015DA0
	.syntax divided
