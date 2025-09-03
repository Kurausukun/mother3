	.syntax unified
sub_080096EC:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r6, r0, #0
	ldr r1, _0800978C
	adds r0, r6, r1
	ldr r0, [r0]
	ldr r4, [r0]
	movs r7, #0
	ldrb r0, [r0, #9]
	cmp r7, r0
	blo _0800970C
	b _0800980C
_0800970C:
	mov r2, sp
	adds r2, #0xc
	str r2, [sp, #0x10]
_08009712:
	ldrh r2, [r4, #8]
	ldr r1, _08009790
	ldr r0, [sp, #0xc]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0xc]
	ldrh r2, [r4, #0xa]
	lsls r2, r2, #0x10
	ldr r1, _08009794
	ands r1, r0
	orrs r1, r2
	str r1, [sp, #0xc]
	ldr r3, [sp, #0x10]
	ldrh r0, [r3]
	lsrs r1, r1, #0x10
	bl sub_08009C68
	str r0, [sp, #4]
	ldr r0, [r4]
	str r0, [sp, #8]
	movs r2, #0xc
	ldrsh r1, [r4, r2]
	bl sub_08022F6C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r5, #0
	adds r7, #1
	mov sb, r7
	movs r3, #0x10
	adds r3, r3, r4
	mov sl, r3
	cmp r5, r8
	bhs _080097F8
	ldr r0, _08009798
	adds r7, r0, #0
_0800975C:
	ldr r0, [sp, #8]
	ldrh r0, [r0]
	adds r3, r0, #0
	ldr r0, _0800979C
	cmp r3, r0
	bls _080097A0
	ldr r2, [sp, #4]
	ldrh r0, [r2]
	ands r0, r7
	strh r0, [r2]
	ldrb r0, [r2, #2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #2]
	ldr r1, [sp, #0x10]
	str r1, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	add r2, sp, #4
	add r3, sp, #8
	bl sub_08009AF4
	b _080097E8
	.align 2, 0
_0800978C: .4byte 0x0000C1E8
_08009790: .4byte 0xFFFF0000
_08009794: .4byte 0x0000FFFF
_08009798: .4byte 0xFFFFF000
_0800979C: .4byte 0x0000FEFF
_080097A0:
	ldr r2, [sp, #4]
	ldr r0, [r2]
	lsls r0, r0, #0x14
	cmp r0, #0
	bne _080097B4
	ldr r0, _0800981C
	adds r1, r6, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080097B4:
	ldr r1, _08009820
	adds r0, r1, #0
	ands r3, r0
	ldrh r0, [r2]
	ands r0, r7
	orrs r0, r3
	strh r0, [r2]
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
_080097E8:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, [sp, #8]
	adds r0, #2
	str r0, [sp, #8]
	cmp r5, r8
	blo _0800975C
_080097F8:
	mov r1, sb
	lsls r0, r1, #0x10
	lsrs r7, r0, #0x10
	mov r4, sl
	ldr r2, _08009824
	adds r0, r6, r2
	ldr r0, [r0]
	ldrb r0, [r0, #9]
	cmp r7, r0
	blo _08009712
_0800980C:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800981C: .4byte 0x0000C514
_08009820: .4byte 0x00000FFF
_08009824: .4byte 0x0000C1E8
	.syntax divided
