	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #4]
	mov sb, r1
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, sp
	strh r1, [r0]
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x1c]
	ldrh r0, [r1]
	cmp r0, #4
	bls _080319A4
	movs r0, #4
_080319A4:
	mov sl, r0
	mov r2, r8
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r4, r1, #2
	movs r5, #0
	str r5, [sp, #0xc]
	cmp r5, sl
	bhs _08031A9C
	b _08031A90
_080319BA:
	ldr r1, _080319E0
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #3
	ldr r1, _080319E4
	adds r0, r0, r1
	mov ip, r0
	ldr r0, _080319E8
	movs r1, #0
	ldrsb r1, [r4, r1]
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldrb r2, [r4]
	cmp r1, r0
	blt _080319EC
	ldr r5, [sp, #0x34]
	ldrb r3, [r5, #1]
	b _080319F0
	.align 2, 0
_080319E0: .4byte 0x000121B0
_080319E4: .4byte gUnknown_030038F0
_080319E8: .4byte gUnknown_02001008
_080319EC:
	ldr r7, [sp, #0x34]
	ldrb r3, [r7]
_080319F0:
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	str r2, [sp, #0x10]
	mov r1, sb
	movs r2, #2
	ldrsh r0, [r1, r2]
	ldr r5, [sp, #0x10]
	adds r2, r5, r0
	movs r0, #0xff
	ands r2, r0
	ldr r0, [r4]
	lsrs r0, r0, #0x1e
	lsls r0, r0, #0xe
	orrs r2, r0
	movs r0, #1
	ldrsb r0, [r4, r0]
	movs r7, #0
	ldrsh r1, [r1, r7]
	adds r0, r0, r1
	ldr r1, _08031A48
	ands r0, r1
	lsls r0, r0, #0x10
	orrs r2, r0
	ldrh r1, [r4, #2]
	movs r5, #0xf0
	lsls r5, r5, #6
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #0x12
	orrs r2, r0
	mov r7, ip
	str r2, [r7]
	lsls r0, r3, #0xa
	orrs r0, r6
	mov r1, r8
	orrs r0, r1
	strh r0, [r7, #4]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08031A4C
	movs r0, #0
	b _08031A66
	.align 2, 0
_08031A48: .4byte 0x000001FF
_08031A4C:
	ldr r2, [sp, #8]
	lsls r0, r2, #0x10
	ldr r1, [sp, #4]
	adds r1, #0xbb
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldr r5, _08031AAC
	adds r0, r0, r5
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_08031A66:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r3, #0
	bl sub_08032DAC
	ldm r4!, {r1}
	lsrs r0, r1, #0x1e
	lsls r1, r1, #2
	lsrs r1, r1, #0x1e
	bl sub_08002760
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, [sp, #0xc]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	cmp r0, sl
	bhs _08031A9C
_08031A90:
	ldr r0, _08031AB0
	ldr r7, _08031AB4
	adds r1, r0, r7
	ldrh r1, [r1]
	cmp r1, #0x7f
	bls _080319BA
_08031A9C:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031AAC: .4byte 0xFF600000
_08031AB0: .4byte gSomeBlend
_08031AB4: .4byte 0x000121B0
	.syntax divided
