	.syntax unified
	push {r4, lr}
	movs r1, #0
	bl scriptstack_peek
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _08020876
	lsrs r0, r1, #0x10
	bl sub_0801B414
	ldr r1, _080208AC
	str r0, [r1, #0x28]
	bl sub_08027904
_08020876:
	ldr r2, _080208AC
	ldr r1, _080208B0
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080208C6
	lsls r0, r1, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #3
	bgt _080208C6
	cmp r0, #2
	blt _080208C6
	ldr r1, _080208B4
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _080208BC
	ldr r0, _080208B8
	movs r1, #0x80
	lsls r1, r1, #3
	adds r2, r4, #0
	bl sub_08001B54
	b _080208C6
	.align 2, 0
_080208AC: .4byte gGame
_080208B0: .4byte 0x00009480
_080208B4: .4byte 0x0000595B
_080208B8: .4byte gUnknown_03005314
_080208BC:
	ldr r0, _080208D0
	movs r1, #0x80
	lsls r1, r1, #3
	bl memclear
_080208C6:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080208D0: .4byte gUnknown_03005314
	.syntax divided
