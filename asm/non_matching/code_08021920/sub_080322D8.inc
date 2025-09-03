	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov r8, r0
	mov sb, r1
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0x40]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, sp
	strh r1, [r0]
	mov r1, r8
	ldr r0, [r1, #0x1c]
	ldrh r0, [r0]
	movs r1, #4
	cmp r0, #4
	bhi _08032310
	adds r1, r0, #0
_08032310:
	mov r0, r8
	adds r0, #0x90
	strb r1, [r0]
	ldr r2, [sp, #4]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	mov r3, r8
	ldr r1, [r3, #0x1c]
	adds r4, r1, #2
	mov r7, r8
	adds r7, #0x54
	movs r1, #0
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	ldrb r2, [r0]
	cmp r1, r2
	blo _08032336
	b _080324B4
_08032336:
	ldr r3, [r3, #0x20]
	str r3, [sp, #0xc]
	b _080324A6
_0803233C:
	ldr r3, _0803235C
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #3
	ldr r1, _08032360
	adds r5, r0, r1
	ldr r0, _08032364
	movs r1, #0
	ldrsb r1, [r4, r1]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	blt _08032368
	ldr r3, [sp, #0x38]
	ldrb r6, [r3, #1]
	b _0803236C
	.align 2, 0
_0803235C: .4byte 0x000121B0
_08032360: .4byte gUnknown_030038F0
_08032364: .4byte gUnknown_02001008
_08032368:
	ldr r0, [sp, #0x38]
	ldrb r6, [r0]
_0803236C:
	mov r2, sp
	adds r2, #2
	movs r0, #0
	strh r0, [r2]
	mov r0, r8
	adds r0, #0x8b
	ldrb r0, [r0]
	lsrs r1, r0, #3
	movs r3, #7
	ands r3, r0
	cmp r1, #0xc
	bhi _0803238C
	cmp r3, #0
	beq _0803238C
	cmp r3, #4
	bne _08032390
_0803238C:
	movs r0, #1
	strh r0, [r2]
_08032390:
	ldrh r0, [r2]
	cmp r0, #0
	beq _080323FC
	ldr r1, [r4]
	lsrs r0, r1, #0x1e
	lsls r1, r1, #2
	lsrs r1, r1, #0x1e
	bl sub_0800279C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #1
	ldrsb r1, [r4, r1]
	rsbs r1, r1, #0
	subs r1, r1, r0
	movs r2, #0
	ldrsb r2, [r4, r2]
	mov ip, r2
	mov r3, sb
	movs r2, #2
	ldrsh r0, [r3, r2]
	mov r3, ip
	adds r2, r3, r0
	movs r0, #0xff
	ands r2, r0
	ldr r0, [r4]
	lsrs r0, r0, #0x1e
	lsls r0, r0, #0xe
	orrs r2, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov ip, r1
	mov r1, sb
	movs r3, #0
	ldrsh r0, [r1, r3]
	mov r3, ip
	adds r1, r3, r0
	ldr r0, _080323F8
	ands r1, r0
	lsls r1, r1, #0x10
	orrs r2, r1
	ldrh r1, [r4, #2]
	movs r3, #0xf0
	lsls r3, r3, #6
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0x12
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x15
	eors r2, r0
	b _08032436
	.align 2, 0
_080323F8: .4byte 0x000001FF
_080323FC:
	movs r2, #0
	ldrsb r2, [r4, r2]
	mov r1, sb
	movs r3, #2
	ldrsh r0, [r1, r3]
	adds r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	ldr r0, [r4]
	lsrs r0, r0, #0x1e
	lsls r0, r0, #0xe
	orrs r2, r0
	movs r0, #1
	ldrsb r0, [r4, r0]
	movs r3, #0
	ldrsh r1, [r1, r3]
	mov ip, r1
	add r0, ip
	ldr r1, _08032450
	ands r0, r1
	lsls r0, r0, #0x10
	orrs r2, r0
	ldrh r1, [r4, #2]
	movs r3, #0xf0
	lsls r3, r3, #6
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0x12
	orrs r2, r0
_08032436:
	str r2, [r5]
	lsls r0, r6, #0xa
	mov r1, sl
	orrs r0, r1
	ldr r2, [sp, #4]
	orrs r0, r2
	strh r0, [r5, #4]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08032454
	movs r0, #0
	b _0803245E
	.align 2, 0
_08032450: .4byte 0x000001FF
_08032454:
	ldr r3, [sp, #8]
	lsls r0, r3, #0x10
	ldr r1, _080324C4
	adds r0, r0, r1
	lsrs r0, r0, #0x10
_0803245E:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_08032DAC
	ldr r0, [r4]
	lsls r0, r0, #6
	lsrs r0, r0, #0x16
	lsls r0, r0, #5
	ldr r2, [sp, #0xc]
	adds r0, r2, r0
	str r0, [r7]
	ldm r4!, {r1}
	lsrs r0, r1, #0x1e
	lsls r1, r1, #2
	lsrs r1, r1, #0x1e
	bl sub_08002760
	strh r0, [r7, #4]
	add r0, sl
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [sp, #0x10]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	adds r7, #8
	ldr r3, [sp, #0x14]
	ldrb r3, [r3]
	cmp r0, r3
	bhs _080324B4
	mov r0, r8
	ldr r0, [r0, #0x20]
	str r0, [sp, #0xc]
_080324A6:
	ldr r0, _080324C8
	ldr r2, _080324CC
	adds r1, r0, r2
	ldrh r1, [r1]
	cmp r1, #0x7f
	bhi _080324B4
	b _0803233C
_080324B4:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080324C4: .4byte 0xFF600000
_080324C8: .4byte gSomeBlend
_080324CC: .4byte 0x000121B0
	.syntax divided
