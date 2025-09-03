	.syntax unified
sub_080131B0:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov sb, r0
	adds r6, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0xc]
	mov r3, sp
	movs r4, #0
	ldr r1, _08013380
	ldr r2, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	adds r0, #1
	lsls r0, r0, #1
	ldr r5, _08013384
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _080131E6
	movs r4, #1
_080131E6:
	strh r4, [r3]
	ldrb r0, [r2]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	add r5, sp, #4
	adds r1, r5, #0
	bl sub_0801A594
	ldr r3, [r6]
	movs r0, #0xf0
	lsls r0, r0, #2
	ands r0, r3
	ldr r1, _08013388
	ldr r2, [sp, #8]
	ands r2, r1
	orrs r2, r0
	lsls r0, r3, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x40
	rsbs r1, r1, #0
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #8]
	mov r0, sb
	ldr r4, [r0]
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xe
	ldr r1, _0801338C
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #8]
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xf
	ldr r2, _08013390
	ands r1, r2
	orrs r1, r0
	movs r0, #0xf0
	lsls r0, r0, #6
	ands r3, r0
	ldr r0, _08013394
	ands r1, r0
	orrs r1, r3
	str r1, [sp, #8]
	mov r1, sb
	ldr r0, [r1, #4]
	ldrb r0, [r0, #2]
	mov sl, r0
	movs r2, #0
	str r2, [sp, #0x10]
	ldrb r0, [r1, #0x16]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1b
	adds r0, #1
	cmp r2, r0
	blt _0801325E
	b _0801336E
_0801325E:
	mov r4, sb
	ldr r0, [r4, #4]
	ldrb r6, [r0, #1]
	mov r0, sp
	movs r1, #4
	ldrsh r5, [r0, r1]
	subs r5, r6, r5
	lsls r5, r5, #0x11
	lsrs r5, r5, #0x10
	add r0, sp, #4
	movs r2, #2
	ldrsh r4, [r0, r2]
	mov r0, sl
	subs r4, r0, r4
	lsls r4, r4, #0x11
	lsrs r4, r4, #0x10
	mov r1, sb
	ldr r0, [r1]
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1e
	adds r1, #1
	ldr r0, _08013398
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_08001378
	mov r8, r0
	mov r2, sb
	ldr r0, [r2]
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	lsls r0, r0, #0xb
	ldr r1, _0801339C
	adds r7, r0, r1
	lsls r4, r4, #5
	adds r5, r5, r4
	lsls r5, r5, #1
	adds r7, r7, r5
	movs r5, #0
	ldr r0, [r2, #0x14]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1b
	adds r0, #1
	mov r2, sl
	adds r2, #1
	str r2, [sp, #0x18]
	ldr r4, [sp, #0x10]
	adds r4, #1
	str r4, [sp, #0x14]
	cmp r5, r0
	bge _0801334C
_080132C8:
	mov r1, sp
	movs r2, #4
	ldrsh r0, [r1, r2]
	cmp r0, r6
	bgt _08013304
	adds r0, #0xf
	cmp r0, r6
	blt _08013304
	movs r4, #6
	ldrsh r0, [r1, r4]
	cmp r0, sl
	bgt _08013304
	adds r0, #0xa
	cmp r0, sl
	blt _08013304
	add r4, sp, #8
	mov r0, r8
	adds r1, r4, #0
	ldr r2, [sp, #0xc]
	bl sub_080118D0
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08013304
	adds r0, r7, #0
	adds r1, r4, #0
	ldr r2, [sp, #0xc]
	bl sub_080118D0
_08013304:
	mov r1, sb
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0801332C
	ldr r1, [sp, #8]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1a
	adds r1, #1
	movs r0, #0x3f
	ands r1, r0
	add r3, sp, #8
	ldrb r0, [r3]
	movs r4, #0x40
	rsbs r4, r4, #0
	adds r2, r4, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_0801332C:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r0, #4
	add r8, r0
	adds r7, #4
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r1, sb
	ldr r0, [r1, #0x14]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1b
	adds r0, #1
	cmp r5, r0
	blt _080132C8
_0801334C:
	ldr r2, [sp, #0x18]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r4, [sp, #0x14]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	mov r5, sb
	ldrb r0, [r5, #0x16]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1b
	adds r0, #1
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bge _0801336E
	b _0801325E
_0801336E:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013380: .4byte gSomeBlend
_08013384: .4byte 0x00002C90
_08013388: .4byte 0xFFFFFC3F
_0801338C: .4byte 0xFFFFBFFF
_08013390: .4byte 0xFFFF7FFF
_08013394: .4byte 0xFFFFC3FF
_08013398: .4byte gUnknown_02016078
_0801339C: .4byte 0x06006800
	.syntax divided
