	.syntax unified
sub_08028264:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r2, _080282B0
	ldr r1, [sp, #4]
	adds r2, r1, r2
	str r2, [sp, #0x18]
_0802827E:
	ldr r3, [sp, #0x10]
	ldr r4, _080282B4
	adds r0, r3, r4
	ldrb r6, [r0]
	adds r5, r3, #0
	adds r5, #1
	cmp r6, #0
	bne _08028290
	b _08028756
_08028290:
	ldr r0, _080282B8
	movs r1, #0x6c
	muls r1, r6, r1
	adds r1, r1, r0
	ldrb r4, [r1, #1]
	cmp r4, #0
	bne _080282A0
	b _08028756
_080282A0:
	ldr r0, [r1, #0x18]
	cmp r0, #0
	bgt _080282BC
	mov r0, sp
	movs r1, #1
	strh r1, [r0]
	b _080282C2
	.align 2, 0
_080282B0: .4byte 0x00000681
_080282B4: .4byte gSave
_080282B8: .4byte gCharStats
_080282BC:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
_080282C2:
	ldr r2, [sp, #0x18]
	ldrb r0, [r2]
	cmp r0, #0
	bne _080282DE
	ldr r0, _08028698
	ldr r3, _0802869C
	adds r2, r0, r3
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080282DE
	ldrh r4, [r2]
_080282DE:
	ldr r1, [sp, #0x18]
	ldrb r0, [r1]
	bl get_obj_direct
	adds r7, r0, #0
	adds r0, r4, #0
	bl sub_08036D18
	str r0, [sp, #8]
	adds r0, r4, #0
	bl sub_08036D3C
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	lsls r0, r2, #1
	ldr r3, _080286A0
	adds r0, r0, r3
	ldrh r0, [r0]
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _0802832C
	adds r0, r6, #0
	bl sub_08001D2C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802832C
	ldr r2, [sp, #4]
	ldr r3, _080286A4
	adds r1, r2, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0802832C:
	adds r0, r7, #0
	adds r0, #0xbc
	str r0, [sp, #0x1c]
	ldrb r0, [r0]
	movs r1, #2
	orrs r0, r1
	ldr r1, [sp, #0x1c]
	strb r0, [r1]
	ldr r2, [sp, #0x18]
	ldrb r0, [r2]
	subs r0, #1
	adds r3, r7, #0
	adds r3, #0x85
	str r3, [sp, #0x20]
	strb r0, [r3]
	adds r0, r7, #0
	adds r0, #0x86
	str r0, [sp, #0x24]
	strb r6, [r0]
	adds r1, r7, #0
	adds r1, #0x88
	str r1, [sp, #0x28]
	strh r4, [r1]
	ldr r2, [sp, #0x10]
	rsbs r0, r2, #0
	lsrs r0, r0, #0x1f
	subs r1, #1
	strb r0, [r1]
	adds r1, #5
	ldr r0, _080286A8
	strh r0, [r1]
	movs r3, #0
	str r3, [r7, #0x1c]
	adds r1, #2
	movs r0, #1
	strb r0, [r1]
	adds r3, r7, #0
	adds r3, #0xbf
	ldrb r1, [r3]
	subs r0, #0x42
	ands r0, r1
	strb r0, [r3]
	adds r6, r7, #0
	adds r6, #0xcc
	ldrb r1, [r6]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6]
	ldrb r1, [r3]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3]
	adds r5, r7, #0
	adds r5, #0xc8
	ldrb r1, [r5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	str r3, [sp, #0x34]
	bl sub_080355AC
	adds r1, r7, #0
	adds r1, #0x9e
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0xa0
	movs r4, #0
	strh r4, [r0]
	ldrb r0, [r5]
	movs r2, #7
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r5]
	ldr r4, [sp, #0x1c]
	ldrb r1, [r4]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r4]
	bl sub_0801A6AC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0xbd
	adds r2, r2, r7
	mov r8, r2
	movs r4, #3
	ands r1, r4
	lsls r1, r1, #3
	ldrb r0, [r2]
	movs r2, #0x19
	rsbs r2, r2, #0
	mov sb, r2
	mov r2, sb
	ands r0, r2
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	bl sub_08036CD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r0, r4
	lsls r0, r0, #5
	mov r2, r8
	ldrb r1, [r2]
	movs r4, #0x61
	rsbs r4, r4, #0
	adds r2, r4, #0
	ands r1, r2
	orrs r1, r0
	mov r0, r8
	strb r1, [r0]
	adds r1, r7, #0
	adds r1, #0xcb
	str r1, [sp, #0x2c]
	ldrb r1, [r1]
	movs r0, #0x7f
	ands r0, r1
	ldr r2, [sp, #0x2c]
	strb r0, [r2]
	ldr r3, [sp, #0x34]
	ldrb r1, [r3]
	adds r4, #0x58
	mov r8, r4
	mov r0, r8
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r0, r2
	strb r0, [r3]
	adds r2, r7, #0
	adds r2, #0xc6
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	movs r3, #0x7f
	ands r0, r3
	strb r0, [r2]
	movs r4, #0xc7
	adds r4, r4, r7
	mov sl, r4
	ldrb r1, [r4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	subs r3, #0x82
	ands r0, r3
	strb r0, [r4]
	movs r0, #0xca
	adds r0, r0, r7
	mov sb, r0
	ldrb r1, [r0]
	movs r4, #5
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	mov r1, sb
	strb r0, [r1]
	mov r2, sl
	ldrb r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r2]
	mov r0, sb
	ldrb r1, [r0]
	mov r0, r8
	ands r0, r1
	mov r1, sb
	strb r0, [r1]
	ldrb r1, [r5]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	movs r2, #0x7f
	ands r0, r2
	strb r0, [r5]
	adds r2, r7, #0
	adds r2, #0xcd
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, [sp, #8]
	ldrb r1, [r0, #1]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	movs r2, #1
	ands r1, r2
	lsls r1, r1, #3
	mov r0, sl
	ldrb r2, [r0]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	mov r1, sl
	strb r0, [r1]
	ldrb r1, [r6]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6]
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	lsls r0, r0, #0x1a
	movs r1, #0xc9
	adds r1, r1, r7
	mov ip, r1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #4
	ldrb r1, [r1]
	movs r2, #0x71
	rsbs r2, r2, #0
	ands r1, r2
	orrs r1, r0
	mov r0, ip
	strb r1, [r0]
	ldr r2, [sp, #0xc]
	ldrb r0, [r2, #1]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	lsls r0, r0, #7
	movs r2, #0x7f
	ands r1, r2
	orrs r1, r0
	mov r0, ip
	strb r1, [r0]
	ldr r2, [sp, #0xc]
	ldrb r1, [r2, #1]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1f
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #5
	ldr r0, [sp, #0x2c]
	ldrb r2, [r0]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	ldr r1, [sp, #0x2c]
	strb r0, [r1]
	ldrb r1, [r5]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	mov r2, sb
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	movs r2, #0x7f
	ands r0, r2
	mov r1, sb
	strb r0, [r1]
	ldr r2, [sp, #0x2c]
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r3
	ands r0, r4
	mov r1, r8
	ands r0, r1
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r0, r2
	ldr r1, [sp, #0x2c]
	strb r0, [r1]
	ldrb r0, [r6]
	ands r3, r0
	ands r3, r4
	mov r2, r8
	ands r3, r2
	strb r3, [r6]
	mov r0, sp
	ldrh r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	movs r4, #1
	ands r0, r4
	lsls r0, r0, #4
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r3, r1
	orrs r3, r0
	strb r3, [r6]
	movs r2, #0
	str r2, [r7, #0x2c]
	str r2, [r7, #0x30]
	str r2, [r7, #0x34]
	mov r3, sl
	ldrb r1, [r3]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3]
	str r2, [r7, #0x38]
	str r2, [r7, #0x3c]
	ldr r4, [sp, #0xc]
	ldrb r0, [r4, #2]
	lsrs r0, r0, #1
	adds r2, r7, #0
	adds r2, #0xa6
	strh r0, [r2]
	ldrb r0, [r4, #3]
	lsrs r0, r0, #1
	adds r1, r7, #0
	adds r1, #0xa8
	strh r0, [r1]
	ldrb r0, [r6]
	lsls r0, r0, #0x1b
	ldr r3, [sp, #0x1c]
	mov r8, r3
	ldr r4, [sp, #0x20]
	mov sb, r4
	mov sl, r6
	str r2, [sp, #0x30]
	adds r6, r1, #0
	cmp r0, #0
	bge _08028618
	subs r5, #0x3d
	ldrb r4, [r5]
	ldr r1, [sp, #0x24]
	ldrb r0, [r1]
	ldr r2, [sp, #0x28]
	ldrh r1, [r2]
	movs r2, #4
	bl sub_08035C0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	beq _08028618
	ldrb r4, [r5]
	ldr r3, [sp, #0x24]
	ldrb r0, [r3]
	ldr r2, [sp, #0x28]
	ldrh r1, [r2]
	movs r2, #0
	bl sub_08035C0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	beq _08028618
	mov r3, r8
	ldrb r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	adds r0, #0x50
	strb r0, [r5]
	adds r0, r7, #0
	adds r0, #0x92
	movs r4, #0
	strh r4, [r0]
_08028618:
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0
	bne _08028626
	ldrh r0, [r6]
	adds r0, #4
	strh r0, [r6]
_08028626:
	ldr r2, [sp, #0x30]
	ldrh r0, [r2]
	lsls r0, r0, #4
	adds r1, r7, #0
	adds r1, #0xaa
	movs r4, #0
	movs r3, #0
	strh r0, [r1]
	ldrh r0, [r6]
	lsls r0, r0, #4
	adds r1, #2
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0xb2
	strh r3, [r0]
	subs r0, #2
	strh r3, [r0]
	subs r0, #2
	strh r3, [r0]
	mov r0, sl
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	mov r1, sl
	strb r0, [r1]
	ldr r2, [sp, #8]
	ldrb r1, [r2, #8]
	adds r0, r7, #0
	adds r0, #0xb4
	strb r1, [r0]
	adds r0, #2
	strh r3, [r0]
	adds r0, #4
	movs r1, #3
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	adds r0, #3
	strb r4, [r0]
	adds r2, r7, #0
	adds r2, #0x48
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r2, #8
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _080286AC
	ldrb r0, [r0]
	b _080286B0
	.align 2, 0
_08028698: .4byte gGame
_0802869C: .4byte 0x000082AC
_080286A0: .4byte gUnknown_02004A96
_080286A4: .4byte 0x00000682
_080286A8: .4byte 0x0000FFFF
_080286AC: .4byte gUnknown_02005080
_080286B0:
	cmp r0, #0
	beq _080286B8
	cmp r0, #2
	bne _080286F0
_080286B8:
	mov r1, r8
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x8b
	mov r1, sp
	ldrb r1, [r1, #0x14]
	strb r1, [r0]
	adds r0, #7
	strh r3, [r0]
	movs r0, #7
	ldr r2, [sp, #0x14]
	ands r2, r0
	lsls r2, r2, #2
	mov r3, r8
	ldrb r0, [r3]
	movs r3, #0x1d
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	mov r1, r8
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x8f
	strb r4, [r0]
_080286F0:
	ldr r2, [sp, #0x18]
	ldrb r0, [r2]
	subs r0, #1
	lsls r0, r0, #1
	ldr r3, _08028774
	ldr r4, _08028778
	adds r1, r3, r4
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #4
	movs r1, #0
	strh r0, [r7]
	ldrb r0, [r2]
	subs r0, #1
	lsls r0, r0, #1
	ldr r2, _0802877C
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #4
	strh r0, [r7, #2]
	strh r1, [r7, #4]
	strh r1, [r7, #6]
	ldr r3, [sp, #8]
	ldrb r0, [r3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x19
	adds r0, #8
	strh r0, [r7, #0x14]
	ldrb r0, [r3]
	lsrs r0, r0, #4
	adds r0, #1
	lsls r0, r0, #3
	strh r0, [r7, #0x16]
	movs r2, #0
	ldr r5, [sp, #0x10]
	adds r5, #1
	adds r3, r7, #0
	adds r3, #0x74
	movs r4, #0xff
_0802873E:
	adds r0, r3, r2
	ldrb r1, [r0]
	orrs r1, r4
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xc
	bls _0802873E
	adds r0, r7, #0
	bl sub_08036BA4
_08028756:
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	cmp r0, #4
	bhi _08028762
	b _0802827E
_08028762:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028774: .4byte gSave
_08028778: .4byte 0x00000222
_0802877C: .4byte gUnknown_02004A8C
	.syntax divided
