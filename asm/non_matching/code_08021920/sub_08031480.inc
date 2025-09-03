	.syntax unified
sub_08031480:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r0, #0xcc
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _080314AC
	movs r2, #0
	ldr r1, _080314A8
	ldr r0, [sp]
	ands r0, r1
	str r0, [sp]
	mov r0, sp
	strh r2, [r0, #2]
	adds r7, r5, #0
	adds r7, #0xcb
	b _080314D8
	.align 2, 0
_080314A8: .4byte 0xFFFF0000
_080314AC:
	adds r1, r5, #0
	adds r1, #0xcb
	ldrb r0, [r1]
	lsrs r0, r0, #7
	adds r7, r1, #0
	cmp r0, #0
	beq _080314CC
	adds r0, r5, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sp
	bl sub_0801A548
	b _080314D8
_080314CC:
	ldr r2, _0803156C
	ldrh r1, [r2]
	mov r0, sp
	strh r1, [r0]
	ldrh r1, [r2, #2]
	strh r1, [r0, #2]
_080314D8:
	movs r0, #0
	ldrsh r2, [r5, r0]
	movs r1, #4
	ldrsh r0, [r5, r1]
	adds r2, r2, r0
	lsls r2, r2, #0xc
	movs r3, #2
	ldrsh r0, [r5, r3]
	movs r6, #6
	ldrsh r1, [r5, r6]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0xb6
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r0, r0, r1
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	ldr r6, _08031570
	lsrs r4, r2, #0x10
	orrs r4, r0
	ldr r1, _08031574
	ldr r0, [r1]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	mov r8, r1
	cmp r0, #0
	ble _0803154A
	ldr r0, [r5, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _0803154A
	adds r1, r5, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #4
	bhi _0803154A
	asrs r3, r4, #0x10
	ldr r2, _08031578
	ldr r0, _0803157C
	add r0, r8
	ldr r0, [r0]
	lsrs r0, r0, #3
	ldrb r1, [r1]
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r3
	lsls r0, r0, #0x10
	ands r4, r6
	orrs r4, r0
_0803154A:
	mov r6, r8
	ldrb r0, [r6, #0x11]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _080315E4
	ldrb r0, [r7]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08031580
	adds r0, r5, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	bl sub_0801A61C
	b _08031584
	.align 2, 0
_0803156C: .4byte gUnknown_02001004
_08031570: .4byte 0x0000FFFF
_08031574: .4byte gGame
_08031578: .4byte gUnknown_080C2112
_0803157C: .4byte 0x00009D10
_08031580:
	bl sub_0801A5EC
_08031584:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r0, sp
	ldrh r0, [r0]
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov r0, sp
	movs r6, #0
	ldrsh r1, [r0, r6]
	adds r0, r2, #0
	subs r0, #0xf0
	cmp r1, r0
	blt _080315C4
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	bgt _080315C4
	adds r0, r3, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080315BC
	ands r4, r1
	orrs r4, r0
	ldr r0, _080315C0
	mov r8, r0
	b _080315F4
	.align 2, 0
_080315BC: .4byte 0xFFFF0000
_080315C0: .4byte gGame
_080315C4:
	mov r0, sp
	ldrh r0, [r0]
	subs r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080315DC
	ands r4, r1
	orrs r4, r0
	ldr r1, _080315E0
	mov r8, r1
	b _080315F4
	.align 2, 0
_080315DC: .4byte 0xFFFF0000
_080315E0: .4byte gGame
_080315E4:
	mov r0, sp
	ldrh r0, [r0]
	subs r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08031618
	ands r4, r1
	orrs r4, r0
_080315F4:
	mov r3, r8
	ldrb r0, [r3, #0x11]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08031678
	ldrb r0, [r7]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0803161C
	adds r0, r5, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	bl sub_0801A638
	b _08031620
	.align 2, 0
_08031618: .4byte 0xFFFF0000
_0803161C:
	bl sub_0801A604
_08031620:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r1, sp
	ldrh r0, [r1, #2]
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r6, #2
	ldrsh r1, [r1, r6]
	adds r0, r2, #0
	subs r0, #0xa0
	cmp r1, r0
	blt _08031658
	asrs r0, r4, #0x10
	cmp r0, #0x9f
	bgt _08031658
	adds r0, r3, r0
	lsls r0, r0, #0x10
	ldr r1, _08031650
	ands r4, r1
	orrs r4, r0
	ldr r0, _08031654
	mov r8, r0
	b _08031688
	.align 2, 0
_08031650: .4byte 0x0000FFFF
_08031654: .4byte gGame
_08031658:
	asrs r1, r4, #0x10
	mov r0, sp
	ldrh r0, [r0, #2]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, _08031670
	ands r4, r0
	orrs r4, r1
	ldr r1, _08031674
	mov r8, r1
	b _08031688
	.align 2, 0
_08031670: .4byte 0x0000FFFF
_08031674: .4byte gGame
_08031678:
	asrs r1, r4, #0x10
	mov r0, sp
	ldrh r0, [r0, #2]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, _080316FC
	ands r4, r0
	orrs r4, r1
_08031688:
	mov r2, r8
	ldr r3, _08031700
	adds r0, r2, r3
	ldrh r0, [r0]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08031704
	ands r4, r1
	orrs r4, r0
	ldr r6, _08031708
	adds r2, r2, r6
	asrs r0, r4, #0x10
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	ldr r6, _080316FC
	ands r4, r6
	orrs r4, r0
	adds r0, r5, #0
	adds r0, #0xae
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _080316CA
	adds r0, r5, #0
	bl sub_08034A10
	asrs r1, r4, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	ands r4, r6
	orrs r4, r0
_080316CA:
	ldrb r0, [r7]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08031710
	adds r0, r5, #0
	adds r0, #0xa2
	ldrh r0, [r0]
	cmp r0, #0
	beq _08031710
	ldr r0, _0803170C
	add r0, r8
	ldr r0, [r0]
	lsrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08031710
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	asrs r2, r4, #0x10
	adds r0, r5, #0
	bl sub_0803253C
	b _0803171C
	.align 2, 0
_080316FC: .4byte 0x0000FFFF
_08031700: .4byte 0x000067A8
_08031704: .4byte 0xFFFF0000
_08031708: .4byte 0x000067AA
_0803170C: .4byte 0x00009D10
_08031710:
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	asrs r2, r4, #0x10
	adds r0, r5, #0
	bl sub_0803253C
_0803171C:
	movs r0, #0
	strh r0, [r5, #4]
	strh r0, [r5, #6]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
