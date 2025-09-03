	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	str r0, [sp, #8]
	ldr r2, _0804938C
	adds r1, r0, r2
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08049390
	ldr r3, _08049394
	adds r1, r0, r3
	ldr r7, _08049398
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #3
	ldr r1, [r1]
	adds r1, r1, r0
	str r1, [sp, #0x1c]
	str r1, [sp, #0x20]
	ldr r1, [sp, #8]
	ldr r2, _0804939C
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r6, [r0, #4]
	movs r3, #0x98
	lsls r3, r3, #6
	adds r5, r1, r3
	ldr r7, _080493A0
	str r7, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #0x18]
	movs r2, #0
	str r2, [sp, #0x10]
	ldrb r0, [r0, #9]
	cmp r2, r0
	blo _08049320
	b _0804957E
_08049320:
	ldrb r1, [r6, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08049332
	ldr r0, [sp, #8]
	movs r1, #1
	bl sub_08049C70
_08049332:
	ldrh r0, [r6, #8]
	ldr r3, _080493A4
	adds r1, r3, #0
	ands r1, r0
	ldr r2, _080493A8
	ldr r0, [sp, #4]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #4]
	ldrb r2, [r6, #0xa]
	lsls r2, r2, #0x10
	ldr r1, _080493AC
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	ldr r0, [r6]
	str r0, [sp]
	movs r7, #0
	str r7, [sp, #0x14]
	ldrh r0, [r6, #0xe]
	cmp r7, r0
	blo _08049360
	b _08049558
_08049360:
	adds r4, r5, #0
	adds r4, #0x84
	adds r1, r5, #0
	adds r1, #0x88
	str r1, [sp, #0x24]
_0804936A:
	ldr r3, [sp]
	ldrh r1, [r3]
	ldr r0, _080493B0
	cmp r1, r0
	bls _080493B4
	ldrb r0, [r4, #3]
	movs r1, #8
	orrs r0, r1
	strb r0, [r4, #3]
	ldr r0, [sp, #8]
	adds r1, r6, #0
	mov r2, sp
	add r3, sp, #4
	bl sub_080495C8
	b _0804953E
	.align 2, 0
_0804938C: .4byte 0x000076D9
_08049390: .4byte gSomeBlend
_08049394: .4byte 0x0000C620
_08049398: .4byte 0x00002C98
_0804939C: .4byte 0x00006C44
_080493A0: .4byte 0x06010000
_080493A4: .4byte 0x000001FF
_080493A8: .4byte 0xFFFF0000
_080493AC: .4byte 0x0000FFFF
_080493B0: .4byte 0x0000FEFF
_080493B4:
	add r2, sp, #4
	movs r7, #2
	ldrsh r1, [r2, r7]
	movs r7, #0
	ldrsh r0, [r2, r7]
	lsls r0, r0, #0x10
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x17
	orrs r1, r0
	ldr r0, [sp, #0x1c]
	str r1, [r0]
	ldrb r0, [r6, #0x10]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r0, r0, #0xa
	ldr r1, [sp, #0x18]
	orrs r0, r1
	ldr r7, _0804943C
	adds r1, r7, #0
	orrs r0, r1
	ldr r1, [sp, #0x1c]
	strh r0, [r1, #4]
	adds r1, #8
	str r1, [sp, #0x1c]
	ldrh r1, [r3]
	ldrh r0, [r4, #4]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	ldr r3, [sp, #0x24]
	adds r7, r5, #0
	adds r7, #0x85
	movs r2, #0x89
	adds r2, r2, r5
	mov r8, r2
	movs r2, #0x8b
	adds r2, r2, r5
	mov sl, r2
	movs r2, #0x8a
	adds r2, r2, r5
	mov sb, r2
	cmp r1, r0
	bne _08049440
	ldrb r1, [r4, #1]
	lsrs r1, r1, #4
	ldrb r0, [r4, #5]
	lsrs r0, r0, #4
	cmp r1, r0
	bne _08049440
	ldrb r1, [r6, #0x10]
	lsrs r1, r1, #7
	ldrb r0, [r4, #7]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	cmp r1, r0
	bne _08049440
	ldrh r0, [r4, #6]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldr r1, [sp, #0x18]
	cmp r1, r0
	bne _08049440
	ldrb r0, [r4, #3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #3]
	b _080494FE
	.align 2, 0
_0804943C: .4byte 0xFFFFE000
_08049440:
	adds r0, r5, #4
	movs r1, #0x40
	str r3, [sp, #0x28]
	bl memclear
	adds r0, r5, #0
	adds r0, #0x44
	movs r1, #0x40
	bl memclear
	ldr r0, [sp]
	ldrh r1, [r0]
	ldr r2, _080495A4
	ands r1, r2
	ldrh r2, [r4]
	ldr r0, _080495A8
	ands r0, r2
	orrs r0, r1
	strh r0, [r4]
	ldrb r1, [r6, #0x10]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x18
	ldrb r2, [r7]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r7]
	ldrb r0, [r4, #3]
	movs r2, #9
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r4, #3]
	ldr r1, [sp, #0x18]
	ldr r0, _080495AC
	ands r1, r0
	ldrh r2, [r4, #2]
	ldr r0, _080495B0
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #2]
	ldr r1, [sp, #0xc]
	str r1, [r5]
	ldrb r1, [r4, #3]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #3]
	ldrh r1, [r4]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	ldr r2, _080495A4
	ands r1, r2
	ldr r3, [sp, #0x28]
	ldrh r2, [r3]
	ldr r0, _080495A8
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	ldrb r1, [r7]
	lsrs r1, r1, #4
	lsls r1, r1, #4
	mov r3, r8
	ldrb r2, [r3]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrh r1, [r4, #2]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldr r7, _080495AC
	ands r1, r7
	mov r0, sb
	ldrh r2, [r0]
	ldr r0, _080495B0
	ands r0, r2
	orrs r0, r1
	mov r1, sb
	strh r0, [r1]
	ldrb r1, [r6, #0x10]
	lsrs r1, r1, #7
	lsls r1, r1, #2
	mov r3, sl
	ldrb r2, [r3]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, [sp]
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_080496F8
_080494FE:
	ldr r7, [sp, #8]
	ldr r0, _080495B4
	adds r1, r7, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x5f
	bhi _0804957E
	adds r4, #0x8c
	ldr r1, [sp, #0x24]
	adds r1, #0x8c
	str r1, [sp, #0x24]
	adds r5, #0x8c
	ldr r0, [sp, #0x18]
	adds r0, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
	ldr r2, [sp, #0xc]
	adds r2, #0x80
	str r2, [sp, #0xc]
	ldr r0, _080495B8
	ldr r3, _080495BC
	adds r0, r0, r3
	mov r7, sp
	ldrh r1, [r7, #4]
	ldrb r0, [r0]
	adds r1, r1, r0
	add r0, sp, #4
	strh r1, [r0]
_0804953E:
	ldr r0, [sp, #0x14]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, [sp]
	adds r0, #2
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldrh r1, [r6, #0xe]
	cmp r0, r1
	bhs _08049558
	b _0804936A
_08049558:
	ldr r0, [sp, #8]
	movs r1, #0
	bl sub_08049C70
	ldr r0, [sp, #0x10]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	adds r6, #0x14
	ldr r2, [sp, #8]
	ldr r3, _080495C0
	adds r0, r2, r3
	ldr r0, [r0]
	ldr r7, [sp, #0x10]
	ldrb r0, [r0, #9]
	cmp r7, r0
	bhs _0804957E
	b _08049320
_0804957E:
	ldr r2, _080495B8
	ldr r0, _080495C4
	adds r2, r2, r0
	ldr r1, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	subs r0, r1, r3
	lsrs r0, r0, #3
	ldrh r1, [r2]
	adds r1, r1, r0
	ldrh r0, [r2]
	strh r1, [r2]
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080495A4: .4byte 0x00000FFF
_080495A8: .4byte 0xFFFFF000
_080495AC: .4byte 0x000003FF
_080495B0: .4byte 0xFFFFFC00
_080495B4: .4byte 0x000076D9
_080495B8: .4byte gSomeBlend
_080495BC: .4byte 0x0000C5A0
_080495C0: .4byte 0x00006C44
_080495C4: .4byte 0x00002C98
	.syntax divided
