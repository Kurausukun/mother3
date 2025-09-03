	.syntax unified
sub_080422B4:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	str r0, [sp, #0x18]
	ldr r6, _080424A4
	ldrb r0, [r6, #6]
	movs r1, #1
	orrs r0, r1
	strb r0, [r6, #6]
	ldr r1, _080424A8
	ldr r2, _080424AC
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08042336
	ldr r3, _080424B0
	adds r7, r1, r3
	ldrh r0, [r7]
	cmp r0, #1
	bls _08042336
	ldr r4, _080424B4
	ldr r0, _080424B8
	mov sb, r0
	ldr r1, _080424BC
	adds r6, r6, r1
	ldr r0, [r6]
	lsrs r0, r0, #3
	movs r5, #7
	ands r0, r5
	add r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r2, #1
	mov r8, r2
	str r2, [sp]
	adds r0, r4, #0
	movs r2, #4
	movs r3, #0x20
	bl sub_08046A28
	adds r4, #0x14
	ldrh r1, [r7]
	movs r0, #0x16
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
	mov r3, r8
	str r3, [sp]
	adds r0, r4, #0
	movs r2, #4
	movs r3, #0x20
	bl sub_08046A28
_08042336:
	movs r0, #0x87
	bl sub_080486A0
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xf
	str r1, [sp]
	movs r4, #1
	str r4, [sp, #4]
	movs r1, #0xb4
	movs r2, #7
	bl sub_08047CDC
	ldr r0, _080424C0
	ldr r1, [sp, #0x18]
	ldrh r2, [r1, #0xa]
	movs r1, #0x16
	muls r1, r2, r1
	adds r1, #2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #5
	rsbs r2, r2, #0
	str r4, [sp]
	movs r3, #0x20
	bl sub_08046A28
	movs r0, #0
	movs r1, #0
	bl sub_080430B4
	bl sub_08044614
	ldr r2, _080424A8
	ldr r3, [sp, #0x18]
	ldrh r0, [r3, #4]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, _080424C4
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r4, r1, #0
	cmp r1, #0
	beq _080423AA
	ldr r3, _080424AC
	adds r0, r2, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _080423A0
	adds r0, r1, #0
	bl sub_080444AC
_080423A0:
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_080431FC
_080423AA:
	ldr r1, _080424A8
	ldr r2, _080424C8
	adds r0, r1, r2
	ldrh r0, [r0]
	ldr r3, [sp, #0x18]
	ldrh r2, [r3, #8]
	subs r0, r0, r2
	cmp r0, #0x10
	ble _080423BE
	movs r0, #0x10
_080423BE:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	str r3, [sp, #0x1c]
	lsls r2, r2, #2
	ldr r3, _080424C4
	adds r1, r1, r3
	adds r5, r2, r1
	movs r6, #0
	lsrs r0, r0, #0x11
	cmp r6, r0
	bhs _08042444
	movs r0, #0x9c
	lsls r0, r0, #2
	mov sl, r0
	movs r1, #0xb
	mov sb, r1
	movs r7, #0
	movs r2, #2
	mov r8, r2
_080423E4:
	ldrb r0, [r5, #1]
	lsls r4, r6, #1
	adds r4, r4, r6
	lsls r4, r4, #0x12
	movs r3, #0x80
	lsls r3, r3, #0xe
	adds r4, r4, r3
	asrs r4, r4, #0x10
	movs r1, #1
	str r1, [sp]
	mov r2, sl
	str r2, [sp, #4]
	mov r3, sb
	str r3, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	mov r1, r8
	str r1, [sp, #0x14]
	movs r1, #0x68
	adds r2, r4, #0
	movs r3, #2
	bl sub_08046BA8
	adds r5, #4
	ldrb r0, [r5, #1]
	movs r2, #1
	str r2, [sp]
	mov r3, sl
	str r3, [sp, #4]
	mov r1, sb
	str r1, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	mov r2, r8
	str r2, [sp, #0x14]
	movs r1, #0xda
	adds r2, r4, #0
	movs r3, #2
	bl sub_08046BA8
	adds r5, #4
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r3, [sp, #0x1c]
	lsrs r0, r3, #1
	cmp r6, r0
	blo _080423E4
_08042444:
	movs r4, #1
	ldr r0, [sp, #0x1c]
	ands r0, r4
	cmp r0, #0
	beq _0804247C
	ldrb r0, [r5, #1]
	lsls r2, r6, #1
	adds r2, r2, r6
	lsls r2, r2, #0x12
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r2, r2, r1
	asrs r2, r2, #0x10
	str r4, [sp]
	movs r1, #0x9c
	lsls r1, r1, #2
	str r1, [sp, #4]
	movs r1, #0xb
	str r1, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	movs r1, #2
	str r1, [sp, #0x14]
	movs r1, #0x68
	movs r3, #2
	bl sub_08046BA8
_0804247C:
	ldr r1, _080424A8
	ldr r2, _080424C8
	adds r5, r1, r2
	ldrh r0, [r5]
	cmp r0, #0
	bne _080424CC
	movs r0, #0x57
	bl sub_080486A0
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xf
	str r1, [sp]
	str r4, [sp, #4]
	movs r1, #0x52
	movs r2, #0x8e
	bl sub_08047CDC
	b _08042520
	.align 2, 0
_080424A4: .4byte gUnknown_0200F920
_080424A8: .4byte gSomeBlend
_080424AC: .4byte 0x000041DA
_080424B0: .4byte 0x00002DFA
_080424B4: .4byte gUnknown_080C6530
_080424B8: .4byte gUnknown_080C696C
_080424BC: .4byte 0x00006474
_080424C0: .4byte gUnknown_080C6260
_080424C4: .4byte 0x00003DBC
_080424C8: .4byte 0x00004282
_080424CC:
	ldr r3, _08042540
	adds r6, r1, r3
	ldr r0, [sp, #0x18]
	ldrh r1, [r0, #4]
	adds r0, r4, #0
	ands r0, r1
	movs r2, #2
	cmp r0, #0
	beq _080424E0
	movs r2, #0x6a
_080424E0:
	lsrs r1, r1, #1
	ldr r3, [sp, #0x18]
	ldrh r0, [r3, #8]
	lsrs r0, r0, #1
	subs r1, r1, r0
	lsls r3, r1, #1
	adds r3, r3, r1
	lsls r3, r3, #0x12
	movs r0, #0xb0
	lsls r0, r0, #0xd
	adds r3, r3, r0
	asrs r3, r3, #0x10
	str r4, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r1, #1
	bl sub_08046D2C
	ldrh r0, [r5]
	ldr r1, [sp, #0x18]
	ldrh r2, [r1, #8]
	movs r3, #0x78
	str r3, [sp]
	movs r1, #0x1b
	str r1, [sp, #4]
	str r3, [sp, #8]
	str r4, [sp, #0xc]
	movs r1, #0x10
	ldr r3, [sp, #0x1c]
	bl sub_080467C0
_08042520:
	ldr r1, _08042544
	ldrh r0, [r1, #0x14]
	movs r2, #0
	ldr r0, _08042548
	strh r0, [r1, #0x14]
	ldrh r0, [r1, #0x1c]
	strh r2, [r1, #0x1c]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042540: .4byte 0x000041E8
_08042544: .4byte gSomeBlend
_08042548: .4byte 0x0000FFFE
	.syntax divided
