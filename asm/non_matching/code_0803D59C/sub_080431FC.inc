	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x3c]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x40]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x44]
	adds r0, r2, #0
	bl sub_08054F34
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08043228
	b _08043362
_08043228:
	ldr r0, [sp, #0x44]
	bl sub_08054EF4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x50]
	movs r0, #0
	b _08043350
_08043238:
	ldr r0, [sp, #0x4c]
	bl sub_08054FE0
	adds r7, r0, #0
	ldr r0, [sp, #0x4c]
	bl sub_08054FF0
	str r0, [sp, #0x48]
	ldrb r0, [r7]
	cmp r0, #0
	beq _08043348
	movs r1, #0x80
	lsls r1, r1, #9
	ldrb r3, [r7]
	lsls r1, r3
	lsrs r1, r1, #0x10
	ldr r2, _080432C8
	movs r0, #0x6c
	ldr r3, [sp, #0x44]
	muls r0, r3, r0
	adds r0, r0, r2
	ldrh r0, [r0, #0xc]
	ands r1, r0
	cmp r1, #0
	beq _08043348
	ldr r0, _080432CC
	mov r8, r0
	movs r0, #0x16
	ldr r1, [sp, #0x4c]
	adds r6, r1, #0
	muls r6, r0, r6
	ldr r2, [sp, #0x3c]
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	adds r1, r4, #0
	adds r1, #0xa
	adds r1, r6, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r3, [sp, #0x40]
	lsls r2, r3, #0x10
	asrs r0, r2, #0x10
	mov sb, r0
	movs r3, #0x90
	lsls r3, r3, #0xd
	adds r2, r2, r3
	asrs r2, r2, #0x10
	movs r0, #0
	mov sl, r0
	str r0, [sp]
	mov r0, r8
	movs r3, #0x20
	bl sub_08046A28
	adds r0, r7, #0
	ldr r1, [sp, #0x44]
	bl sub_08055138
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _080432D0
	adds r1, r4, #0
	adds r1, #0xe
	adds r1, r6, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r2, sl
	str r2, [sp]
	mov r0, r8
	subs r0, #0x14
	b _08043308
	.align 2, 0
_080432C8: .4byte gGoodsInfo
_080432CC: .4byte gUnknown_080C6454
_080432D0:
	adds r0, r7, #0
	add r1, sp, #4
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x44]
	bl sub_08054CDC
	ldr r3, [sp, #0x48]
	movs r0, #0x16
	ldrsh r1, [r3, r0]
	movs r2, #0x1c
	ldrsh r0, [r3, r2]
	adds r2, r1, r0
	add r0, sp, #4
	movs r3, #0x16
	ldrsh r1, [r0, r3]
	movs r3, #0x1c
	ldrsh r0, [r0, r3]
	adds r1, r1, r0
	cmp r2, r1
	bhs _08043312
	adds r1, r4, r6
	adds r1, #0xa
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r5, [sp]
	movs r0, #0x82
	lsls r0, r0, #1
	add r0, r8
_08043308:
	mov r2, sb
	movs r3, #0x20
	bl sub_08046A28
	b _08043348
_08043312:
	cmp r2, r1
	bls _08043348
	adds r4, #0xe
	adds r4, r6, r4
	subs r1, r4, #7
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r5, [sp]
	movs r0, #0x8c
	lsls r0, r0, #1
	add r0, r8
	mov r2, sb
	movs r3, #0x20
	bl sub_08046A28
	adds r4, #9
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r5, [sp]
	movs r0, #0x96
	lsls r0, r0, #1
	add r0, r8
	adds r1, r4, #0
	mov r2, sb
	movs r3, #0x20
	bl sub_08046A28
_08043348:
	ldr r0, [sp, #0x4c]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_08043350:
	str r0, [sp, #0x4c]
	ldr r0, _08043374
	ldr r1, _08043378
	adds r0, r0, r1
	ldr r2, [sp, #0x4c]
	ldrh r0, [r0]
	cmp r2, r0
	bhs _08043362
	b _08043238
_08043362:
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08043374: .4byte gSomeBlend
_08043378: .4byte 0x00002DFA
	.syntax divided
