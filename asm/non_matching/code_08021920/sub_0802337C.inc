	.syntax unified
	push {r4, lr}
	ldr r0, _080233B4
	ldr r1, _080233B8
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _08023396
	lsls r0, r1, #0x1e
	cmp r0, #0
	blt _08023396
	bl sub_08023414
_08023396:
	ldr r4, _080233BC
	adds r0, r4, #0
	bl sub_0802D660
	bl sub_0802454C
	movs r0, #0xe6
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080233B4: .4byte gGame
_080233B8: .4byte 0x00008494
_080233BC: .4byte gUnknown_0200DEBC
	.syntax divided
