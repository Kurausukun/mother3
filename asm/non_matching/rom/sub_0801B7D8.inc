	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r2, _0801B7F0
	ldr r0, _0801B7F4
	adds r3, r2, r0
	ldrh r0, [r3]
	adds r1, r0, #0
	cmp r1, #0
	beq _0801B7F8
	subs r0, #1
	strh r0, [r3]
	b _0801B972
	.align 2, 0
_0801B7F0: .4byte gGame
_0801B7F4: .4byte 0x0000947A
_0801B7F8:
	mov r0, sp
	strh r1, [r0]
	ldr r1, _0801B81C
	adds r0, r2, r1
	ldrh r0, [r0]
	cmp r0, #9
	bne _0801B87A
	adds r1, #2
	adds r0, r2, r1
	ldrh r0, [r0]
	subs r0, #6
	cmp r0, #0x10
	bhi _0801B87A
	lsls r0, r0, #2
	ldr r1, _0801B820
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801B81C: .4byte 0x0000845A
_0801B820: .4byte _0801B824
_0801B824:
	.4byte _0801B874
	.4byte _0801B87A
	.4byte _0801B87A
	.4byte _0801B87A
	.4byte _0801B87A
	.4byte _0801B87A
	.4byte _0801B87A
	.4byte _0801B868
	.4byte _0801B87A
	.4byte _0801B87A
	.4byte _0801B87A
	.4byte _0801B87A
	.4byte _0801B868
	.4byte _0801B87A
	.4byte _0801B87A
	.4byte _0801B868
	.4byte _0801B868
_0801B868:
	ldr r0, _0801B8F0
	ldr r2, _0801B8F4
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _0801B87A
_0801B874:
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
_0801B87A:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801B89E
	ldr r4, _0801B8F8
	ldr r1, _0801B8FC
	adds r0, r4, #0
	movs r2, #0xa
	bl sub_08001B18
	ldr r0, _0801B900
	adds r4, r4, r0
	ldr r1, _0801B904
	movs r2, #0xfa
	lsls r2, r2, #4
	adds r0, r4, #0
	bl sub_08001B18
_0801B89E:
	ldr r6, _0801B8F0
	ldr r1, _0801B908
	adds r2, r6, r1
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _0801B90C
	adds r5, r6, r2
	ldrh r0, [r5]
	ldr r1, _0801B910
	adds r4, r6, r1
	strh r0, [r4]
	ldr r2, _0801B914
	adds r0, r6, r2
	ldr r0, [r0]
	ldr r2, _0801B918
	adds r1, r6, r2
	movs r2, #0
	bl exec_cmd
	ldrh r0, [r4]
	strh r0, [r5]
	ldr r1, _0801B91C
	adds r0, r6, r1
	ldrh r0, [r0]
	cmp r0, #9
	bne _0801B94E
	ldr r2, _0801B920
	adds r0, r6, r2
	ldrh r0, [r0]
	cmp r0, #0x12
	beq _0801B92C
	cmp r0, #0x12
	bgt _0801B924
	cmp r0, #0xd
	beq _0801B92C
	b _0801B94E
	.align 2, 0
_0801B8F0: .4byte gGame
_0801B8F4: .4byte 0x00008484
_0801B8F8: .4byte gUnknown_0200F064
_0801B8FC: .4byte gUnknown_02000048
_0801B900: .4byte 0xFFFFF060
_0801B904: .4byte gUnknown_02000058
_0801B908: .4byte 0x00009480
_0801B90C: .4byte 0x00009478
_0801B910: .4byte 0x00009474
_0801B914: .4byte 0x000084B8
_0801B918: .4byte 0x00009476
_0801B91C: .4byte 0x0000845A
_0801B920: .4byte 0x0000845C
_0801B924:
	cmp r0, #0x16
	bgt _0801B94E
	cmp r0, #0x15
	blt _0801B94E
_0801B92C:
	ldr r0, _0801B940
	ldr r1, _0801B944
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0801B948
	mov r1, sp
	movs r0, #1
	b _0801B94C
	.align 2, 0
_0801B940: .4byte gGame
_0801B944: .4byte 0x00008494
_0801B948:
	mov r1, sp
	movs r0, #0
_0801B94C:
	strh r0, [r1]
_0801B94E:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801B972
	ldr r0, _0801B97C
	ldr r4, _0801B980
	adds r1, r4, #0
	movs r2, #0xa
	bl sub_08001B18
	ldr r0, _0801B984
	ldr r2, _0801B988
	adds r4, r4, r2
	movs r2, #0xfa
	lsls r2, r2, #4
	adds r1, r4, #0
	bl sub_08001B18
_0801B972:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801B97C: .4byte gUnknown_02000048
_0801B980: .4byte gUnknown_0200F064
_0801B984: .4byte gUnknown_02000058
_0801B988: .4byte 0xFFFFF060
	.syntax divided
