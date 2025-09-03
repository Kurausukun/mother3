	.syntax unified
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, _08020198
	ldr r1, _0802019C
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _08020190
	ldr r0, _080201A0
	ldr r2, _080201A4
	adds r1, r5, r2
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
	ldrb r4, [r5]
	movs r0, #7
	strb r0, [r5]
	adds r0, r6, #0
	movs r1, #0
	bl scriptstack_peek
	ldr r2, _080201A8
	adds r1, r5, r2
	strh r0, [r1]
	bl sub_08013EB8
	strb r4, [r5]
_08020190:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08020198: .4byte gGame
_0802019C: .4byte 0x0000595C
_080201A0: .4byte gUnknown_03005314
_080201A4: .4byte 0x00009488
_080201A8: .4byte 0x00005960
	.syntax divided
