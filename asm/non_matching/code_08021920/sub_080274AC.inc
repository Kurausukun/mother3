	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x110
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r4, #0x80
	lsls r4, r4, #3
	adds r0, r4, #0
	bl sub_0803B800
	mov sb, r0
	ldr r7, _08027504
	adds r0, r7, #0
	mov r1, sb
	adds r2, r4, #0
	bl sub_08001B18
	ldr r6, _08027508
	adds r0, r6, #0
	add r1, sp, #0x10
	movs r2, #0x80
	bl sub_08001B18
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r6, r1
	add r4, sp, #0x90
	adds r1, r4, #0
	movs r2, #0x80
	bl sub_08001B18
	cmp r5, #1
	beq _0802752C
	cmp r5, #1
	bgt _0802750C
	cmp r5, #0
	beq _08027512
	b _08027584
	.align 2, 0
_08027504: .4byte gUnknown_03005314
_08027508: .4byte gUnknown_0200F208
_0802750C:
	cmp r5, #2
	beq _08027558
	b _08027584
_08027512:
	ldr r2, _08027524
	adds r0, r6, r2
	strb r5, [r0]
	ldr r3, _08027528
	adds r1, r6, r3
	movs r0, #0x20
	strb r0, [r1]
	b _080275C4
	.align 2, 0
_08027524: .4byte 0xFFFFEDA6
_08027528: .4byte 0xFFFFEDA7
_0802752C:
	ldr r0, _08027550
	adds r1, r6, r0
	movs r0, #0
	strb r0, [r1]
	ldr r2, _08027554
	adds r1, r6, r2
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x80
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r7, r3
	movs r2, #0xc0
	lsls r2, r2, #1
	bl sub_08001B18
	b _080275C4
	.align 2, 0
_08027550: .4byte 0xFFFFEDA6
_08027554: .4byte 0xFFFFEDA7
_08027558:
	ldr r1, _08027578
	adds r0, r6, r1
	movs r1, #0x10
	strb r1, [r0]
	ldr r2, _0802757C
	adds r0, r6, r2
	strb r1, [r0]
	ldr r3, _08027580
	adds r0, r6, r3
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r7, #0
	bl sub_08001B18
	b _080275C4
	.align 2, 0
_08027578: .4byte 0xFFFFEDA6
_0802757C: .4byte 0xFFFFEDA7
_08027580: .4byte 0xFFFFFE80
_08027584:
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	beq _0802759C
	ldr r2, _08027598
	movs r1, #0xf
	adds r0, r5, #0
	ands r0, r1
	b _080275B6
	.align 2, 0
_08027598: .4byte gGame
_0802759C:
	movs r0, #0x40
	ands r0, r5
	cmp r0, #0
	bne _080275AC
	mov r0, sb
	bl sub_0803B860
	b _08027650
_080275AC:
	ldr r2, _08027660
	movs r1, #0xf
	adds r0, r5, #0
	ands r0, r1
	adds r0, #0x10
_080275B6:
	ldr r3, _08027664
	adds r1, r2, r3
	strb r0, [r1]
	ldr r0, _08027668
	adds r2, r2, r0
	movs r0, #1
	strb r0, [r2]
_080275C4:
	ldr r4, _0802766C
	ldr r1, _08027670
	adds r1, r1, r4
	mov r8, r1
	mov r2, sl
	str r2, [sp]
	ldrh r0, [r4, #0x24]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x26]
	str r0, [sp, #8]
	ldrh r0, [r4, #0x28]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_080031F0
	adds r5, r4, #0
	adds r5, #0x2c
	ldrb r0, [r5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r5]
	movs r0, #0
	strh r0, [r4, #0x12]
	movs r0, #1
	strh r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	adds r0, #1
	ldrb r2, [r0]
	adds r0, r4, #0
	movs r3, #1
	bl sub_08016F68
	ldrb r1, [r5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	ldr r5, _08027674
	movs r6, #0x80
	lsls r6, r6, #3
	adds r0, r5, #0
	mov r1, r8
	adds r2, r6, #0
	bl sub_08001B18
	ldr r3, _08027678
	adds r1, r4, r3
	add r0, sp, #0x10
	movs r2, #0x80
	bl sub_08001B18
	ldr r0, _0802767C
	adds r4, r4, r0
	add r0, sp, #0x90
	adds r1, r4, #0
	movs r2, #0x80
	bl sub_08001B18
	mov r0, sb
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08001B18
	mov r0, sb
	bl sub_0803B860
_08027650:
	add sp, #0x110
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027660: .4byte gGame
_08027664: .4byte 0x000083AE
_08027668: .4byte 0x000083AF
_0802766C: .4byte gUnknown_0200DF84
_08027670: .4byte 0x00001104
_08027674: .4byte gUnknown_03005314
_08027678: .4byte 0x00001284
_0802767C: .4byte 0x00001484
	.syntax divided
