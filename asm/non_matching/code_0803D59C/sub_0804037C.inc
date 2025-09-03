	.syntax unified
sub_0804037C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	ldrh r0, [r0, #0xa]
	ldr r1, _0804039C
	ldrh r1, [r1]
	cmp r0, r1
	blo _080403A0
	mov r0, sl
	bl sub_080407E4
	b _08040784
	.align 2, 0
_0804039C: .4byte gUnknown_02018E22
_080403A0:
	ldr r7, _08040474
	ldrb r0, [r7, #6]
	movs r1, #1
	orrs r0, r1
	strb r0, [r7, #6]
	mov r2, sl
	ldrh r0, [r2, #0xa]
	bl sub_08054FE0
	str r0, [sp, #8]
	mov r3, sl
	ldrh r0, [r3, #0xa]
	bl sub_08054FF0
	ldr r1, _08040478
	ldrb r0, [r1]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0804041C
	ldr r4, _0804047C
	ldr r2, _08040480
	mov sb, r2
	ldr r3, _08040484
	adds r6, r7, r3
	ldr r0, [r6]
	lsrs r0, r0, #3
	movs r5, #7
	ands r0, r5
	add r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	mov r8, r0
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #4
	movs r3, #0x20
	bl sub_08046A28
	adds r4, #0x14
	ldr r1, _08040488
	ldrh r0, [r1]
	adds r0, #1
	movs r1, #0x16
	muls r1, r0, r1
	ldr r0, [r6]
	lsrs r0, r0, #3
	ands r0, r5
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r2, r8
	str r2, [sp]
	adds r0, r4, #0
	movs r2, #4
	movs r3, #0x20
	bl sub_08046A28
_0804041C:
	ldr r0, _0804048C
	mov r3, sl
	ldrh r2, [r3, #0xa]
	movs r1, #0x16
	muls r1, r2, r1
	adds r1, #2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #5
	rsbs r2, r2, #0
	movs r4, #1
	str r4, [sp]
	movs r3, #0x20
	bl sub_08046A28
	movs r0, #0
	movs r1, #0
	bl sub_080430B4
	bl sub_08044614
	movs r0, #0x41
	bl sub_080486A0
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xf
	str r1, [sp]
	str r4, [sp, #4]
	movs r1, #0xbc
	movs r2, #7
	bl sub_08047CDC
	ldr r0, [sp, #8]
	bl sub_0805504C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08040490
	mov r0, sl
	bl sub_080407AC
	b _08040784
	.align 2, 0
_08040474: .4byte gUnknown_0200F920
_08040478: .4byte gUnknown_0201A202
_0804047C: .4byte gUnknown_080C6530
_08040480: .4byte gUnknown_080C696C
_08040484: .4byte 0x00006474
_08040488: .4byte gUnknown_02018E22
_0804048C: .4byte gUnknown_080C6260
_08040490:
	ldr r1, _080404B0
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _080404C0
	ldr r2, _080404B4
	ldrb r0, [r2]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080404C0
	ldr r3, _080404B8
	ldr r1, _080404BC
	adds r0, r3, r1
	b _080404D0
	.align 2, 0
_080404B0: .4byte 0x00006478
_080404B4: .4byte gUnknown_0201A202
_080404B8: .4byte gSomeBlend
_080404BC: .4byte 0x000041D5
_080404C0:
	ldr r1, _0804050C
	mov r2, sl
	ldrh r0, [r2, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r3, #0xd2
	lsls r3, r3, #6
	adds r0, r0, r3
_080404D0:
	ldrb r5, [r0]
	cmp r5, #0
	beq _080405C0
	ldr r7, _0804050C
	ldr r1, _08040510
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080405B0
	ldr r2, _08040514
	adds r4, r7, r2
	ldrh r0, [r4]
	bl sub_08054FE0
	adds r6, r0, #0
	ldrh r0, [r4]
	bl sub_08054FF0
	adds r4, r0, #0
	ldr r3, _08040518
	adds r0, r7, r3
	ldrh r0, [r0]
	cmp r0, #7
	beq _08040544
	cmp r0, #7
	bgt _0804051C
	cmp r0, #6
	beq _08040526
	b _080405B6
	.align 2, 0
_0804050C: .4byte gSomeBlend
_08040510: .4byte 0x000041DA
_08040514: .4byte 0x000041D0
_08040518: .4byte 0x000041C8
_0804051C:
	cmp r0, #8
	beq _0804056E
	cmp r0, #9
	beq _08040590
	b _080405B6
_08040526:
	ldr r0, _0804053C
	ldr r1, _08040540
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _08040552
	adds r0, r5, #0
	bl sub_080444AC
	b _080405B6
	.align 2, 0
_0804053C: .4byte gUnknown_0200F920
_08040540: .4byte 0x00006478
_08040544:
	ldr r0, _0804055C
	ldr r2, _08040560
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _08040564
_08040552:
	adds r0, r5, #0
	bl sub_08044DA8
	b _080405B6
	.align 2, 0
_0804055C: .4byte gUnknown_0200F920
_08040560: .4byte 0x00006478
_08040564:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08044C8C
	b _080405B6
_0804056E:
	adds r0, r5, #0
	bl sub_08054F34
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08040586
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08044F00
	b _080405B6
_08040586:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08044E84
	b _080405B6
_08040590:
	ldr r0, _080405A8
	ldr r3, _080405AC
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _080405B6
	adds r0, r5, #0
	bl sub_08045390
	b _080405B6
	.align 2, 0
_080405A8: .4byte gUnknown_0200F920
_080405AC: .4byte 0x00006478
_080405B0:
	adds r0, r5, #0
	bl sub_080444AC
_080405B6:
	movs r0, #0
	movs r1, #0
	adds r2, r5, #0
	bl sub_080431FC
_080405C0:
	ldr r1, _080405F8
	ldr r2, _080405FC
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #0
	bne _08040608
	ldr r0, _08040600
	ldr r3, _08040604
	adds r0, r0, r3
	ldrb r1, [r0]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	bne _08040656
	movs r0, #0x57
	bl sub_080486A0
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xf
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r1, #0x52
	movs r2, #0x8e
	bl sub_08047CDC
	b _08040656
	.align 2, 0
_080405F8: .4byte gSomeBlend
_080405FC: .4byte 0x0000426C
_08040600: .4byte gUnknown_0200F920
_08040604: .4byte 0x00006478
_08040608:
	ldr r2, _08040794
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r4, r0, #0x1f
	cmp r4, #0
	bne _08040656
	ldr r3, _08040798
	adds r6, r1, r3
	mov r0, sl
	ldrh r1, [r0, #4]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	movs r2, #2
	cmp r0, #0
	beq _0804062C
	movs r2, #0x7a
_0804062C:
	lsrs r0, r1, #1
	mov r3, sl
	ldrh r1, [r3, #8]
	lsrs r1, r1, #1
	subs r0, r0, r1
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #0x12
	movs r0, #0xb0
	lsls r0, r0, #0xd
	adds r3, r3, r0
	asrs r3, r3, #0x10
	str r5, [sp]
	str r4, [sp, #4]
	adds r0, r6, #0
	movs r1, #1
	bl sub_08046D2C
	adds r0, r6, #0
	bl sub_080465F8
_08040656:
	ldr r2, _0804079C
	ldr r1, _080407A0
	adds r0, r2, r1
	ldrh r0, [r0]
	cmp r0, #0x10
	bls _08040664
	movs r0, #0x10
_08040664:
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r3, sl
	ldrh r1, [r3, #8]
	lsls r1, r1, #2
	movs r3, #0xd2
	lsls r3, r3, #6
	adds r2, r2, r3
	adds r4, r1, r2
	movs r5, #0
	lsrs r0, r0, #0x11
	cmp r5, r0
	bhs _08040716
_0804067E:
	ldrb r0, [r4]
	bl sub_08054F34
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080406AE
	ldr r0, [r4]
	lsls r0, r0, #8
	cmp r0, #0
	bge _080406AE
	lsls r2, r5, #1
	adds r2, r2, r5
	lsls r2, r2, #0x12
	movs r0, #0x80
	lsls r0, r0, #0xe
	adds r2, r2, r0
	asrs r2, r2, #0x10
	movs r0, #1
	str r0, [sp]
	ldr r0, _080407A4
	movs r1, #8
	movs r3, #0x20
	bl sub_08046A28
_080406AE:
	adds r4, #4
	ldr r1, _0804079C
	ldr r2, _08040794
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080406D8
	ldr r3, _080407A8
	adds r0, r1, r3
	ldrh r0, [r0]
	subs r0, #7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _080406D8
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bls _08040708
_080406D8:
	ldrb r0, [r4]
	bl sub_08054F34
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08040708
	ldr r0, [r4]
	lsls r0, r0, #8
	cmp r0, #0
	bge _08040708
	lsls r2, r5, #1
	adds r2, r2, r5
	lsls r2, r2, #0x12
	movs r0, #0x80
	lsls r0, r0, #0xe
	adds r2, r2, r0
	asrs r2, r2, #0x10
	movs r0, #1
	str r0, [sp]
	ldr r0, _080407A4
	movs r1, #0x80
	movs r3, #0x20
	bl sub_08046A28
_08040708:
	adds r4, #4
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsrs r0, r6, #1
	cmp r5, r0
	blo _0804067E
_08040716:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _08040776
	ldr r1, _0804079C
	ldr r2, _08040794
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08040746
	ldr r3, _080407A8
	adds r0, r1, r3
	ldrh r0, [r0]
	subs r0, #7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08040746
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bls _08040776
_08040746:
	ldrb r0, [r4]
	bl sub_08054F34
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08040776
	ldr r0, [r4]
	lsls r0, r0, #8
	cmp r0, #0
	bge _08040776
	ldr r0, _080407A4
	lsls r2, r5, #1
	adds r2, r2, r5
	lsls r2, r2, #0x12
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r2, r2, r1
	asrs r2, r2, #0x10
	movs r1, #1
	str r1, [sp]
	movs r1, #8
	movs r3, #0x20
	bl sub_08046A28
_08040776:
	ldr r1, _0804079C
	ldrh r0, [r1, #0x14]
	movs r2, #0
	movs r0, #4
	strh r0, [r1, #0x14]
	ldrh r0, [r1, #0x1c]
	strh r2, [r1, #0x1c]
_08040784:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040794: .4byte 0x000041DA
_08040798: .4byte 0x000041E8
_0804079C: .4byte gSomeBlend
_080407A0: .4byte 0x0000426C
_080407A4: .4byte gUnknown_080C6440
_080407A8: .4byte 0x000041C8
	.syntax divided
