	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	movs r6, #0
	ldr r0, _0803BCF4
	mov sb, r0
	mov r8, r6
	movs r1, #1
	mov sl, r1
_0803B932:
	lsls r0, r6, #2
	add r0, sb
	ldrb r0, [r0, #0x1c]
	lsrs r0, r0, #6
	lsls r5, r6, #3
	cmp r0, #3
	bne _0803B96C
	adds r0, r6, #0
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	bne _0803B96C
	subs r0, r5, r6
	lsls r0, r0, #3
	add r0, sb
	ldr r3, _0803BCF8
	adds r1, r0, r3
	mov r4, r8
	strh r4, [r1]
	ldr r2, _0803BCFC
	adds r1, r0, r2
	strh r4, [r1]
	adds r3, #8
	adds r0, r0, r3
	strh r4, [r0]
_0803B96C:
	ldr r4, _0803BCF4
	lsls r0, r6, #2
	adds r0, r0, r4
	ldrb r0, [r0, #0x1d]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bne _0803B9A8
	adds r0, r6, #0
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bne _0803B9A8
	subs r0, r5, r6
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r2, _0803BD00
	adds r1, r0, r2
	mov r3, r8
	strh r3, [r1]
	ldr r4, _0803BD04
	adds r1, r0, r4
	strh r3, [r1]
	ldr r1, _0803BD08
	adds r0, r0, r1
	strh r3, [r0]
_0803B9A8:
	lsls r3, r6, #4
	adds r3, r7, r3
	subs r5, r5, r6
	lsls r5, r5, #3
	mov r2, sb
	adds r4, r5, r2
	ldr r0, _0803BD0C
	adds r4, r4, r0
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	mov r1, sl
	ands r0, r1
	ldrb r2, [r3, #0xc]
	mov ip, r2
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	mov r2, ip
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	mov r1, sl
	ands r0, r1
	lsls r0, r0, #1
	movs r1, #3
	rsbs r1, r1, #0
	mov ip, r1
	mov r1, ip
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	mov r4, sl
	ands r0, r4
	lsls r0, r0, #2
	movs r4, #5
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0xc]
	ldr r2, _0803BCF8
	add r2, sb
	adds r1, r5, r2
	ldrh r0, [r1]
	strh r0, [r3]
	ldrh r0, [r1, #2]
	strh r0, [r3, #2]
	ldr r1, _0803BCFC
	add r1, sb
	adds r1, r5, r1
	ldrh r0, [r1]
	strh r0, [r3, #4]
	ldrh r0, [r1, #2]
	strh r0, [r3, #6]
	ldr r0, _0803BD10
	adds r5, r5, r0
	ldrh r0, [r5]
	strh r0, [r3, #8]
	ldrh r0, [r5, #2]
	strh r0, [r3, #0xa]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #2
	bhi _0803BA3A
	b _0803B932
_0803BA3A:
	movs r6, #0
	movs r1, #1
	mov r8, r1
_0803BA40:
	lsls r0, r6, #2
	adds r0, r0, r7
	mov ip, r0
	lsls r3, r6, #1
	adds r3, r3, r6
	lsls r3, r3, #3
	ldr r2, _0803BCF4
	adds r3, r3, r2
	ldr r0, _0803BD14
	adds r4, r3, r0
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	mov r5, ip
	adds r5, #0x32
	mov r1, r8
	ands r0, r1
	ldrb r1, [r5]
	movs r2, #2
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r5]
	ldrb r0, [r4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #2
	movs r1, #5
	rsbs r1, r1, #0
	mov sl, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	ldrb r2, [r4]
	lsrs r2, r2, #3
	lsls r2, r2, #3
	movs r0, #7
	ands r1, r0
	orrs r1, r2
	strb r1, [r5]
	ldr r2, _0803BD18
	adds r0, r3, r2
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	mov r4, ip
	adds r4, #0x33
	lsrs r1, r1, #0x1c
	ldrb r2, [r4]
	movs r0, #0x10
	rsbs r0, r0, #0
	mov sb, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldr r1, _0803BD1C
	adds r3, r3, r1
	ldrh r0, [r3]
	mov r2, ip
	strh r0, [r2, #0x30]
	lsls r3, r6, #4
	ldr r4, _0803BCF4
	adds r3, r3, r4
	ldr r0, _0803BD20
	adds r4, r3, r0
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	movs r5, #0x91
	lsls r5, r5, #1
	add r5, ip
	lsrs r0, r0, #0x1f
	mov r1, r8
	ands r0, r1
	ldrb r1, [r5]
	movs r2, #2
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r5]
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #6
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	ldrb r0, [r4]
	movs r2, #0x3e
	ands r2, r0
	movs r0, #0x3f
	rsbs r0, r0, #0
	ands r1, r0
	orrs r1, r2
	strb r1, [r5]
	ldr r2, _0803BD24
	adds r3, r3, r2
	ldrh r1, [r3]
	movs r0, #0x90
	lsls r0, r0, #1
	add r0, ip
	strh r1, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x13
	bls _0803BA40
	movs r6, #0
	movs r3, #1
	mov r8, r3
	movs r4, #0xf
	mov sl, r4
_0803BB28:
	lsls r3, r6, #2
	adds r0, r7, r3
	mov ip, r0
	ldr r1, _0803BCF4
	adds r3, r3, r1
	ldr r2, _0803BD28
	adds r4, r3, r2
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	mov r5, ip
	adds r5, #0x82
	lsrs r0, r0, #0x1f
	mov r1, r8
	ands r0, r1
	ldrb r1, [r5]
	movs r2, #2
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r5]
	ldrb r0, [r4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #2
	movs r1, #5
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	ldrb r2, [r4]
	lsrs r2, r2, #3
	lsls r2, r2, #3
	movs r0, #7
	ands r1, r0
	orrs r1, r2
	strb r1, [r5]
	ldr r2, _0803BD2C
	adds r0, r3, r2
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	mov r4, ip
	adds r4, #0x83
	lsrs r1, r1, #0x1c
	mov r0, sl
	ands r1, r0
	ldrb r2, [r4]
	mov r0, sb
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldr r1, _0803BD30
	adds r3, r3, r1
	ldrh r1, [r3]
	mov r0, ip
	adds r0, #0x80
	strh r1, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x27
	bls _0803BB28
	movs r6, #0
	ldr r2, _0803BCF4
	mov sb, r2
	movs r3, #1
	mov r8, r3
_0803BBB0:
	lsls r1, r6, #3
	adds r1, r1, r6
	lsls r1, r1, #2
	adds r5, r7, r1
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	mov r2, sb
	adds r4, r0, r2
	ldr r3, _0803BD34
	adds r3, r3, r4
	mov ip, r3
	ldrb r2, [r3]
	lsls r2, r2, #0x1f
	movs r4, #0xc8
	lsls r4, r4, #1
	adds r5, r5, r4
	lsrs r2, r2, #0x1f
	mov r3, r8
	ands r2, r3
	ldrb r3, [r5]
	movs r4, #2
	rsbs r4, r4, #0
	ands r3, r4
	orrs r3, r2
	strb r3, [r5]
	mov r4, ip
	ldrb r2, [r4]
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1f
	mov r4, r8
	ands r2, r4
	lsls r2, r2, #1
	str r2, [sp]
	movs r2, #3
	rsbs r2, r2, #0
	mov sl, r2
	mov r4, sl
	ands r3, r4
	ldr r2, [sp]
	orrs r3, r2
	strb r3, [r5]
	mov r4, ip
	ldrb r2, [r4]
	movs r4, #0x3c
	ands r4, r2
	movs r2, #0x3d
	rsbs r2, r2, #0
	mov ip, r2
	mov r2, ip
	ands r3, r2
	orrs r3, r4
	strb r3, [r5]
	ldr r3, _0803BD38
	adds r0, r0, r3
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r1, r1, r4
	adds r1, r7, r1
	movs r2, #0x20
	bl sub_08001B18
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0xb
	bls _0803BBB0
	ldr r3, _0803BCF4
	ldr r1, _0803BD3C
	adds r0, r3, r1
	ldrh r1, [r0]
	movs r2, #0xc8
	lsls r2, r2, #2
	adds r0, r7, r2
	strh r1, [r0]
	ldr r4, _0803BD40
	adds r0, r3, r4
	ldrh r1, [r0]
	adds r2, #2
	adds r0, r7, r2
	strh r1, [r0]
	adds r4, #2
	adds r0, r3, r4
	ldrh r1, [r0]
	adds r2, #2
	adds r0, r7, r2
	strh r1, [r0]
	adds r4, #2
	adds r0, r3, r4
	ldrh r1, [r0]
	adds r2, #2
	adds r0, r7, r2
	strh r1, [r0]
	adds r4, #2
	adds r0, r3, r4
	ldrh r1, [r0]
	adds r2, #2
	adds r0, r7, r2
	strh r1, [r0]
	adds r4, #2
	adds r0, r3, r4
	ldrh r1, [r0]
	adds r2, #2
	adds r0, r7, r2
	strh r1, [r0]
	adds r4, #2
	adds r0, r3, r4
	ldrh r1, [r0]
	adds r2, #2
	adds r0, r7, r2
	strh r1, [r0]
	adds r4, #8
	adds r0, r3, r4
	ldrh r1, [r0]
	adds r2, #8
	adds r0, r7, r2
	strh r1, [r0]
	subs r4, #6
	adds r0, r3, r4
	ldrh r1, [r0]
	subs r2, #6
	adds r0, r7, r2
	strh r1, [r0]
	adds r4, #2
	adds r0, r3, r4
	ldrh r1, [r0]
	adds r2, #2
	adds r0, r7, r2
	strh r1, [r0]
	adds r4, #2
	adds r0, r3, r4
	ldrh r1, [r0]
	adds r2, #2
	adds r0, r7, r2
	strh r1, [r0]
	adds r4, #6
	adds r0, r3, r4
	ldrb r4, [r0]
	lsls r2, r4, #0x1f
	ldr r0, _0803BD44
	adds r5, r7, r0
	lsrs r2, r2, #0x1f
	ldrb r0, [r5]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r0
	orrs r1, r2
	movs r0, #2
	ands r0, r4
	mov r2, sl
	ands r1, r2
	orrs r1, r0
	movs r0, #4
	ands r0, r4
	movs r2, #5
	rsbs r2, r2, #0
	ands r1, r2
	orrs r1, r0
	movs r0, #8
	ands r0, r4
	subs r2, #4
	b _0803BD48
	.align 2, 0
_0803BCF4: .4byte gGame
_0803BCF8: .4byte 0x000058B0
_0803BCFC: .4byte 0x000058B4
_0803BD00: .4byte 0x000058B2
_0803BD04: .4byte 0x000058B6
_0803BD08: .4byte 0x000058BA
_0803BD0C: .4byte 0x000058E5
_0803BD10: .4byte gUnknown_0200B4B8
_0803BD14: .4byte 0x00005D74
_0803BD18: .4byte 0x00005D75
_0803BD1C: .4byte 0x00005D70
_0803BD20: .4byte 0x00006488
_0803BD24: .4byte 0x00006484
_0803BD28: .4byte 0x00005F42
_0803BD2C: .4byte 0x00005F43
_0803BD30: .4byte 0x00005F40
_0803BD34: .4byte 0x000065E0
_0803BD38: .4byte gUnknown_0200C1BC
_0803BD3C: .4byte 0x000067AC
_0803BD40: .4byte 0x000067AE
_0803BD44: .4byte 0x00000336
_0803BD48:
	ands r1, r2
	orrs r1, r0
	movs r0, #0x10
	ands r0, r4
	subs r2, #8
	ands r1, r2
	orrs r1, r0
	movs r0, #0x20
	ands r0, r4
	subs r2, #0x10
	ands r1, r2
	orrs r1, r0
	ldr r4, _0803BD84
	adds r3, r3, r4
	ldrb r0, [r3]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	lsls r0, r0, #6
	subs r2, #0x20
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803BD84: .4byte 0x000067C5
	.syntax divided
