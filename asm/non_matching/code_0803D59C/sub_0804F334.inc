	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, _0804F35C
	ldrh r1, [r4, #4]
	movs r0, #0x64
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0804F360
	movs r0, #0xd2
	bl play_sound
	adds r0, r4, #0
	movs r1, #3
	bl sub_08053EEC
	b _0804F3E6
	.align 2, 0
_0804F35C: .4byte gUnknown_020050C0
_0804F360:
	ldr r5, _0804F3B8
	ldr r0, _0804F3BC
	adds r6, r5, r0
	movs r0, #0x15
	strh r0, [r6]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08053EEC
	movs r0, #1
	bl sub_0803DF94
	ldrh r0, [r4, #4]
	bl sub_080515DC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804F3D4
	movs r0, #0xe4
	bl play_sound
	ldr r1, _0804F3C0
	adds r2, r5, r1
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _0804F3C4
	adds r2, r5, r0
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0804F3C8
	ldr r1, _0804F3CC
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r2, _0804F3D0
	adds r0, r5, r2
	strb r1, [r0]
	bl sub_0800272C
	b _0804F3E6
	.align 2, 0
_0804F3B8: .4byte gSomeBlend
_0804F3BC: .4byte 0x000041CC
_0804F3C0: .4byte 0x000041DA
_0804F3C4: .4byte 0x0000C5B4
_0804F3C8: .4byte gSave
_0804F3CC: .4byte 0x0000081E
_0804F3D0: .4byte 0x0000C5C0
_0804F3D4:
	movs r0, #0xe5
	bl play_sound
	movs r0, #0x1a
	strh r0, [r6]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08053EEC
_0804F3E6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
