	.syntax unified
sub_08007760:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r6, _080078B8
	ldr r1, _080078BC
	adds r0, r6, r1
	movs r2, #0
	str r2, [r0]
	ldr r0, _080078C0
	adds r1, r6, r0
	ldr r0, _080078C4
	str r0, [r1]
	ldr r1, _080078C8
	adds r0, r6, r1
	strh r2, [r0]
	ldrb r1, [r6, #1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	subs r2, #3
	mov sl, r2
	ands r0, r2
	movs r1, #5
	rsbs r1, r1, #0
	mov sb, r1
	ands r0, r1
	strb r0, [r6, #1]
	movs r0, #0x1a
	bl get_flag
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r4, #1
	ands r0, r4
	lsls r0, r0, #3
	ldrb r2, [r6, #1]
	movs r1, #9
	rsbs r1, r1, #0
	mov r8, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r6, #1]
	movs r0, #0x1b
	bl get_flag
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r0, r4
	lsls r0, r0, #4
	ldrb r2, [r6, #1]
	movs r7, #0x11
	rsbs r7, r7, #0
	adds r1, r7, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6, #1]
	ldr r0, _080078CC
	bl get_flag
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r0, r4
	lsls r0, r0, #5
	ldrb r2, [r6, #1]
	movs r5, #0x21
	rsbs r5, r5, #0
	adds r1, r5, #0
	ands r1, r2
	orrs r1, r0
	movs r4, #0x41
	rsbs r4, r4, #0
	ands r1, r4
	strb r1, [r6, #1]
	movs r0, #0x18
	bl get_shop_flag
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #0xf
	ldr r1, [r6]
	ldr r2, _080078D0
	ands r1, r2
	orrs r1, r0
	str r1, [r6]
	ldrb r1, [r6, #2]
	mov r0, r8
	ands r0, r1
	ldrb r2, [r6, #3]
	adds r1, r4, #0
	ands r1, r2
	ands r0, r7
	ands r0, r5
	ands r0, r4
	strb r0, [r6, #2]
	ands r1, r5
	strb r1, [r6, #3]
	ldr r2, _080078D4
	adds r4, r6, r2
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08007844
	ldrh r1, [r6, #2]
	ldr r0, _080078D8
	ands r0, r1
	strh r0, [r6, #2]
_08007844:
	ldr r3, _080078DC
	ldr r0, _080078E0
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, sl
	ands r0, r1
	mov r1, sb
	ands r0, r1
	mov r1, r8
	ands r0, r1
	ands r0, r7
	ands r0, r5
	strb r0, [r2]
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	adds r5, r3, #0
	cmp r0, #0
	beq _080078EC
	ldrb r0, [r6, #3]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _080078EC
	adds r0, r5, #0
	bl sub_080013D0
	ldr r2, _080078E4
	adds r0, r5, r2
	ldrh r0, [r0]
	ldrh r1, [r5, #0x1a]
	strh r0, [r5, #0x1a]
	ldrh r0, [r5, #0x22]
	movs r0, #1
	strh r0, [r5, #0x22]
	ldrh r0, [r5, #0x24]
	movs r0, #0x21
	strh r0, [r5, #0x24]
	adds r4, r5, #0
	adds r4, #0x50
	adds r0, r4, #0
	bl sub_08001454
	ldr r1, _080078E8
	adds r0, r5, r1
	movs r1, #0
	bl resetInputState
	adds r0, r5, #0
	bl sub_08007CC0
	adds r0, r4, #0
	bl sub_08007D18
	bl sub_0803B5C4
	b _08007916
	.align 2, 0
_080078B8: .4byte gGame
_080078BC: .4byte 0x00009D10
_080078C0: .4byte 0x00009D08
_080078C4: .4byte 0x06010000
_080078C8: .4byte 0x00009D0C
_080078CC: .4byte 0x0000036E
_080078D0: .4byte 0xFFF87FFF
_080078D4: .4byte 0x00008494
_080078D8: .4byte 0xFFFFF87F
_080078DC: .4byte gSomeBlend
_080078E0: .4byte 0x0001ED10
_080078E4: .4byte 0x00005676
_080078E8: .4byte 0x00002CA0
_080078EC:
	adds r0, r5, #0
	bl sub_080013D0
	adds r4, r5, #0
	adds r4, #0x50
	adds r0, r4, #0
	bl sub_08001454
	ldr r2, _08007A38
	adds r0, r5, r2
	movs r1, #0
	bl resetInputState
	adds r0, r5, #0
	bl sub_08007CC0
	adds r0, r4, #0
	bl sub_08007D18
	bl sub_0803B5C4
_08007916:
	ldr r6, _08007A3C
	ldr r0, _08007A40
	adds r0, r0, r6
	mov r8, r0
	mov r1, sp
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_08024744
	bl sub_0800FCE8
	bl sub_08027FD8
	bl sub_0802BBC8
	ldr r4, _08007A44
	adds r0, r4, #0
	bl sub_08009E18
	ldr r2, _08007A48
	adds r0, r4, r2
	bl sub_0800AF44
	ldr r1, _08007A4C
	adds r0, r4, r1
	bl sub_0800AF44
	ldr r2, _08007A50
	adds r0, r6, r2
	bl sub_0800AFC0
	ldr r1, _08007A54
	adds r0, r4, r1
	bl sub_08037608
	ldr r2, _08007A58
	adds r0, r4, r2
	bl sub_08039B88
	bl sub_08032EDC
	bl sub_08032F5C
	ldr r0, _08007A5C
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
	ble _0800798E
	movs r3, #1
_0800798E:
	ldr r1, _08007A60
	adds r2, r4, r1
	ands r3, r7
	ldrb r1, [r2]
	movs r4, #2
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_080062F0
	ldrb r0, [r6, #1]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _080079C0
	mov r2, r8
	ldrh r0, [r2]
	cmp r0, #0xcd
	bne _080079C0
	ldrb r1, [r6, #0xf]
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r6, #0xf]
_080079C0:
	ldr r5, _08007A3C
	ldr r1, _08007A64
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08007A88
	ldrb r0, [r5, #3]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _08007A88
	ldr r4, _08007A68
	adds r0, r4, #0
	movs r1, #2
	bl sub_08007CE8
	ldr r0, _08007A6C
	adds r2, r5, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08007A70
	adds r0, r5, r1
	ldrh r1, [r0]
	movs r1, #0
	strh r1, [r0]
	ldr r2, _08007A74
	adds r0, r5, r2
	ldrh r2, [r0]
	strh r1, [r0]
	ldr r2, _08007A78
	adds r0, r5, r2
	ldrh r2, [r0]
	strh r1, [r0]
	ldrh r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r2, [r4, #8]
	orrs r0, r1
	strh r0, [r4, #8]
	ldr r1, _08007A7C
	adds r0, r4, r1
	ldrh r0, [r0]
	ldrh r1, [r4, #0x1a]
	strh r0, [r4, #0x1a]
	ldr r2, _08007A80
	adds r4, r4, r2
	adds r0, r4, #0
	movs r1, #0xe
	movs r2, #0x40
	bl sub_08016F4C
	ldr r1, _08007A84
	adds r0, r4, #0
	movs r2, #0x40
	bl CpuSmartSet
	b _08007A94
	.align 2, 0
_08007A38: .4byte 0x00002CA0
_08007A3C: .4byte gGame
_08007A40: .4byte 0x000067AC
_08007A44: .4byte gUnknown_0201B7A0
_08007A48: .4byte 0x0000C51C
_08007A4C: .4byte 0x0000C5A0
_08007A50: .4byte 0x00009484
_08007A54: .4byte 0xFFFFD538
_08007A58: .4byte 0xFFFFDE44
_08007A5C: .4byte 0x0000CA40
_08007A60: .4byte 0x0000CA41
_08007A64: .4byte 0x00008494
_08007A68: .4byte gSomeBlend
_08007A6C: .4byte 0x000058E5
_08007A70: .4byte 0x0000679C
_08007A74: .4byte 0x0000679E
_08007A78: .4byte 0x000067A0
_08007A7C: .4byte 0x00005676
_08007A80: .4byte 0x000131D0
_08007A84: .4byte gUnknown_030054D4
_08007A88:
	ldr r2, _08007AC8
	ldrb r1, [r2, #3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #3]
_08007A94:
	ldr r4, _08007AC8
	ldr r1, _08007ACC
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08007AB6
	movs r0, #2
	bl sub_0801B5E8
	ldr r2, _08007AD0
	adds r0, r4, r2
	ldrh r0, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	bl setup_overworld_music
_08007AB6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007AC8: .4byte gGame
_08007ACC: .4byte 0x00008494
_08007AD0: .4byte 0x000067AC
	.syntax divided
