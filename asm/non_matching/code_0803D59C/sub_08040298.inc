	.syntax unified
	push {r4, lr}
	ldr r3, _08040300
	ldrh r1, [r3, #8]
	movs r2, #0xb0
	lsls r2, r2, #5
	adds r0, r2, #0
	ldrh r2, [r3, #8]
	movs r2, #0
	orrs r0, r1
	strh r0, [r3, #8]
	ldr r4, _08040304
	adds r0, r3, r4
	ldrb r0, [r0]
	cmp r0, #0
	blt _080402D2
	cmp r0, #6
	ble _080402C2
	cmp r0, #0x12
	bgt _080402D2
	cmp r0, #0x11
	blt _080402D2
_080402C2:
	ldrh r0, [r3, #8]
	movs r4, #0x80
	lsls r4, r4, #4
	adds r1, r4, #0
	orrs r0, r1
	ldrh r1, [r3, #8]
	orrs r0, r2
	strh r0, [r3, #8]
_080402D2:
	ldr r3, _08040300
	ldr r1, _08040308
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08040318
	ldr r2, _0804030C
	adds r1, r3, r2
	ldrh r0, [r1]
	cmp r0, #3
	bhi _08040338
	ldr r0, _08040310
	ldrh r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r4, _08040314
	adds r0, r3, r4
	ldr r1, [r1]
	bl _call_via_r1
	b _08040338
	.align 2, 0
_08040300: .4byte gSomeBlend
_08040304: .4byte 0x00004260
_08040308: .4byte 0x000041C6
_0804030C: .4byte 0x000041BC
_08040310: .4byte gUnknown_09B8FCA8
_08040314: .4byte 0x00003060
_08040318:
	ldr r0, _08040364
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #0x12
	bhi _08040338
	ldr r1, _08040368
	lsls r2, r0, #2
	adds r2, r2, r1
	lsls r0, r0, #5
	movs r4, #0xb8
	lsls r4, r4, #6
	adds r1, r3, r4
	adds r0, r0, r1
	ldr r1, [r2]
	bl _call_via_r1
_08040338:
	ldr r4, _0804036C
	ldr r1, _08040370
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0804034A
	bl sub_0804598C
_0804034A:
	bl sub_08050738
	ldr r2, _08040374
	adds r0, r4, r2
	bl sub_080465F8
	ldr r1, _08040378
	adds r0, r4, r1
	bl sub_080465F8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08040364: .4byte 0x00004260
_08040368: .4byte gUnknown_09B8FC5C
_0804036C: .4byte gSomeBlend
_08040370: .4byte 0x000041DA
_08040374: .4byte 0x000041E8
_08040378: .4byte 0x000041F4
	.syntax divided
