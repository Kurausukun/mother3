	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	mov sl, r7
	mov r0, sp
	strh r3, [r0]
	lsls r1, r5, #4
	ldr r0, _080128CC
	adds r1, r1, r0
	mov r8, r1
	ldr r6, [r1]
	ldrb r1, [r1, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08012866
	b _080129A2
_08012866:
	ldrb r0, [r6]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08012870
	b _080129A2
_08012870:
	ldrb r0, [r6, #8]
	cmp sb, r0
	blo _08012878
	b _080129A2
_08012878:
	add r4, sp, #4
	ldrb r1, [r4, #0x14]
	movs r0, #1
	orrs r1, r0
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	lsls r2, r5, #3
	movs r0, #7
	ands r1, r0
	orrs r1, r2
	movs r0, #0xf
	mov r2, sb
	ands r2, r0
	ldrb r3, [r4, #0x15]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x15]
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	strb r1, [r4, #0x14]
	mov r1, r8
	ldr r0, [r1, #8]
	ldrb r1, [r6, #9]
	bl sub_08013778
	adds r2, r0, #0
	strh r2, [r4, #0x12]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	adds r7, r4, #0
	cmp r0, r1
	bne _080128D0
	subs r0, r2, #1
	strh r0, [r7, #0x10]
	b _080128D4
	.align 2, 0
_080128CC: .4byte gUnknown_0200B7D0
_080128D0:
	mov r2, sl
	strh r2, [r7, #0x10]
_080128D4:
	ldrb r0, [r6, #2]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _080128F8
	ldrb r1, [r6, #0xa]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0xf
	ldr r0, [r7, #0x14]
	ldr r2, _080128F4
	ands r0, r2
	orrs r0, r1
	str r0, [r7, #0x14]
	ldrh r1, [r6, #0xa]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1b
	b _08012910
	.align 2, 0
_080128F4: .4byte 0xFFFE0FFF
_080128F8:
	ldrb r0, [r6]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	lsls r0, r0, #0xc
	ldr r1, [r7, #0x14]
	ldr r2, _080129B4
	ands r1, r2
	orrs r1, r0
	str r1, [r7, #0x14]
	ldrh r1, [r6]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x1d
_08012910:
	lsls r1, r1, #1
	ldrb r2, [r7, #0x16]
	movs r0, #0x3f
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r7, #0x16]
	adds r5, r7, #0
	str r6, [sp, #4]
	mov r0, sb
	lsls r1, r0, #2
	mov r2, r8
	ldr r0, [r2, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r4, [r2, #8]
	str r4, [r5, #8]
	ldrh r0, [r5, #0x10]
	ldrh r1, [r5, #0x12]
	bl sub_08002FD4
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08013748
	adds r4, r0, #0
	ldrb r0, [r6]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x14
	ldr r2, _080129B8
	ldrb r1, [r6]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1e
	lsls r1, r1, #2
	adds r2, #0x5c
	adds r1, r1, r2
	ldr r3, [r1]
	ldr r2, [r5, #4]
	ldrb r1, [r2, #1]
	lsls r1, r1, #1
	ldrb r2, [r2, #2]
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r1, r1, r0
	adds r3, r3, r1
	str r3, [r5, #0xc]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08012FBC
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801298E
	adds r0, r5, #0
	bl sub_080137A8
_0801298E:
	ldrh r0, [r7, #0x10]
	cmp r0, #0
	bne _080129A2
	ldr r0, [r6]
	lsls r0, r0, #0xb
	lsrs r0, r0, #0x16
	cmp r0, #0
	beq _080129A2
	bl play_sound
_080129A2:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080129B4: .4byte 0xFFFE0FFF
_080129B8: .4byte gGame
	.syntax divided
