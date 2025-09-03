	.syntax unified
sub_08007398:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r7, _08007534
	ldr r0, _08007538
	adds r3, r7, r0
	ldrb r1, [r3]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r1
	movs r5, #3
	rsbs r5, r5, #0
	ands r0, r5
	strb r0, [r3]
	ldr r1, _0800753C
	adds r0, r7, r1
	movs r1, #0
	str r1, [r0]
	ldr r0, _08007540
	adds r1, r7, r0
	ldr r0, _08007544
	str r0, [r1]
	ldr r1, _08007548
	adds r0, r7, r1
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800754C
	mov sl, r0
	ldr r1, _08007550
	add r1, sl
	movs r6, #5
	rsbs r6, r6, #0
	movs r4, #9
	rsbs r4, r4, #0
	movs r0, #0x21
	rsbs r0, r0, #0
	mov r8, r0
	subs r0, #0x20
	mov sb, r0
	movs r0, #0
	strb r0, [r1]
	ldr r3, _08007554
	add r3, sl
	ldrb r1, [r3]
	adds r0, r2, #0
	ands r0, r1
	ands r0, r5
	ands r0, r6
	ands r0, r4
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	mov r1, r8
	ands r0, r1
	strb r0, [r3]
	movs r0, #0
	strb r0, [r7]
	ldrb r0, [r7, #1]
	ands r2, r0
	ands r2, r5
	ands r2, r6
	strb r2, [r7, #1]
	movs r0, #0x1a
	bl get_flag
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r5, #1
	ands r0, r5
	lsls r0, r0, #3
	ldrb r2, [r7, #1]
	adds r1, r4, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r7, #1]
	movs r0, #0x1b
	bl get_flag
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r0, r5
	lsls r0, r0, #4
	ldrb r2, [r7, #1]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r7, #1]
	ldr r0, _08007558
	bl get_flag
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r0, r5
	lsls r0, r0, #5
	ldrb r2, [r7, #1]
	mov r1, r8
	ands r1, r2
	orrs r1, r0
	mov r2, sb
	ands r1, r2
	strb r1, [r7, #1]
	movs r0, #0x18
	bl sub_08002998
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #0xf
	ldr r1, [r7]
	ldr r2, _0800755C
	ands r1, r2
	orrs r1, r0
	str r1, [r7]
	ldrb r0, [r7, #2]
	adds r1, r4, #0
	ands r1, r0
	ldrb r2, [r7, #3]
	mov r0, sb
	ands r0, r2
	strb r0, [r7, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r1, r0
	mov r2, r8
	ands r1, r2
	mov r0, sb
	ands r1, r0
	strb r1, [r7, #2]
	bl sub_08000D54
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r0, r5
	lsls r0, r0, #3
	ldrb r1, [r7, #3]
	ands r4, r1
	orrs r4, r0
	mov r1, r8
	ands r4, r1
	strb r4, [r7, #3]
	ldr r2, _08007560
	adds r0, r7, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _080074CE
	ldrh r1, [r7, #2]
	ldr r0, _08007564
	ands r0, r1
	strh r0, [r7, #2]
_080074CE:
	ldr r0, _08007568
	add r0, sl
	movs r1, #0
	str r1, [r0]
	ldr r2, _0800756C
	adds r1, r7, r2
	ldrb r0, [r1]
	cmp r0, #1
	beq _080074E4
	movs r0, #0
	strb r0, [r1]
_080074E4:
	mov r0, sl
	bl sub_080013D0
	mov r4, sl
	adds r4, #0x50
	adds r0, r4, #0
	bl sub_08001454
	ldr r0, _08007570
	add r0, sl
	movs r1, #0
	bl sub_08001630
	mov r0, sl
	bl sub_08007CC0
	adds r0, r4, #0
	bl sub_08007D18
	bl sub_0803B5C4
	adds r0, r7, #0
	adds r0, #8
	bl sub_08007DEC
	ldr r0, _08007574
	ldrb r0, [r0]
	cmp r0, #7
	bgt _08007584
	cmp r0, #6
	blt _08007584
	ldr r1, _08007578
	adds r0, r7, r1
	ldr r1, _0800757C
	strh r1, [r0]
	ldr r2, _08007580
	adds r0, r7, r2
	movs r1, #0
	strh r1, [r0]
	b _0800773C
	.align 2, 0
_08007534: .4byte gGame
_08007538: .4byte 0x00009D14
_0800753C: .4byte 0x00009D10
_08007540: .4byte 0x00009D08
_08007544: .4byte 0x06010000
_08007548: .4byte 0x00009D0C
_0800754C: .4byte gSomeBlend
_08007550: .4byte 0x0001ED10
_08007554: .4byte 0x0001ED11
_08007558: .4byte 0x0000036E
_0800755C: .4byte 0xFFF87FFF
_08007560: .4byte 0x00008494
_08007564: .4byte 0xFFFFF87F
_08007568: .4byte 0x000121B8
_0800756C: .4byte 0x0000595B
_08007570: .4byte 0x00002CA0
_08007574: .4byte gUnknown_02005080
_08007578: .4byte 0x000082AC
_0800757C: .4byte 0x0000FFFF
_08007580: .4byte 0x000082B4
_08007584:
	ldr r6, _080076A0
	ldr r2, _080076A4
	movs r1, #0x90
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r1, r1, #6
	ldrb r3, [r6, #8]
	movs r0, #0x3f
	ands r0, r3
	orrs r0, r1
	strb r0, [r6, #8]
	movs r0, #0x88
	lsls r0, r0, #2
	adds r2, r2, r0
	ldrh r1, [r2]
	ldr r2, _080076A8
	adds r0, r6, r2
	strh r1, [r0]
	ldr r0, _080076AC
	mov r8, r0
	ldrb r0, [r0]
	cmp r0, #2
	bne _080075C2
	ldr r1, _080076B0
	adds r2, r6, r1
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_080075C2:
	bl sub_0802462C
	bl sub_0800FC00
	bl sub_08027FB8
	bl sub_0802BB64
	ldr r4, _080076B4
	adds r0, r4, #0
	bl sub_08009E18
	ldr r2, _080076B8
	adds r0, r4, r2
	bl sub_0800AF44
	ldr r1, _080076BC
	adds r0, r4, r1
	bl sub_0800AF44
	ldr r2, _080076C0
	adds r0, r6, r2
	bl sub_0800AFC0
	ldr r1, _080076C4
	adds r0, r4, r1
	bl sub_08037608
	ldr r2, _080076C8
	adds r0, r4, r2
	bl sub_08039B88
	bl sub_08032EDC
	bl sub_08032F5C
	ldr r0, _080076CC
	adds r5, r4, r0
	ldrb r0, [r5]
	movs r7, #1
	orrs r0, r7
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r5]
	movs r3, #0
	ldr r0, [r6]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	cmp r0, #0
	ble _0800762C
	movs r3, #1
_0800762C:
	ldr r1, _080076D0
	adds r2, r4, r1
	ands r3, r7
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_080062F0
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #5
	bgt _08007654
	cmp r0, #3
	blt _08007654
	bl sub_0803D0A8
_08007654:
	ldr r1, _080076A0
	ldrb r0, [r1, #1]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _08007682
	ldr r2, _080076A8
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #0xca
	bne _08007682
	ldr r4, _080076D4
	ldr r0, _080076D8
	adds r1, r1, r0
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_08001B18
	adds r0, r4, #0
	adds r1, r5, #0
	bl memclear
_08007682:
	ldr r0, _080076AC
	ldrb r0, [r0]
	cmp r0, #3
	bne _08007720
	ldr r1, _080076DC
	ldrb r0, [r1]
	cmp r0, #1
	bne _08007720
	ldrh r0, [r1, #0xa]
	cmp r0, #0x39
	beq _080076E0
	cmp r0, #0x3a
	beq _08007708
	b _08007720
	.align 2, 0
_080076A0: .4byte gGame
_080076A4: .4byte gSave
_080076A8: .4byte 0x000067AC
_080076AC: .4byte gUnknown_02005080
_080076B0: .4byte 0x00008494
_080076B4: .4byte gUnknown_0201B7A0
_080076B8: .4byte 0x0000C51C
_080076BC: .4byte 0x0000C5A0
_080076C0: .4byte 0x00009484
_080076C4: .4byte 0xFFFFD538
_080076C8: .4byte 0xFFFFDE44
_080076CC: .4byte 0x0000CA40
_080076D0: .4byte 0x0000CA41
_080076D4: .4byte gUnknown_03005314
_080076D8: .4byte 0x00009488
_080076DC: .4byte gEncounter
_080076E0:
	ldr r5, _08007700
	ldr r1, _08007704
	movs r4, #0x80
	lsls r4, r4, #3
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08001B18
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08001B54
	b _08007720
	.align 2, 0
_08007700: .4byte gUnknown_03005314
_08007704: .4byte gUnknown_0200F088
_08007708:
	ldr r4, _0800774C
	ldr r1, _08007750
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_08001B18
	adds r0, r4, #0
	adds r1, r5, #0
	bl memclear
_08007720:
	ldr r0, _08007754
	ldr r1, _08007758
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08007736
	ldr r0, _0800775C
	ldrb r0, [r0]
	cmp r0, #4
	bne _0800773C
_08007736:
	movs r0, #2
	bl sub_0801B5E8
_0800773C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800774C: .4byte gUnknown_03005314
_08007750: .4byte gUnknown_0200F088
_08007754: .4byte gGame
_08007758: .4byte 0x00008494
_0800775C: .4byte gUnknown_02005080
	.syntax divided
