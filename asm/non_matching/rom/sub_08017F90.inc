	.syntax unified
sub_08017F90:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	bl sub_0801870C
	ldr r0, _0801806C
	str r0, [sp, #0xc]
	ldr r1, _08018070
	adds r6, r0, r1
	movs r2, #0
	mov sb, r2
	add r3, sp, #4
	mov sl, r3
	ldr r4, _08018074
	adds r0, r0, r4
	mov r8, r0
	adds r1, #0x28
	ldr r0, [sp, #0xc]
	adds r1, r0, r1
	str r1, [sp, #0x10]
_08017FBE:
	mov r2, r8
	ldrb r0, [r2]
	movs r3, #0x21
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	movs r4, #0x41
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r0, r1
	strb r0, [r2]
	mov r0, sb
	cmp r0, #0
	bne _08017FE6
	ldr r1, _08018078
	ldrb r0, [r1, #0xf]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08017FE6
	b _0801852A
_08017FE6:
	mov r2, sb
	cmp r2, #1
	bne _08017FF8
	ldr r3, _08018078
	ldrb r0, [r3, #0x11]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _08017FF8
	b _0801852A
_08017FF8:
	ldrh r1, [r6, #4]
	ldr r0, [sp, #4]
	ldr r4, _0801807C
	ands r0, r4
	orrs r0, r1
	str r0, [sp, #4]
	ldrh r0, [r6, #6]
	mov r1, sl
	strh r0, [r1, #2]
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801809A
	movs r0, #0xf9
	lsls r0, r0, #2
	bl get_flag
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08018084
	mov r3, sb
	cmp r3, #2
	bne _08018084
	movs r4, #0x26
	ldrsh r0, [r6, r4]
	movs r2, #0x22
	ldrsh r1, [r6, r2]
	ldrh r2, [r6, #0x30]
	ldrh r3, [r6, #0x18]
	bl lerp2
	strh r0, [r6, #6]
	ldr r3, [sp, #0xc]
	ldr r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1e
	movs r1, #2
	ldrsb r1, [r3, r1]
	ldr r4, _08018080
	movs r2, #0
	ldrsh r3, [r4, r2]
	movs r4, #0x1c
	ldrsh r2, [r6, r4]
	str r2, [sp]
	movs r2, #0
	bl sub_0801856C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0801807C
	ands r7, r1
	orrs r7, r0
	ldrh r0, [r6, #4]
	adds r0, r0, r7
	strh r0, [r6, #4]
	b _080180F6
	.align 2, 0
_0801806C: .4byte gUnknown_02005C1C
_08018070: .4byte 0x00005894
_08018074: .4byte 0x000058C9
_08018078: .4byte gGame
_0801807C: .4byte 0xFFFF0000
_08018080: .4byte gUnknown_0200C3A4
_08018084:
	adds r0, r6, #0
	adds r0, #0x24
	adds r1, r6, #0
	adds r1, #0x20
	adds r2, r6, #4
	ldrh r3, [r6, #0x30]
	ldrh r4, [r6, #0x18]
	str r4, [sp]
	bl sub_08002E8C
	b _080180F6
_0801809A:
	ldr r2, [sp, #0xc]
	ldr r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1e
	movs r1, #2
	ldrsb r1, [r2, r1]
	ldr r4, _08018130
	movs r2, #0
	ldrsh r3, [r4, r2]
	movs r4, #0x1c
	ldrsh r2, [r6, r4]
	str r2, [sp]
	movs r2, #0
	bl sub_0801856C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08018134
	ands r7, r1
	orrs r7, r0
	ldr r2, [sp, #0xc]
	ldr r0, [r2]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1e
	movs r1, #3
	ldrsb r1, [r2, r1]
	ldr r4, _08018138
	movs r2, #0
	ldrsh r3, [r4, r2]
	movs r4, #0x1e
	ldrsh r2, [r6, r4]
	str r2, [sp]
	movs r2, #1
	bl sub_0801856C
	lsls r0, r0, #0x10
	ldr r1, _0801813C
	ands r7, r1
	orrs r7, r0
	ldrh r0, [r6, #4]
	adds r0, r0, r7
	strh r0, [r6, #4]
	asrs r0, r7, #0x10
	ldrh r2, [r6, #6]
	adds r0, r0, r2
	strh r0, [r6, #6]
_080180F6:
	mov r3, r8
	ldrb r1, [r3]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08018152
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08018140
	adds r0, r6, #0
	adds r0, #0x2c
	add r4, sp, #8
	ldrh r3, [r6, #0x32]
	ldrh r1, [r6, #0x1a]
	str r1, [sp]
	ldr r1, [sp, #0x10]
	adds r2, r4, #0
	bl sub_08002E8C
	ldrh r0, [r4]
	ldrh r1, [r6, #4]
	adds r0, r0, r1
	strh r0, [r6, #4]
	ldrh r0, [r4, #2]
	ldrh r2, [r6, #6]
	adds r0, r0, r2
	strh r0, [r6, #6]
	b _08018152
	.align 2, 0
_08018130: .4byte gUnknown_0200C3A4
_08018134: .4byte 0xFFFF0000
_08018138: .4byte gUnknown_0200C3A6
_0801813C: .4byte 0x0000FFFF
_08018140:
	adds r0, r6, #0
	adds r0, #0x2c
	adds r2, r6, #4
	ldrh r3, [r6, #0x32]
	ldrh r1, [r6, #0x1a]
	str r1, [sp]
	ldr r1, [sp, #0x10]
	bl sub_08002E8C
_08018152:
	ldr r3, [sp, #0xc]
	ldrb r1, [r3]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0xc0
	beq _080181FC
	mov r4, r8
	ldrb r1, [r4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080181FC
	movs r1, #4
	ldrsh r0, [r6, r1]
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	movs r2, #1
	bl sub_0801A7CC
	adds r1, r0, #0
	strh r1, [r6, #4]
	ldr r0, _080181C4
	ldrh r0, [r0]
	cmp r0, #0
	bne _08018188
	b _0801827A
_08018188:
	lsls r0, r7, #0x10
	cmp r0, #0
	bge _080181CC
	mov r3, sl
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r4, _080181C8
	ands r5, r4
	orrs r5, r0
	mov r0, sb
	bl sub_0801A61C
	ldrh r1, [r6, #4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	subs r0, r0, r1
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r5, r4
	orrs r5, r0
	rsbs r0, r5, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r5, r4
	orrs r5, r0
	b _08018292
	.align 2, 0
_080181C4: .4byte gUnknown_02000040
_080181C8: .4byte 0xFFFF0000
_080181CC:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080181F8
	ands r5, r1
	orrs r5, r0
	mov r0, sb
	bl sub_0801A61C
	mov r2, sl
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	subs r0, r0, r1
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _080181F8
	ands r5, r3
	orrs r5, r0
	b _08018292
	.align 2, 0
_080181F8: .4byte 0xFFFF0000
_080181FC:
	mov r0, sb
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bls _08018238
	mov r2, sl
	ldrh r0, [r2]
	lsls r1, r0, #0x10
	cmp r1, #0
	bge _08018238
	movs r3, #4
	ldrsh r0, [r6, r3]
	cmp r0, #0
	ble _08018238
	rsbs r0, r0, #0
	asrs r0, r0, #4
	asrs r1, r1, #0x14
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08018234
	ands r5, r1
	orrs r5, r0
	b _08018292
	.align 2, 0
_08018234: .4byte 0xFFFF0000
_08018238:
	mov r0, sb
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	bls _08018278
	mov r3, sl
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r0, #0
	ble _08018278
	ldrh r0, [r6, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08018278
	asrs r1, r0, #0x14
	movs r2, #0
	ldrsh r0, [r3, r2]
	rsbs r0, r0, #0
	asrs r0, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _08018274
	ands r5, r3
	b _08018290
	.align 2, 0
_08018274: .4byte 0xFFFF0000
_08018278:
	ldrh r1, [r6, #4]
_0801827A:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	mov r4, sl
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _080182FC
	ands r5, r0
_08018290:
	orrs r5, r1
_08018292:
	ldr r2, [sp, #0xc]
	ldrb r1, [r2, #1]
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	beq _08018338
	mov r3, r8
	ldrb r1, [r3]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08018338
	movs r4, #6
	ldrsh r0, [r6, r4]
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	movs r2, #1
	bl sub_0801A868
	adds r1, r0, #0
	strh r1, [r6, #6]
	ldr r0, _08018300
	ldrh r0, [r0]
	cmp r0, #0
	beq _080183B2
	cmp r7, #0
	bge _08018308
	mov r3, sl
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	ldr r4, _08018304
	ands r5, r4
	orrs r5, r0
	mov r0, sb
	bl sub_0801A638
	asrs r2, r5, #0x10
	ldrh r1, [r6, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	subs r0, r0, r1
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ands r5, r4
	orrs r5, r2
	asrs r0, r5, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	b _08018368
	.align 2, 0
_080182FC: .4byte 0xFFFF0000
_08018300: .4byte gUnknown_02000040
_08018304: .4byte 0x0000FFFF
_08018308:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	ldr r1, _08018334
	ands r5, r1
	orrs r5, r0
	mov r0, sb
	bl sub_0801A638
	asrs r2, r5, #0x10
	mov r3, sl
	ldrh r1, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	subs r0, r0, r1
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r4, _08018334
	ands r5, r4
	orrs r5, r2
	b _080183C8
	.align 2, 0
_08018334: .4byte 0x0000FFFF
_08018338:
	mov r0, sb
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #1
	cmp r0, r4
	bls _08018374
	mov r1, sl
	ldrh r0, [r1, #2]
	lsls r1, r0, #0x10
	cmp r1, #0
	bge _08018374
	movs r2, #6
	ldrsh r0, [r6, r2]
	cmp r0, #0
	ble _08018374
	rsbs r0, r0, #0
	asrs r0, r0, #4
	asrs r1, r1, #0x14
	subs r0, r0, r1
	lsls r0, r0, #0x10
	ldr r4, _08018370
_08018368:
	ands r5, r4
	orrs r5, r0
	b _080183C8
	.align 2, 0
_08018370: .4byte 0x0000FFFF
_08018374:
	mov r0, sb
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bls _080183B0
	add r2, sp, #4
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080183B0
	ldrh r0, [r6, #6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080183B0
	asrs r1, r0, #0x14
	movs r3, #2
	ldrsh r0, [r2, r3]
	rsbs r0, r0, #0
	asrs r0, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #0x10
	ldr r4, _080183AC
	ands r5, r4
	b _080183C6
	.align 2, 0
_080183AC: .4byte 0x0000FFFF
_080183B0:
	ldrh r1, [r6, #6]
_080183B2:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	mov r2, sl
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	subs r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _08018408
	ands r5, r3
_080183C6:
	orrs r5, r1
_080183C8:
	ldrh r0, [r6, #8]
	adds r0, r0, r5
	strh r0, [r6, #8]
	asrs r1, r5, #0x10
	ldrh r0, [r6, #0xa]
	adds r0, r0, r1
	strh r0, [r6, #0xa]
	ldr r4, [sp, #0x10]
	strb r1, [r4, #0xc]
	mov r0, sb
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x14
	mov r0, sb
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x14
	adds r0, r2, #0
	movs r3, #0xa
	ldrsh r1, [r6, r3]
	cmp r1, #0
	bge _0801841E
	ldrh r1, [r6, #2]
	movs r3, #2
	ldrsh r0, [r6, r3]
	cmp r0, #0
	bne _0801840C
	subs r0, r2, #1
	b _0801840E
	.align 2, 0
_08018408: .4byte 0x0000FFFF
_0801840C:
	subs r0, r1, #1
_0801840E:
	strh r0, [r6, #2]
	ldrh r1, [r6]
	ldrh r2, [r6, #2]
	mov r0, sb
	movs r3, #5
	bl sub_08010A40
	b _08018444
_0801841E:
	cmp r1, #0xf
	ble _08018444
	movs r2, #2
	ldrsh r1, [r6, r2]
	subs r0, #1
	cmp r1, r0
	bne _08018432
	movs r3, #0
	strh r3, [r6, #2]
	b _08018438
_08018432:
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
_08018438:
	ldrh r1, [r6]
	ldrh r2, [r6, #2]
	mov r0, sb
	movs r3, #1
	bl sub_08010A40
_08018444:
	movs r1, #8
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bge _0801846C
	ldrh r1, [r6]
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bne _0801845A
	subs r0, r4, #1
	b _0801845C
_0801845A:
	subs r0, r1, #1
_0801845C:
	strh r0, [r6]
	ldrh r1, [r6]
	ldrh r2, [r6, #2]
	mov r0, sb
	movs r3, #3
	bl sub_08010A40
	b _08018490
_0801846C:
	cmp r0, #0xf
	ble _08018490
	movs r3, #0
	ldrsh r1, [r6, r3]
	subs r0, r4, #1
	cmp r1, r0
	bne _0801847E
	movs r0, #0
	b _08018482
_0801847E:
	ldrh r0, [r6]
	adds r0, #1
_08018482:
	strh r0, [r6]
	ldrh r1, [r6]
	ldrh r2, [r6, #2]
	mov r0, sb
	movs r3, #7
	bl sub_08010A40
_08018490:
	mov r4, r8
	ldrb r1, [r4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080184A4
	ldrh r1, [r6, #8]
	movs r0, #0xf
	ands r0, r1
	strh r0, [r6, #8]
_080184A4:
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080184B8
	ldrh r1, [r6, #0xa]
	movs r0, #0xf
	ands r0, r1
	strh r0, [r6, #0xa]
_080184B8:
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080184E8
	ldrh r0, [r6, #0x30]
	adds r0, #1
	movs r2, #0
	strh r0, [r6, #0x30]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r3, [r6, #0x18]
	cmp r0, r3
	bls _080184FE
	mov r4, r8
	ldrb r0, [r4]
	movs r3, #9
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r4]
	strh r2, [r6, #0x18]
	b _080184FE
_080184E8:
	ldrh r0, [r6, #0x18]
	cmp r0, #0
	beq _080184FE
	subs r0, #1
	strh r0, [r6, #0x18]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _080184FE
	strh r0, [r6, #0x1c]
	strh r0, [r6, #0x1e]
_080184FE:
	mov r4, r8
	ldrb r1, [r4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801852A
	ldrh r0, [r6, #0x32]
	adds r0, #1
	movs r2, #0
	strh r0, [r6, #0x32]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r6, #0x1a]
	cmp r0, r1
	bls _0801852A
	ldrb r0, [r4]
	movs r3, #0x11
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r4]
	strh r2, [r6, #0x1a]
_0801852A:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r4, [sp, #0xc]
	adds r4, #4
	str r4, [sp, #0xc]
	movs r0, #0x38
	add r8, r0
	ldr r1, [sp, #0x10]
	adds r1, #0x38
	str r1, [sp, #0x10]
	adds r6, #0x38
	mov r2, sb
	cmp r2, #2
	bhi _0801854E
	b _08017FBE
_0801854E:
	ldr r1, _08018568
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018568: .4byte gUnknown_0200C3A4
	.syntax divided
