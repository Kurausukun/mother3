	.syntax unified
	push {r4, lr}
	sub sp, #4
	ldr r2, _08046A14
	ldr r1, _08046A18
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08046A0A
	ldr r4, _08046A1C
	adds r0, r2, r4
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08046A20
	adds r0, r0, r1
	subs r4, #4
	adds r1, r2, r4
	movs r4, #0
	ldrsh r1, [r1, r4]
	ldr r4, _08046A24
	adds r2, r2, r4
	movs r4, #0
	ldrsh r2, [r2, r4]
	str r3, [sp]
	movs r3, #0x20
	bl sub_08046A28
_08046A0A:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08046A14: .4byte gSomeBlend
_08046A18: .4byte 0x000041E6
_08046A1C: .4byte 0x000041E4
_08046A20: .4byte gUnknown_080C6260
_08046A24: .4byte 0x000041E2
	.syntax divided
