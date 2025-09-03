	.syntax unified
sub_0804E16C:
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _0804E194
	ldr r0, _0804E198
	adds r3, r2, r0
	ldrb r1, [r3]
	lsls r0, r1, #0x1b
	cmp r0, #0
	bge _0804E1A0
	ldr r5, _0804E19C
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, #0x77
	bls _0804E1A0
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	b _0804E392
	.align 2, 0
_0804E194: .4byte gSomeBlend
_0804E198: .4byte 0x000041DA
_0804E19C: .4byte 0x000041CE
_0804E1A0:
	ldr r5, _0804E1FC
	ldr r1, _0804E200
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0804E1B0
	b _0804E378
_0804E1B0:
	ldrh r0, [r4]
	cmp r0, #2
	beq _0804E1B8
	b _0804E35E
_0804E1B8:
	ldr r2, _0804E204
	adds r4, r5, r2
	ldrb r0, [r4]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0804E1C6
	b _0804E378
_0804E1C6:
	movs r0, #0xd3
	bl play_sound
	ldrb r1, [r4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	ldr r1, _0804E208
	adds r0, r5, r1
	ldrb r1, [r0]
	ldr r2, _0804E20C
	adds r0, r5, r2
	strb r1, [r0]
	ldr r1, _0804E210
	adds r0, r5, r1
	ldrh r0, [r0]
	subs r0, #1
	cmp r0, #0xe
	bls _0804E1F0
	b _0804E378
_0804E1F0:
	lsls r0, r0, #2
	ldr r1, _0804E214
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804E1FC: .4byte gSomeBlend
_0804E200: .4byte 0x000044F2
_0804E204: .4byte 0x000041DA
_0804E208: .4byte 0x000041D4
_0804E20C: .4byte 0x00004260
_0804E210: .4byte 0x000041C8
_0804E214: .4byte _0804E218
_0804E218:
	.4byte _0804E254
	.4byte _0804E270
	.4byte _0804E378
	.4byte _0804E378
	.4byte _0804E2C4
	.4byte _0804E378
	.4byte _0804E31C
	.4byte _0804E31C
	.4byte _0804E378
	.4byte _0804E378
	.4byte _0804E378
	.4byte _0804E358
	.4byte _0804E378
	.4byte _0804E378
	.4byte _0804E358
_0804E254:
	ldr r4, _0804E268
	adds r0, r4, #0
	movs r1, #0
	bl sub_08053EEC
	ldr r2, _0804E26C
	adds r4, r4, r2
	movs r0, #3
	strh r0, [r4]
	b _0804E378
	.align 2, 0
_0804E268: .4byte gUnknown_02019028
_0804E26C: .4byte 0x000011CA
_0804E270:
	ldr r4, _0804E2A8
	adds r0, r4, #0
	movs r1, #0
	bl sub_08053EEC
	ldr r5, _0804E2AC
	adds r1, r4, r5
	movs r0, #4
	strh r0, [r1]
	ldr r2, _0804E2B0
	ldr r1, _0804E2B4
	adds r0, r4, r1
	ldrb r0, [r0]
	ldr r5, _0804E2B8
	adds r2, r2, r5
	strb r0, [r2]
	ldr r0, _0804E2BC
	adds r3, r4, r0
	ldrb r0, [r3]
	movs r1, #8
	orrs r0, r1
	strb r0, [r3]
	ldrb r0, [r2]
	ldr r1, _0804E2C0
	adds r4, r4, r1
	strb r0, [r4]
	b _0804E378
	.align 2, 0
_0804E2A8: .4byte gUnknown_02019028
_0804E2AC: .4byte 0x000011CA
_0804E2B0: .4byte gSave
_0804E2B4: .4byte 0x000011D3
_0804E2B8: .4byte 0x0000081E
_0804E2BC: .4byte 0x000095B4
_0804E2C0: .4byte 0x000095C0
_0804E2C4:
	ldr r4, _0804E2E8
	ldr r2, _0804E2EC
	adds r0, r4, r2
	ldrh r0, [r0]
	cmp r0, #0x1c
	bne _0804E2F4
	movs r5, #0xc0
	lsls r5, r5, #6
	adds r0, r4, r5
	movs r1, #0
	bl sub_08053EEC
	ldr r0, _0804E2F0
	adds r1, r4, r0
	movs r0, #1
	strh r0, [r1]
	b _0804E378
	.align 2, 0
_0804E2E8: .4byte gSomeBlend
_0804E2EC: .4byte 0x000041CC
_0804E2F0: .4byte 0x000041CA
_0804E2F4:
	cmp r0, #0x1c
	blt _0804E378
	cmp r0, #0x1f
	bgt _0804E378
	cmp r0, #0x1e
	blt _0804E378
	movs r1, #0xc0
	lsls r1, r1, #6
	adds r0, r4, r1
	movs r1, #0
	bl sub_08053EEC
	ldr r2, _0804E318
	adds r1, r4, r2
	movs r0, #2
	strh r0, [r1]
	b _0804E378
	.align 2, 0
_0804E318: .4byte 0x000041CA
_0804E31C:
	ldr r5, _0804E348
	ldr r1, _0804E34C
	adds r0, r5, r1
	ldrh r0, [r0]
	movs r1, #7
	eors r0, r1
	rsbs r4, r0, #0
	orrs r4, r0
	lsrs r4, r4, #0x1f
	adds r0, r5, #0
	movs r1, #6
	bl sub_08053EEC
	ldr r2, _0804E350
	adds r1, r5, r2
	movs r0, #3
	strb r0, [r1]
	ldr r0, _0804E354
	adds r5, r5, r0
	strh r4, [r5]
	b _0804E378
	.align 2, 0
_0804E348: .4byte gUnknown_02018E28
_0804E34C: .4byte 0x000013C8
_0804E350: .4byte 0x000013D3
_0804E354: .4byte 0x000013CA
_0804E358:
	bl sub_08046D90
	b _0804E378
_0804E35E:
	ldr r2, _0804E398
	adds r1, r5, r2
	ldrh r0, [r1]
	cmp r0, #0xf
	bhi _0804E378
	ldr r0, _0804E39C
	ldrh r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0804E378:
	ldr r1, _0804E3A0
	ldr r5, _0804E3A4
	adds r3, r1, r5
	ldrb r2, [r3]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r3]
	ldr r0, _0804E3A8
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_0804E392:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804E398: .4byte 0x000041C8
_0804E39C: .4byte gUnknown_09B8FF24
_0804E3A0: .4byte gSomeBlend
_0804E3A4: .4byte 0x000041DA
_0804E3A8: .4byte 0x000041CE
	.syntax divided
