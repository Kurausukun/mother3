	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	movs r0, #0
	bl get_obj_direct
	mov sb, r0
	mov r2, sb
	adds r2, #0xbf
	ldrb r1, [r2]
	movs r0, #9
	rsbs r0, r0, #0
	mov sl, r0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	strb r0, [r2]
	ldr r2, _0800B1CC
	ldr r0, _0800B1D0
	adds r2, r2, r0
	mov ip, r2
	ldrb r0, [r2]
	movs r5, #2
	rsbs r5, r5, #0
	ands r5, r0
	movs r2, #3
	rsbs r2, r2, #0
	ands r5, r2
	movs r0, #5
	rsbs r0, r0, #0
	ands r5, r0
	mov r2, sl
	ands r5, r2
	mov r0, ip
	strb r5, [r0]
	ldr r3, _0800B1D4
	ldr r0, _0800B1D8
	adds r2, r3, r0
	ldrb r0, [r2]
	ands r1, r0
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #0x7f
	ands r1, r0
	strb r1, [r2]
	mov r2, r8
	ldrb r1, [r2, #0xe]
	movs r7, #1
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0800B0FA
	ldr r1, _0800B1DC
	adds r0, r3, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800B0FA
	ldrh r4, [r2]
	lsls r3, r4, #0x10
	lsrs r0, r3, #0x13
	ands r0, r6
	ands r0, r7
	adds r2, r5, #0
	movs r1, #2
	rsbs r1, r1, #0
	ands r2, r1
	orrs r2, r0
	lsrs r0, r3, #0x12
	ands r0, r6
	ands r0, r7
	lsls r0, r0, #1
	subs r1, #1
	ands r2, r1
	orrs r2, r0
	ldr r1, _0800B1E0
	ands r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	ands r0, r7
	lsls r0, r0, #2
	movs r1, #5
	rsbs r1, r1, #0
	ands r2, r1
	orrs r2, r0
	lsrs r3, r3, #0x18
	ands r3, r6
	ands r3, r7
	lsls r3, r3, #3
	mov r0, sl
	ands r2, r0
	orrs r2, r3
	mov r1, ip
	strb r2, [r1]
	mov r2, r8
	ldrh r1, [r2, #2]
	movs r0, #0xf2
	ands r0, r1
	cmp r0, #0
	beq _0800B0FA
	ldr r1, _0800B1CC
	ldr r2, _0800B1E4
	adds r0, r1, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800B0FA
	bl sub_0803793C
_0800B0FA:
	bl sub_0802B53C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800B1BE
	bl sub_0802B57C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800B1BE
	ldr r0, _0800B1D4
	ldr r1, _0800B1E8
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0xe8
	bne _0800B130
	ldr r2, _0800B1CC
	ldr r0, _0800B1D0
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
_0800B130:
	ldr r0, _0800B1EC
	bl get_flag
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800B156
	ldr r2, _0800B1CC
	ldr r1, _0800B1D0
	adds r2, r2, r1
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #6
	ands r0, r1
	strb r0, [r2]
_0800B156:
	mov r1, sb
	adds r1, #0xca
	ldrb r0, [r1]
	lsls r0, r0, #0x1f
	adds r4, r1, #0
	cmp r0, #0
	beq _0800B180
	subs r1, #0x28
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800B180
	ldrb r0, [r4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r4]
_0800B180:
	ldr r5, _0800B1D4
	ldr r2, _0800B1DC
	adds r1, r5, r2
	ldrh r0, [r1]
	cmp r0, #0
	beq _0800B190
	subs r0, #1
	strh r0, [r1]
_0800B190:
	ldr r1, _0800B1F0
	ldr r2, _0800B1F4
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	mov r0, r8
	bl _call_via_r1
	ldrb r1, [r4]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	ldr r1, _0800B1F8
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800B1BE
	bl sub_0802B5D8
_0800B1BE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B1CC: .4byte gSomeBlend
_0800B1D0: .4byte 0x0001ED10
_0800B1D4: .4byte gGame
_0800B1D8: .4byte 0x000082B7
_0800B1DC: .4byte 0x0000848C
_0800B1E0: .4byte 0x00000201
_0800B1E4: .4byte 0x000035B6
_0800B1E8: .4byte 0x000067AC
_0800B1EC: .4byte 0x000002DE
_0800B1F0: .4byte gUnknown_08D2D2E8
_0800B1F4: .4byte 0x0000829B
_0800B1F8: .4byte 0x00008494
	.syntax divided
