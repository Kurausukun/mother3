	.syntax unified
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r2, _08041F78
	ldrb r0, [r2, #6]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #6]
	movs r0, #0x87
	bl sub_080486A0
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xf
	str r1, [sp]
	movs r4, #1
	str r4, [sp, #4]
	movs r1, #0xb4
	movs r2, #7
	bl sub_08047CDC
	movs r0, #0
	movs r1, #0
	bl sub_080430B4
	bl sub_08044614
	bl sub_080447A4
	ldr r0, _08041F7C
	ldrh r1, [r5, #4]
	lsls r3, r1, #1
	adds r3, r3, r1
	lsls r3, r3, #0x12
	movs r1, #0xb0
	lsls r1, r1, #0xd
	adds r3, r3, r1
	asrs r3, r3, #0x10
	str r4, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #4
	bl sub_08046D2C
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08041F78: .4byte gUnknown_0200F920
_08041F7C: .4byte gUnknown_0201A210
	.syntax divided
