	.syntax unified
sub_0804FDE0:
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r4, _0804FE30
	ldrh r0, [r4, #0xa]
	bl sub_08054FE0
	adds r5, r0, #0
	ldrh r0, [r4, #0xa]
	bl sub_08054FF0
	adds r7, r0, #0
	ldr r1, _0804FE34
	adds r0, r4, r1
	ldrh r0, [r0]
	bl sub_08054FE0
	adds r6, r0, #0
	ldr r0, _0804FE38
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	cmp r5, r6
	bne _0804FE40
	ldr r1, _0804FE3C
	adds r0, r4, r1
	ldrb r1, [r0]
	ldrh r2, [r4, #4]
	adds r0, r5, #0
	bl sub_08054A90
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0804FE5C
	movs r0, #0xd6
	bl play_sound
	b _0804FE7A
	.align 2, 0
_0804FE30: .4byte gUnknown_02018E28
_0804FE34: .4byte 0x000013D0
_0804FE38: .4byte 0x000013DA
_0804FE3C: .4byte 0x000013D5
_0804FE40:
	ldr r1, _0804FE70
	adds r0, r4, r1
	ldrb r3, [r0]
	movs r1, #4
	ldrsh r0, [r4, r1]
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_0805493C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804FE74
_0804FE5C:
	movs r0, #0xd2
	bl play_sound
	adds r0, r5, #0
	bl sub_080524EC
	bl sub_08046D90
	b _0804FE7A
	.align 2, 0
_0804FE70: .4byte 0x000013D5
_0804FE74:
	movs r0, #0xd6
	bl play_sound
_0804FE7A:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
