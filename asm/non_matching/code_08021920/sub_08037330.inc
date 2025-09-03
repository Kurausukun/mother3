	.syntax unified
sub_08037330:
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	adds r5, r1, #0
	ldr r0, _080373AC
	ldr r1, _080373B0
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08037348
	b _08037524
_08037348:
	ldrh r3, [r7]
	ldr r1, _080373B4
	ldr r0, [sp]
	ands r0, r1
	orrs r0, r3
	str r0, [sp]
	ldrh r2, [r7, #2]
	mov r4, sp
	strh r2, [r4, #2]
	ldr r0, [sp, #4]
	ands r0, r1
	orrs r0, r3
	str r0, [sp, #4]
	add r0, sp, #4
	strh r2, [r0, #2]
	movs r3, #2
	ldrsh r2, [r5, r3]
	asrs r1, r1, #0x10
	adds r6, r0, #0
	ldrh r3, [r5, #2]
	cmp r2, r1
	bgt _08037388
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	cmp r0, #7
	bgt _08037388
	ldrh r0, [r4, #2]
	subs r0, #7
	strh r0, [r4, #2]
_08037388:
	movs r2, #0
	ldrsh r0, [r5, r2]
	ldrh r2, [r5]
	cmp r0, #0
	bge _080373B8
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	cmp r0, #7
	bgt _080373D6
	mov r0, sp
	ldrh r0, [r0]
	subs r0, #7
	b _080373D2
	.align 2, 0
_080373AC: .4byte gGame
_080373B0: .4byte 0x00008494
_080373B4: .4byte 0xFFFF0000
_080373B8:
	cmp r0, #0
	ble _080373D6
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #1
	movs r1, #0xf
	ands r0, r1
	cmp r0, #7
	ble _080373D6
	mov r0, sp
	ldrh r0, [r0]
	adds r0, #7
_080373D2:
	mov r1, sp
	strh r0, [r1]
_080373D6:
	lsls r0, r2, #0x10
	cmp r0, #0
	bne _080373F2
	ldrh r0, [r6]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #6
	bhi _080373EA
	subs r0, #8
	b _080373F0
_080373EA:
	cmp r1, #8
	bls _080373F2
	adds r0, #8
_080373F0:
	strh r0, [r6]
_080373F2:
	lsls r0, r3, #0x10
	cmp r0, #0
	bne _0803740E
	ldrh r1, [r6, #2]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #6
	bhi _08037408
	adds r0, r1, #0
	subs r0, #8
	strh r0, [r6, #2]
_08037408:
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r6]
_0803740E:
	mov r0, sp
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	blt _0803743A
	mov r0, sp
	movs r3, #0
	ldrsh r4, [r0, r3]
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _08037432
	mov r0, sp
	ldrh r1, [r0]
	b _0803743C
_08037432:
	bl sub_0801A5EC
	subs r1, r0, #1
	b _0803743C
_0803743A:
	movs r1, #0
_0803743C:
	mov r0, sp
	strh r1, [r0]
	mov r5, sp
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08037468
	movs r0, #2
	ldrsh r4, [r5, r0]
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _08037460
	ldrh r1, [r5, #2]
	b _0803746A
_08037460:
	bl sub_0801A604
	subs r1, r0, #1
	b _0803746A
_08037468:
	movs r1, #0
_0803746A:
	mov r0, sp
	strh r1, [r0, #2]
	movs r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, #0
	blt _08037492
	adds r4, r0, #0
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0803748A
	ldrh r0, [r6]
	b _08037494
_0803748A:
	bl sub_0801A5EC
	subs r0, #1
	b _08037494
_08037492:
	movs r0, #0
_08037494:
	strh r0, [r6]
	add r5, sp, #4
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080374BE
	movs r3, #2
	ldrsh r4, [r5, r3]
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _080374B6
	ldrh r1, [r5, #2]
	b _080374C0
_080374B6:
	bl sub_0801A604
	subs r1, r0, #1
	b _080374C0
_080374BE:
	movs r1, #0
_080374C0:
	adds r0, r6, #0
	strh r1, [r0, #2]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	cmp r1, r0
	bne _080374DC
	ldr r0, _080374D8
	ldrh r0, [r0]
	movs r1, #1
	mov r2, sp
	b _080374F4
	.align 2, 0
_080374D8: .4byte gUnknown_02001026
_080374DC:
	ldr r4, _0803751C
	ldrh r0, [r4]
	movs r1, #1
	mov r2, sp
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08037518
	ldrh r0, [r4]
	movs r1, #1
	adds r2, r6, #0
_080374F4:
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08037518
	ldr r0, _08037520
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08037524
	adds r0, r7, #0
	bl sub_08037530
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08037524
_08037518:
	movs r0, #0
	b _08037526
	.align 2, 0
_0803751C: .4byte gUnknown_02001026
_08037520: .4byte gUnknown_02001028
_08037524:
	movs r0, #1
_08037526:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
