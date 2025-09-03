	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	ldr r4, [sp, #0x50]
	ldr r5, [sp, #0x54]
	ldr r6, [sp, #0x58]
	ldr r7, [sp, #0x5c]
	mov r8, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #8]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0xc]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0x10]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	mov r2, sp
	movs r3, #0
	ldr r1, _0801350C
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #1
	ldr r4, _08013510
	adds r1, r1, r4
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _08013436
	movs r3, #1
_08013436:
	strh r3, [r2]
	add r4, sp, #4
	mov r0, sl
	adds r1, r4, #0
	bl sub_0801A594
	str r7, [sp, #0x18]
	movs r5, #0
	ldr r0, [sp, #0xc]
	cmp r5, r0
	blo _0801344E
	b _08013564
_0801344E:
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	mov r3, sb
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	mov r0, sl
	bl sub_0801A904
	adds r4, r0, #0
	ldr r7, [sp, #0x18]
	movs r0, #0
	mov r8, r0
	mov r1, sb
	adds r1, #1
	str r1, [sp, #0x24]
	adds r5, #1
	str r5, [sp, #0x28]
	ldr r2, [sp, #8]
	cmp r8, r2
	bhs _0801354E
	movs r1, #0xf
	ldr r0, [sp, #0x10]
	ands r0, r1
	lsls r0, r0, #6
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	ands r0, r1
	lsls r0, r0, #2
	str r0, [sp, #0x20]
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	str r0, [sp, #0x2c]
_08013490:
	ldrh r0, [r4]
	ldr r3, _08013514
	adds r1, r3, #0
	ands r0, r1
	ldr r5, [sp, #0x1c]
	orrs r0, r5
	strh r0, [r4]
	movs r0, #0x3f
	adds r2, r6, #0
	ands r2, r0
	ldrb r0, [r4]
	movs r3, #0x40
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	ldrb r0, [r4, #1]
	movs r5, #0x3d
	rsbs r5, r5, #0
	adds r1, r5, #0
	ands r0, r1
	ldr r1, [sp, #0x20]
	orrs r0, r1
	strb r0, [r4, #1]
	mov r3, sp
	movs r5, #4
	ldrsh r2, [r3, r5]
	cmp r2, r7
	bgt _08013530
	adds r0, r2, #0
	adds r0, #0xf
	cmp r0, r7
	blt _08013530
	movs r0, #6
	ldrsh r1, [r3, r0]
	cmp r1, sb
	bgt _08013530
	adds r0, r1, #0
	adds r0, #0xf
	cmp r0, sb
	blt _08013530
	mov r3, sb
	subs r0, r3, r1
	lsls r0, r0, #0x11
	lsrs r3, r0, #0x10
	subs r0, r7, r2
	lsls r0, r0, #0x11
	lsrs r2, r0, #0x10
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801351C
	mov r5, sl
	lsls r0, r5, #0xb
	ldr r5, _08013518
	adds r1, r0, r5
	lsls r0, r3, #5
	adds r0, r2, r0
	lsls r0, r0, #1
	adds r1, r1, r0
	b _08013528
	.align 2, 0
_0801350C: .4byte gSomeBlend
_08013510: .4byte 0x00002C90
_08013514: .4byte 0xFFFFFC3F
_08013518: .4byte 0x06006800
_0801351C:
	ldr r0, _08013574
	ldr r5, [sp, #0x2c]
	lsrs r1, r5, #0x10
	bl sub_08001378
	adds r1, r0, #0
_08013528:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080117C4
_08013530:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r4, #2
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, [sp, #8]
	cmp r8, r0
	blo _08013490
_0801354E:
	ldr r1, [sp, #0x24]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r2, [sp, #0x28]
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	ldr r3, [sp, #0xc]
	cmp r5, r3
	bhs _08013564
	b _0801344E
_08013564:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013574: .4byte gUnknown_02016078
	.syntax divided
