	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	mov sl, r0
	ldr r6, _0804123C
	ldrb r0, [r6, #6]
	movs r1, #1
	orrs r0, r1
	strb r0, [r6, #6]
	mov r1, sl
	ldrh r0, [r1, #0xa]
	bl sub_08054FE0
	str r0, [sp, #0x1c]
	mov r2, sl
	ldrh r0, [r2, #0xa]
	bl sub_08054FF0
	ldr r1, _08041240
	ldr r3, _08041244
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _080411E4
	ldr r0, _08041248
	adds r7, r1, r0
	ldrh r0, [r7]
	cmp r0, #1
	bls _080411E4
	ldr r4, _0804124C
	ldr r1, _08041250
	mov sb, r1
	ldr r2, _08041254
	adds r6, r6, r2
	ldr r0, [r6]
	lsrs r0, r0, #3
	movs r5, #7
	ands r0, r5
	add r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r3, #1
	mov r8, r3
	str r3, [sp]
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
	mov r0, r8
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #4
	movs r3, #0x20
	bl sub_08046A28
_080411E4:
	ldr r0, _08041258
	mov r1, sl
	ldrh r2, [r1, #0xa]
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
	movs r0, #0x56
	bl sub_080486A0
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xf
	str r1, [sp]
	str r4, [sp, #4]
	movs r1, #0xbe
	movs r2, #7
	bl sub_08047CDC
	ldr r0, [sp, #0x1c]
	bl sub_0805504C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0804125C
	mov r0, sl
	bl sub_080414E4
	b _080414C4
	.align 2, 0
_0804123C: .4byte gUnknown_0200F920
_08041240: .4byte gSomeBlend
_08041244: .4byte 0x000041DA
_08041248: .4byte 0x00002DFA
_0804124C: .4byte gUnknown_080C6530
_08041250: .4byte gUnknown_080C696C
_08041254: .4byte 0x00006474
_08041258: .4byte gUnknown_080C6260
_0804125C:
	add r2, sp, #0x18
	mov r1, sp
	adds r1, #0x1a
	strh r0, [r1]
	ldrh r0, [r1]
	strh r0, [r2]
	ldr r2, [sp, #0x1c]
	ldrb r0, [r2]
	adds r3, r1, #0
	cmp r0, #3
	beq _08041288
	cmp r0, #3
	bgt _0804127C
	cmp r0, #2
	beq _08041280
	b _0804128A
_0804127C:
	cmp r0, #4
	bne _0804128A
_08041280:
	add r1, sp, #0x18
	movs r0, #1
	strh r0, [r1]
	b _0804128A
_08041288:
	strh r4, [r3]
_0804128A:
	ldr r1, _080412B4
	mov r2, sl
	ldrh r0, [r2, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0xde
	lsls r1, r1, #6
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r2, r1, #0
	cmp r1, #0
	beq _080412CC
	add r0, sp, #0x18
	ldrh r0, [r0]
	cmp r0, #0
	beq _080412B8
	adds r0, r1, #0
	bl sub_08044560
	b _080412CC
	.align 2, 0
_080412B4: .4byte gSomeBlend
_080412B8:
	ldrh r0, [r3]
	cmp r0, #0
	beq _080412C6
	adds r0, r1, #0
	bl sub_080444AC
	b _080412CC
_080412C6:
	adds r0, r2, #0
	bl sub_080445DC
_080412CC:
	ldr r1, _080413FC
	ldr r2, _08041400
	adds r0, r1, r2
	ldrh r0, [r0]
	mov r3, sl
	ldrh r2, [r3, #8]
	subs r0, r0, r2
	cmp r0, #0x10
	ble _080412E0
	movs r0, #0x10
_080412E0:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	str r3, [sp, #0x20]
	lsls r2, r2, #2
	movs r3, #0xde
	lsls r3, r3, #6
	adds r1, r1, r3
	adds r5, r2, r1
	movs r6, #0
	lsrs r0, r0, #0x11
	cmp r6, r0
	bhs _08041386
	movs r0, #0xb
	mov sb, r0
	movs r7, #0
	movs r1, #2
	mov r8, r1
_08041302:
	add r0, sp, #0x18
	ldrh r0, [r0]
	cmp r0, #0
	beq _08041378
	ldrb r1, [r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r2, _08041404
	adds r0, r0, r2
	ldrh r0, [r0, #0xc]
	lsls r4, r6, #1
	adds r4, r4, r6
	lsls r4, r4, #0x12
	movs r3, #0x80
	lsls r3, r3, #0xe
	adds r4, r4, r3
	asrs r4, r4, #0x10
	movs r1, #1
	str r1, [sp]
	movs r2, #0x9c
	lsls r2, r2, #2
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
	ldrb r1, [r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r2, _08041404
	adds r0, r0, r2
	ldrh r0, [r0, #0xc]
	movs r3, #1
	str r3, [sp]
	movs r1, #0x9c
	lsls r1, r1, #2
	str r1, [sp, #4]
	mov r2, sb
	str r2, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	mov r3, r8
	str r3, [sp, #0x14]
	movs r1, #0xda
	adds r2, r4, #0
	movs r3, #2
	bl sub_08046BA8
	adds r5, #4
_08041378:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r1, [sp, #0x20]
	lsrs r0, r1, #1
	cmp r6, r0
	blo _08041302
_08041386:
	movs r3, #1
	ldr r0, [sp, #0x20]
	ands r0, r3
	cmp r0, #0
	beq _080413D2
	add r0, sp, #0x18
	ldrh r0, [r0]
	cmp r0, #0
	beq _080413D2
	ldr r2, _08041404
	ldrb r1, [r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0, #0xc]
	lsls r2, r6, #1
	adds r2, r2, r6
	lsls r2, r2, #0x12
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r2, r2, r1
	asrs r2, r2, #0x10
	str r3, [sp]
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
_080413D2:
	ldr r1, _080413FC
	ldr r2, _08041400
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #0
	bne _08041408
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
	b _0804148E
	.align 2, 0
_080413FC: .4byte gSomeBlend
_08041400: .4byte 0x0000427A
_08041404: .4byte gPsiData
_08041408:
	add r0, sp, #0x18
	ldrh r0, [r0]
	adds r4, r0, #0
	cmp r4, #0
	beq _08041454
	ldr r3, _08041450
	adds r5, r1, r3
	mov r0, sl
	ldrh r1, [r0, #4]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	movs r2, #0
	cmp r0, #0
	beq _08041428
	movs r2, #0x6a
_08041428:
	lsrs r1, r1, #1
	mov r3, sl
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
	adds r0, r5, #0
	movs r1, #1
	bl sub_08046D2C
	b _0804148E
	.align 2, 0
_08041450: .4byte 0x000041E8
_08041454:
	ldr r2, _080414D4
	adds r6, r1, r2
	mov r3, sl
	ldrh r1, [r3, #4]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	movs r2, #0
	cmp r0, #0
	beq _0804146A
	movs r2, #0x74
_0804146A:
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
_0804148E:
	ldr r4, _080414D8
	ldr r1, _080414DC
	adds r0, r4, r1
	ldrh r0, [r0]
	mov r3, sl
	ldrh r2, [r3, #8]
	movs r3, #0x78
	str r3, [sp]
	movs r1, #0x1b
	str r1, [sp, #4]
	str r3, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	movs r1, #0x10
	ldr r3, [sp, #0x20]
	bl sub_080467C0
	add r0, sp, #0x18
	ldrh r0, [r0]
	cmp r0, #0
	beq _080414C4
	ldrh r0, [r4, #0x14]
	movs r1, #0
	ldr r0, _080414E0
	strh r0, [r4, #0x14]
	ldrh r0, [r4, #0x1c]
	strh r1, [r4, #0x1c]
_080414C4:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080414D4: .4byte 0x000041E8
_080414D8: .4byte gSomeBlend
_080414DC: .4byte 0x0000427A
_080414E0: .4byte 0x0000FFFE
	.syntax divided
