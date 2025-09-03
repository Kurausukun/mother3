	.syntax unified
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #0xa]
	bl sub_08054FE0
	adds r4, r0, #0
	bl sub_08055038
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0804F04E
	adds r0, r4, #0
	bl sub_0805504C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0804F04E
	ldrh r0, [r5, #4]
	lsls r0, r0, #2
	ldr r6, _0804F058
	adds r4, r0, r6
	ldr r0, [r4]
	lsls r0, r0, #0xa
	cmp r0, #0
	blt _0804F05C
_0804F04E:
	movs r0, #0xd6
	bl play_sound
	b _0804F0C6
	.align 2, 0
_0804F058: .4byte gUnknown_02019D6C
_0804F05C:
	ldr r1, _0804F08C
	ldrb r2, [r4]
	movs r0, #0x6c
	muls r0, r2, r0
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #8
	bne _0804F090
	movs r0, #0xe7
	bl play_sound
	ldrb r0, [r4]
	bl sub_08054BB8
	movs r0, #0
	bl sub_08052F9C
	bl sub_08046D90
	bl nullsub_22
	b _0804F0C6
	.align 2, 0
_0804F08C: .4byte gGoodsInfo
_0804F090:
	movs r0, #0xd2
	bl play_sound
	adds r0, r5, #0
	movs r1, #0xb
	bl sub_08053EEC
	ldrb r1, [r4]
	ldr r2, _0804F0CC
	adds r0, r6, r2
	strb r1, [r0]
	ldrh r1, [r5, #4]
	adds r2, #2
	adds r0, r6, r2
	strb r1, [r0]
	ldrb r0, [r4]
	bl sub_08054F34
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804F0C6
	ldrb r0, [r4]
	bl sub_08054EF4
	ldr r2, _0804F0D0
	adds r1, r6, r2
	strb r0, [r1]
_0804F0C6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804F0CC: .4byte 0x00000491
_0804F0D0: .4byte 0x00000492
	.syntax divided
