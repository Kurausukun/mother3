	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_08057FB0
	ldrb r1, [r4, #0x1d]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080578EE
	ldr r0, _080578F4
	ldrb r0, [r0, #1]
	bl sub_08057F98
_080578EE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080578F4: .4byte gUnknown_02015DA0
	.syntax divided
