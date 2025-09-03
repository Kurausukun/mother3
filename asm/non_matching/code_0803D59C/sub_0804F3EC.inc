	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0804F454
	ldrh r2, [r4, #4]
	movs r0, #0x64
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0804F4D8
	adds r0, r2, #0
	bl sub_08051448
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804F4B4
	ldr r1, _0804F458
	ldr r0, _0804F45C
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldrh r0, [r4, #4]
	cmp r0, #0
	bne _0804F468
	ldr r3, _0804F460
	ldrb r2, [r3, #0xc]
	movs r4, #0x40
	adds r0, r4, #0
	ands r0, r2
	cmp r0, #0
	beq _0804F442
	ldr r1, _0804F464
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x1e
	movs r2, #0x90
	lsls r2, r2, #3
	adds r1, r1, r2
	strb r0, [r1]
_0804F442:
	ldrb r2, [r3, #0xd]
	adds r0, r4, #0
	ands r0, r2
	cmp r0, #0
	beq _0804F49A
	ldr r1, _0804F464
	lsls r0, r2, #0x1d
	b _0804F492
	.align 2, 0
_0804F454: .4byte gUnknown_020050C0
_0804F458: .4byte gSomeBlend
_0804F45C: .4byte 0x000041DA
_0804F460: .4byte gUnknown_0200F920
_0804F464: .4byte gSave
_0804F468:
	ldr r3, _0804F4A8
	ldrb r2, [r3, #0xc]
	movs r4, #0x80
	adds r0, r4, #0
	ands r0, r2
	cmp r0, #0
	beq _0804F484
	ldr r1, _0804F4AC
	lsls r0, r2, #0x1a
	lsrs r0, r0, #0x1e
	movs r2, #0x90
	lsls r2, r2, #3
	adds r1, r1, r2
	strb r0, [r1]
_0804F484:
	ldrb r2, [r3, #0xd]
	adds r0, r4, #0
	ands r0, r2
	cmp r0, #0
	beq _0804F49A
	ldr r1, _0804F4AC
	lsls r0, r2, #0x1a
_0804F492:
	lsrs r0, r0, #0x1d
	ldr r2, _0804F4B0
	adds r1, r1, r2
	strb r0, [r1]
_0804F49A:
	bl sub_0800272C
	movs r0, #3
	bl sub_080506CC
	b _0804F4DE
	.align 2, 0
_0804F4A8: .4byte gUnknown_0200F920
_0804F4AC: .4byte gSave
_0804F4B0: .4byte 0x0000081E
_0804F4B4:
	movs r0, #0xd6
	bl play_sound
	ldr r0, _0804F4D0
	ldr r1, _0804F4D4
	adds r0, r0, r1
	movs r1, #0x19
	strh r1, [r0]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08053EEC
	b _0804F4DE
	.align 2, 0
_0804F4D0: .4byte gSomeBlend
_0804F4D4: .4byte 0x000041CC
_0804F4D8:
	movs r0, #0xd6
	bl play_sound
_0804F4DE:
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
