	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r2, _080418EC
	ldrb r0, [r2, #6]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #6]
	movs r0, #0x78
	bl sub_080486A0
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xf
	str r1, [sp]
	movs r5, #1
	str r5, [sp, #4]
	movs r1, #0xb8
	movs r2, #7
	bl sub_08047CDC
	movs r0, #0
	movs r1, #0
	bl sub_080430B4
	bl sub_08044614
	bl sub_080446E8
	ldr r4, _080418F0
	ldrh r0, [r6, #4]
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #0x12
	movs r0, #0x88
	lsls r0, r0, #0xf
	adds r3, r3, r0
	asrs r3, r3, #0x10
	str r5, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #4
	bl sub_08046D2C
	adds r0, r4, #0
	adds r0, #0xc
	ldr r1, _080418F4
	adds r4, r4, r1
	ldrh r1, [r4]
	lsls r3, r1, #1
	adds r3, r3, r1
	lsls r3, r3, #0x12
	movs r1, #0xb0
	lsls r1, r1, #0xd
	adds r3, r3, r1
	asrs r3, r3, #0x10
	str r5, [sp]
	str r5, [sp, #4]
	movs r1, #1
	movs r2, #4
	bl sub_08046D2C
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080418EC: .4byte gUnknown_0200F920
_080418F0: .4byte gUnknown_0201A210
_080418F4: .4byte 0xFFFFED1C
	.syntax divided
