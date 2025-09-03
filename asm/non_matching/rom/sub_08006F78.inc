	.syntax unified
sub_08006F78:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	mov r1, sp
	ldr r0, _08006FBC
	ldrh r0, [r0]
	strh r0, [r1]
	mov r0, sp
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08007070
	ldr r3, _08006FC0
	ldr r0, _08006FC4
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08006FCC
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08006FC8
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #0x80
	bl memclear
	b _08007240
	.align 2, 0
_08006FBC: .4byte 0x04000200
_08006FC0: .4byte gSomeBlend
_08006FC4: .4byte 0x00005548
_08006FC8: .4byte 0x000053B4
_08006FCC:
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r4, r6, r2
	ldr r1, _0800705C
	adds r0, r6, r1
	ldrb r5, [r0]
	cmp r5, #0
	beq _08007006
_08006FDC:
	adds r0, r4, #0
	adds r0, #8
	ldr r1, [r4]
	movs r2, #0x60
	bl sub_08001B18
	adds r0, r4, #0
	adds r0, #0x68
	ldr r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0x60
	bl sub_08001B18
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #0xcc
	cmp r5, #0
	bne _08006FDC
_08007006:
	ldr r1, _0800705C
	adds r0, r6, r1
	movs r2, #0
	mov r8, r2
	mov r1, r8
	strb r1, [r0]
	ldr r2, _08007060
	adds r7, r6, r2
	ldrb r0, [r7]
	cmp r0, #0
	beq _08007042
	ldr r4, _08007064
	ldr r0, _08007068
	adds r5, r4, r0
	ldr r1, [r5]
	adds r0, r4, #0
	movs r2, #0x3c
	bl sub_08001B18
	adds r0, r4, #0
	adds r0, #0x40
	ldr r1, [r5]
	adds r1, #0x40
	movs r2, #0x3c
	bl sub_08001B18
	adds r0, r4, #0
	movs r1, #0x80
	bl memclear
_08007042:
	ldr r2, _0800706C
	adds r1, r6, r2
	ldr r0, [r1]
	ldrb r0, [r0, #9]
	strb r0, [r7]
	ldr r0, [r1]
	mov r1, r8
	strb r1, [r0, #9]
	adds r0, r6, #0
	movs r1, #0
	bl sub_08009E38
	b _08007210
	.align 2, 0
_0800705C: .4byte 0x0000C513
_08007060: .4byte 0x0000C516
_08007064: .4byte gUnknown_02016078
_08007068: .4byte 0x00005364
_0800706C: .4byte 0x0000C1E8
_08007070:
	ldr r3, _080070A0
	ldr r0, _080070A4
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080070C2
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _080070A8
	ldrb r0, [r0]
	cmp r0, #3
	bne _080070B0
	ldr r1, _080070AC
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #0x80
	bl sub_080019DC
	b _08007240
	.align 2, 0
_080070A0: .4byte gSomeBlend
_080070A4: .4byte 0x00005548
_080070A8: .4byte gGame
_080070AC: .4byte 0x000053B4
_080070B0:
	cmp r0, #3
	blt _080070C2
	cmp r0, #5
	bgt _080070C2
	ldr r0, _080070D4
	movs r1, #0x80
	lsls r1, r1, #4
	bl sub_080019DC
_080070C2:
	ldr r0, _080070D8
	ldrb r0, [r0]
	cmp r0, #5
	bgt _080070E0
	cmp r0, #4
	blt _080070E0
	ldr r2, _080070DC
	adds r4, r6, r2
	b _080070E6
	.align 2, 0
_080070D4: .4byte 0x06006000
_080070D8: .4byte gGame
_080070DC: .4byte 0x00003670
_080070E0:
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r4, r6, r0
_080070E6:
	ldr r1, _08007134
	adds r0, r6, r1
	ldrb r5, [r0]
	cmp r5, #0
	beq _0800711A
_080070F0:
	adds r0, r4, #0
	adds r0, #8
	ldr r1, [r4]
	movs r2, #0x60
	bl sub_08001A14
	adds r0, r4, #0
	adds r0, #0x68
	ldr r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0x60
	bl sub_08001A14
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #0xcc
	cmp r5, #0
	bne _080070F0
_0800711A:
	ldr r1, _08007134
	adds r0, r6, r1
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08007138
	ldrb r0, [r0]
	cmp r0, #4
	beq _08007174
	cmp r0, #4
	bgt _0800713C
	cmp r0, #3
	beq _08007142
	b _080071E0
	.align 2, 0
_08007134: .4byte 0x0000C513
_08007138: .4byte gGame
_0800713C:
	cmp r0, #5
	beq _080071B8
	b _080071E0
_08007142:
	ldr r2, _08007168
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080071E0
	ldr r4, _0800716C
	ldr r1, _08007170
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0x1e
	movs r3, #2
	bl sub_08007318
	adds r0, r4, #0
	movs r1, #0x80
	bl sub_080019DC
	b _080071E0
	.align 2, 0
_08007168: .4byte 0x0000C516
_0800716C: .4byte gUnknown_02016078
_08007170: .4byte 0x00005364
_08007174:
	ldr r2, _080071A8
	adds r0, r6, r2
	ldr r0, [r0]
	ldrb r0, [r0, #9]
	cmp r0, #0
	beq _080071E0
	ldr r4, _080071AC
	ldr r1, _080071B0
	adds r0, r4, r1
	ldr r1, [r0]
	ldr r2, _080071B4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r3, r3, #0x11
	lsrs r3, r3, #0x10
	adds r0, r4, #0
	movs r2, #0x1e
	bl sub_08007318
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r4, #0
	bl sub_080019DC
	b _080071E0
	.align 2, 0
_080071A8: .4byte 0x0000C1E8
_080071AC: .4byte gUnknown_02016078
_080071B0: .4byte 0x00005364
_080071B4: .4byte 0x0000535A
_080071B8:
	ldr r1, _08007224
	adds r0, r6, r1
	ldr r0, [r0]
	ldrb r0, [r0, #9]
	cmp r0, #0
	beq _080071E0
	ldr r4, _08007228
	ldr r2, _0800722C
	adds r0, r4, r2
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0x1e
	movs r3, #0x14
	bl sub_08007318
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r4, #0
	bl sub_080019DC
_080071E0:
	ldr r0, _08007224
	adds r3, r6, r0
	ldr r0, [r3]
	ldrb r1, [r0, #9]
	ldr r2, _08007230
	adds r0, r6, r2
	movs r2, #0
	strb r1, [r0]
	ldr r0, [r3]
	strb r2, [r0, #9]
	adds r0, r6, #0
	movs r1, #1
	bl sub_08009E38
	ldr r0, _08007234
	ldrb r0, [r0]
	cmp r0, #5
	bgt _08007210
	cmp r0, #4
	blt _08007210
	adds r0, r6, #0
	movs r1, #1
	bl sub_08009F10
_08007210:
	ldr r0, _08007224
	adds r2, r6, r0
	subs r0, #0x18
	adds r1, r6, r0
	ldr r0, [r2]
	cmp r0, r1
	bne _0800723C
	ldr r1, _08007238
	adds r0, r6, r1
	b _0800723E
	.align 2, 0
_08007224: .4byte 0x0000C1E8
_08007228: .4byte gUnknown_02016078
_0800722C: .4byte 0x00005364
_08007230: .4byte 0x0000C516
_08007234: .4byte gGame
_08007238: .4byte 0x0000C1DC
_0800723C:
	adds r0, r1, #0
_0800723E:
	str r0, [r2]
_08007240:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
