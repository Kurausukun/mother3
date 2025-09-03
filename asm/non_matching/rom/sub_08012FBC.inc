	.syntax unified
sub_08012FBC:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r6, r0, #0
	str r1, [sp, #8]
	mov r3, sp
	movs r4, #0
	ldr r0, _08013024
	ldr r2, [r6]
	ldrb r1, [r2]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1e
	adds r1, #1
	lsls r1, r1, #1
	ldr r5, _08013028
	adds r0, r0, r5
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _08012FEC
	movs r4, #1
_08012FEC:
	strh r4, [r3]
	ldrb r0, [r2]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	add r4, sp, #4
	adds r1, r4, #0
	bl sub_0801A594
	ldr r0, [r6]
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x14
	str r0, [sp, #0x14]
	ldr r0, [r6, #4]
	ldrb r0, [r0, #2]
	mov sb, r0
	ldr r1, [sp, #8]
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	mov sl, r0
	movs r1, #0
	b _08013186
	.align 2, 0
_08013024: .4byte gSomeBlend
_08013028: .4byte 0x00002C90
_0801302C:
	ldr r0, [r6, #4]
	ldrb r7, [r0, #1]
	ldr r5, [r6, #0xc]
	ldr r2, [sp, #0x14]
	lsls r0, r2, #1
	muls r0, r1, r0
	adds r5, r5, r0
	mov r3, sp
	movs r2, #4
	ldrsh r0, [r3, r2]
	subs r0, r7, r0
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x10
	mov r8, r0
	add r0, sp, #4
	movs r3, #2
	ldrsh r0, [r0, r3]
	mov r2, sb
	subs r0, r2, r0
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	movs r3, #0
	str r3, [sp, #0xc]
	ldr r0, [r6, #0x14]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1b
	adds r0, #1
	adds r2, #1
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x1c]
	cmp r3, r0
	blt _08013072
	b _08013178
_08013072:
	ldr r0, [sp, #8]
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #2
	ands r2, r0
	ldrh r0, [r5]
	ldr r3, _080131A4
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r5]
	movs r0, #0x3f
	mov r2, sl
	ands r2, r0
	ldrb r0, [r5]
	movs r3, #0x40
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5]
	ldr r0, [r6]
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	lsls r0, r0, #6
	ldrb r2, [r5, #1]
	subs r3, #1
	adds r1, r3, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r5, #1]
	ldr r0, [r6]
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	lsls r0, r0, #7
	movs r1, #0x7f
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #1]
	ldr r2, [sp, #8]
	ldr r0, [r2]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x1c
	lsls r0, r0, #2
	adds r3, #4
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #1]
	mov r1, sp
	movs r2, #4
	ldrsh r0, [r1, r2]
	cmp r0, r7
	bgt _08013138
	adds r0, #0xf
	cmp r0, r7
	blt _08013138
	movs r3, #6
	ldrsh r0, [r1, r3]
	cmp r0, sb
	bgt _08013138
	adds r0, #0xa
	cmp r0, sb
	blt _08013138
	ldr r0, [r6]
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1e
	adds r1, #1
	ldr r0, _080131A8
	mov r2, r8
	ldr r3, [sp, #0x10]
	bl sub_08001378
	ldr r1, [r6]
	ldrb r1, [r1]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xb
	ldr r2, _080131AC
	adds r4, r1, r2
	ldr r3, [sp, #0x10]
	lsls r1, r3, #5
	add r1, r8
	lsls r1, r1, #1
	adds r4, r4, r1
	adds r1, r5, #0
	bl sub_080117C4
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08013138
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080117C4
_08013138:
	ldr r0, [r6]
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0801314C
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_0801314C:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r0, r8
	adds r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r5, #2
	ldr r0, [sp, #0xc]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r6, #0x14]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1b
	adds r0, #1
	ldr r1, [sp, #0xc]
	cmp r1, r0
	bge _08013178
	b _08013072
_08013178:
	ldr r2, [sp, #0x18]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r3, [sp, #0x1c]
	lsls r0, r3, #0x10
	lsrs r1, r0, #0x10
_08013186:
	ldrb r0, [r6, #0x16]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1b
	adds r0, #1
	cmp r1, r0
	bge _08013194
	b _0801302C
_08013194:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080131A4: .4byte 0xFFFFFC3F
_080131A8: .4byte gUnknown_02016078
_080131AC: .4byte 0x06006800
	.syntax divided
