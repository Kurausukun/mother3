	.syntax unified
sub_08057ED0:
	push {r4, r5, lr}
	sub sp, #0xc
	adds r2, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r1, [r0]
	movs r5, #4
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _08057EEE
	ldr r0, [r4, #0x24]
	cmp r0, #0x3b
	bls _08057F68
_08057EEE:
	ldrh r1, [r2, #2]
	ldr r0, _08057F10
	cmp r1, r0
	bne _08057F18
	ldr r4, _08057F14
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _08057F68
	movs r0, #0xd2
	bl play_sound
	strb r5, [r4, #1]
	movs r0, #0xe
	bl sub_08057A14
	b _08057F68
	.align 2, 0
_08057F10: .4byte 0x00000309
_08057F14: .4byte gUnknown_02015DA0
_08057F18:
	ldrh r1, [r2]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08057F44
	movs r0, #0xd2
	bl play_sound
	bl sub_08058468
	ldr r1, _08057F40
	strb r0, [r1, #1]
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r0, #1
	bl sub_08057A14
	b _08057F68
	.align 2, 0
_08057F40: .4byte gUnknown_02015DA0
_08057F44:
	ldrh r3, [r4, #0x30]
	cmp r3, #1
	bls _08057F68
	adds r0, r4, #0
	adds r0, #0x2e
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0x80
	str r1, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r1, r2, #0
	movs r2, #0
	bl sub_080583A0
_08057F68:
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
