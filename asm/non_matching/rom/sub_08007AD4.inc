	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r6, _08007C68
	ldr r0, _08007C6C
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	mov ip, r1
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08007C70
	adds r1, r6, r0
	ldr r0, _08007C74
	str r0, [r1]
	ldr r1, _08007C78
	adds r0, r6, r1
	movs r1, #0
	mov sb, r1
	mov r1, sb
	strh r1, [r0]
	ldr r7, _08007C7C
	ldr r0, _08007C80
	adds r1, r7, r0
	movs r3, #5
	rsbs r3, r3, #0
	movs r4, #9
	rsbs r4, r4, #0
	movs r5, #0x11
	rsbs r5, r5, #0
	movs r0, #0x21
	rsbs r0, r0, #0
	mov r8, r0
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08007C84
	adds r2, r7, r1
	ldrb r1, [r2]
	subs r0, #2
	ands r0, r1
	mov r1, ip
	ands r0, r1
	ands r0, r3
	ands r0, r4
	ands r0, r5
	mov r1, r8
	ands r0, r1
	strb r0, [r2]
	bl sub_08000D54
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #1
	mov sl, r1
	mov r1, sl
	ands r0, r1
	lsls r0, r0, #3
	ldrb r1, [r6, #3]
	ands r4, r1
	orrs r4, r0
	mov r0, r8
	ands r4, r0
	strb r4, [r6, #3]
	ldr r1, _08007C88
	adds r5, r7, r1
	mov r0, sb
	str r0, [r5]
	ldr r1, _08007C8C
	adds r0, r6, r1
	movs r1, #0
	strb r1, [r0]
	adds r0, r7, #0
	bl sub_080013D0
	adds r4, r7, #0
	adds r4, #0x50
	adds r0, r4, #0
	bl sub_08001454
	ldr r1, _08007C90
	adds r0, r7, r1
	movs r1, #0
	bl sub_08001630
	adds r0, r7, #0
	bl sub_08007CC0
	adds r0, r4, #0
	bl sub_08007D18
	bl sub_0803B5C4
	ldr r0, _08007C94
	movs r1, #0x90
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r1, r1, #6
	ldrb r2, [r6, #8]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #8]
	bl sub_08024874
	bl sub_0800FDA8
	bl sub_08028020
	bl sub_0802BB64
	ldr r1, _08007C98
	adds r0, r7, r1
	bl sub_08009E18
	ldr r1, _08007C9C
	adds r0, r7, r1
	bl sub_0800AF44
	ldr r1, _08007CA0
	adds r0, r7, r1
	bl sub_0800AF44
	ldr r1, _08007CA4
	adds r0, r6, r1
	bl sub_0800AFC0
	ldr r1, _08007CA8
	adds r0, r7, r1
	bl sub_08037608
	ldr r1, _08007CAC
	adds r0, r7, r1
	bl sub_08039B88
	bl sub_08032EDC
	bl sub_08032F5C
	ldrb r0, [r5]
	mov r1, sl
	orrs r0, r1
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
	ble _08007C14
	movs r3, #1
_08007C14:
	ldr r0, _08007CB0
	adds r2, r7, r0
	mov r1, sl
	ands r3, r1
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_080062F0
	ldr r0, _08007CB4
	ldrb r0, [r0]
	cmp r0, #1
	bne _08007C46
	ldr r0, _08007CB8
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_0803D06C
_08007C46:
	ldr r1, _08007CBC
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08007C58
	movs r0, #3
	bl sub_0801B5E8
_08007C58:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007C68: .4byte gGame
_08007C6C: .4byte 0x00009D14
_08007C70: .4byte 0x00009D08
_08007C74: .4byte 0x06010000
_08007C78: .4byte 0x00009D0C
_08007C7C: .4byte gSomeBlend
_08007C80: .4byte 0x0001ED10
_08007C84: .4byte 0x0001ED11
_08007C88: .4byte 0x000121B8
_08007C8C: .4byte 0x0000595B
_08007C90: .4byte 0x00002CA0
_08007C94: .4byte gSave
_08007C98: .4byte 0x00005778
_08007C9C: .4byte 0x00011C94
_08007CA0: .4byte 0x00011D18
_08007CA4: .4byte 0x00009484
_08007CA8: .4byte 0x00002CB0
_08007CAC: .4byte 0x000035BC
_08007CB0: .4byte 0x000121B9
_08007CB4: .4byte gUnknown_02005080
_08007CB8: .4byte gUnknown_020050C0
_08007CBC: .4byte 0x00008494
	.syntax divided
