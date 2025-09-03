	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #0x18]
	ldr r1, _080095FC
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r4, [r0]
	movs r5, #0
	ldrb r0, [r0, #9]
	cmp r5, r0
	blo _08009588
	b _080096D2
_08009588:
	add r2, sp, #0xc
	mov sl, r2
_0800958C:
	lsls r0, r5, #0x10
	ldrh r1, [r4, #8]
	orrs r1, r0
	str r1, [sp, #0xc]
	mov r3, sl
	ldrh r0, [r3]
	lsrs r1, r1, #0x10
	bl sub_08009C68
	str r0, [sp, #4]
	ldr r0, [r4]
	str r0, [sp, #8]
	movs r7, #0xc
	ldrsh r1, [r4, r7]
	bl sub_08022F6C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r6, #0
	adds r5, #1
	str r5, [sp, #0x10]
	adds r0, r4, #0
	adds r0, #0x10
	str r0, [sp, #0x14]
	cmp r6, sb
	bhs _080096BA
	ldr r1, [sp, #0x18]
	ldr r2, _08009600
	adds r5, r1, r2
	ldr r3, _08009604
	mov r8, r3
_080095CC:
	ldr r0, [sp, #8]
	ldrh r2, [r0]
	adds r3, r2, #0
	ldr r0, _08009608
	cmp r2, r0
	bls _0800960C
	ldr r2, [sp, #4]
	ldrh r0, [r2]
	mov r7, r8
	ands r0, r7
	strh r0, [r2]
	ldrb r0, [r2, #2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #2]
	mov r0, sl
	str r0, [sp]
	ldr r0, [sp, #0x18]
	adds r1, r4, #0
	add r2, sp, #4
	add r3, sp, #8
	bl sub_08009AF4
	b _080096AA
	.align 2, 0
_080095FC: .4byte 0x0000C1E8
_08009600: .4byte 0x0000C514
_08009604: .4byte 0xFFFFF000
_08009608: .4byte 0x0000FEFF
_0800960C:
	movs r0, #0xfe
	lsls r0, r0, #4
	cmp r2, r0
	bne _08009664
	ldr r1, [sp, #4]
	ldr r0, [r1]
	lsls r0, r0, #0x14
	cmp r0, #0
	bne _08009624
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
_08009624:
	ldrh r0, [r1]
	mov r3, r8
	ands r0, r3
	orrs r0, r2
	strh r0, [r1]
	ldr r3, [sp, #4]
	ldr r0, [sp, #8]
	ldrb r2, [r0, #2]
	lsls r2, r2, #2
	ldrh r0, [r3, #2]
	ldr r7, _08009660
	adds r1, r7, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #2]
	ldr r2, [sp, #4]
	ldrb r0, [r2, #2]
	movs r3, #2
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2, #2]
	ldr r0, [sp, #4]
	adds r0, #4
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	adds r0, #2
	str r0, [sp, #8]
	b _080096AA
	.align 2, 0
_08009660: .4byte 0xFFFFFC03
_08009664:
	ldr r1, [sp, #4]
	ldr r0, [r1]
	lsls r0, r0, #0x14
	cmp r0, #0
	bne _08009674
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
_08009674:
	ldr r7, _080096E4
	adds r0, r7, #0
	ands r3, r0
	ldrh r0, [r1]
	mov r2, r8
	ands r0, r2
	orrs r0, r3
	strh r0, [r1]
	ldr r3, [sp, #4]
	ldrb r1, [r4, #0xe]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x18
	ldrb r2, [r3, #1]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r2, [sp, #4]
	ldrb r0, [r2, #2]
	movs r3, #2
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2, #2]
	ldr r0, [sp, #4]
	adds r0, #4
	str r0, [sp, #4]
_080096AA:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, [sp, #8]
	adds r0, #2
	str r0, [sp, #8]
	cmp r6, sb
	blo _080095CC
_080096BA:
	ldr r7, [sp, #0x10]
	lsls r0, r7, #0x10
	lsrs r5, r0, #0x10
	ldr r4, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r2, _080096E8
	adds r0, r1, r2
	ldr r0, [r0]
	ldrb r0, [r0, #9]
	cmp r5, r0
	bhs _080096D2
	b _0800958C
_080096D2:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080096E4: .4byte 0x00000FFF
_080096E8: .4byte 0x0000C1E8
	.syntax divided
