	.syntax unified
	push {r4, r5, r6, r7, lr}
	ldr r6, _0804F9C0
	ldr r0, _0804F9C4
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0xd2
	bl play_sound
	movs r1, #0xc0
	lsls r1, r1, #6
	adds r7, r6, r1
	ldrh r0, [r7, #4]
	cmp r0, #0
	bne _0804F9DC
	ldr r3, _0804F9C8
	ldr r5, _0804F9CC
	ldr r2, _0804F9D0
	adds r0, r6, r2
	ldrh r4, [r0]
	movs r0, #7
	ands r0, r4
	ldrb r1, [r5, #0xd]
	movs r2, #8
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	movs r0, #7
	ands r0, r4
	ldr r1, _0804F9D4
	adds r3, r3, r1
	strb r0, [r3]
	ldr r0, _0804F9D8
	adds r3, r6, r0
	ldrb r0, [r3]
	movs r1, #1
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0x40
	b _0804FA0E
	.align 2, 0
_0804F9C0: .4byte gSomeBlend
_0804F9C4: .4byte 0x000041DA
_0804F9C8: .4byte gSave
_0804F9CC: .4byte gUnknown_0200F920
_0804F9D0: .4byte 0x000041CA
_0804F9D4: .4byte 0x0000081E
_0804F9D8: .4byte 0x000044F4
_0804F9DC:
	ldr r3, _0804FA40
	ldr r5, _0804FA44
	ldr r1, _0804FA48
	adds r0, r6, r1
	ldrh r4, [r0]
	movs r0, #7
	ands r0, r4
	lsls r0, r0, #3
	ldrb r1, [r5, #0xd]
	movs r2, #0x39
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	movs r0, #7
	ands r0, r4
	ldr r1, _0804FA4C
	adds r3, r3, r1
	strb r0, [r3]
	ldr r0, _0804FA50
	adds r3, r6, r0
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0x80
_0804FA0E:
	orrs r2, r0
	strb r2, [r5, #0xd]
	adds r0, r7, #0
	movs r1, #0
	bl sub_08053EEC
	ldr r0, _0804FA54
	ldr r1, _0804FA48
	adds r0, r0, r1
	movs r1, #4
	strh r1, [r0]
	ldr r2, _0804FA58
	ldrh r1, [r7, #4]
	movs r0, #0x64
	muls r1, r0, r1
	adds r1, r1, r2
	ldr r0, _0804FA40
	ldr r2, _0804FA4C
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, #0x29
	strb r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804FA40: .4byte gSave
_0804FA44: .4byte gUnknown_0200F920
_0804FA48: .4byte 0x000041CA
_0804FA4C: .4byte 0x0000081E
_0804FA50: .4byte 0x000044F4
_0804FA54: .4byte gSomeBlend
_0804FA58: .4byte gUnknown_020050C0
	.syntax divided
