	.syntax unified
	push {r4, r5, r6, r7, lr}
	ldr r2, _08012164
	movs r3, #0
	movs r0, #0xc8
	lsls r0, r0, #1
	adds r6, r2, r0
	ldr r7, _08012168
	movs r5, #2
	rsbs r5, r5, #0
	movs r4, #0
_08012108:
	ldrb r0, [r2, #0xc]
	adds r1, r5, #0
	ands r1, r0
	strb r1, [r2, #0xc]
	str r4, [r2]
	str r4, [r2, #4]
	str r4, [r2, #8]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #0x10
	cmp r3, #0x18
	bls _08012108
	adds r2, r6, #0
	movs r3, #0
	movs r5, #2
	rsbs r5, r5, #0
	movs r4, #0
_0801212C:
	ldrb r0, [r2, #0x14]
	adds r1, r5, #0
	ands r1, r0
	strb r1, [r2, #0x14]
	str r4, [r2]
	str r4, [r2, #4]
	str r4, [r2, #8]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #0x18
	cmp r3, #0x13
	bls _0801212C
	ldrb r0, [r7]
	cmp r0, #0
	beq _08012150
	cmp r0, #2
	bne _08012154
_08012150:
	bl sub_08012210
_08012154:
	movs r0, #1
	bl sub_08012238
	bl sub_0801230C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012164: .4byte gUnknown_0200B7D0
_08012168: .4byte gUnknown_02005080
	.syntax divided
