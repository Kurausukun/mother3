	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #8]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0xc]
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _0800A69E
	adds r0, #7
_0800A69E:
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x10
	ldr r2, _0800A724
	ldr r1, [sp]
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	movs r2, #2
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bge _0800A6B6
	adds r0, #7
_0800A6B6:
	asrs r0, r0, #3
	mov r4, sp
	strh r0, [r4, #2]
	ldrh r0, [r5, #4]
	lsrs r0, r0, #3
	strh r0, [r4, #4]
	ldrh r0, [r5, #6]
	lsrs r0, r0, #3
	strh r0, [r4, #6]
	mov r0, sp
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r4, #2]
	mov sb, r0
	mov r0, r8
	mov r1, sb
	bl sub_0800AB64
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _0800A728
	ldr r1, [sp, #8]
	mov r2, r8
	mov r3, sb
	bl sub_08001378
	adds r5, r0, #0
	movs r6, #0
	ldrh r0, [r4, #4]
	subs r0, #2
	cmp r6, r0
	bge _0800A756
	mov r1, r8
	lsls r4, r1, #0x10
_0800A700:
	mov r2, sl
	ldrh r0, [r2, #6]
	adds r1, r7, #0
	orrs r1, r0
	ldr r2, [sp, #0xc]
	lsls r0, r2, #0xc
	orrs r1, r0
	strh r1, [r5]
	cmp r6, #0
	bne _0800A72C
	mov r0, sl
	ldrh r2, [r0, #0x24]
	lsrs r0, r4, #0x10
	mov r1, sb
	bl sub_0800AAC8
	b _0800A73E
	.align 2, 0
_0800A724: .4byte 0xFFFF0000
_0800A728: .4byte gUnknown_02016078
_0800A72C:
	mov r1, r8
	adds r0, r1, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sl
	ldrh r2, [r1, #4]
	mov r1, sb
	bl sub_0800AAC8
_0800A73E:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r5, #2
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, sp
	ldrh r0, [r0, #4]
	subs r0, #2
	cmp r6, r0
	blt _0800A700
_0800A756:
	mov r0, sp
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r4, sp
	ldrh r0, [r4, #2]
	ldr r2, _0800A794
	adds r0, r0, r2
	ldrh r1, [r4, #6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r0, r8
	mov r1, sb
	bl sub_0800AB64
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _0800A798
	ldr r1, [sp, #8]
	mov r2, r8
	mov r3, sb
	bl sub_08001378
	adds r5, r0, #0
	movs r6, #0
	ldrh r0, [r4, #4]
	b _0800A7D0
	.align 2, 0
_0800A794: .4byte 0x0000FFFF
_0800A798: .4byte gUnknown_02016078
_0800A79C:
	mov r2, sl
	ldrh r1, [r2, #0x1e]
	adds r0, r7, #0
	orrs r0, r1
	ldr r2, [sp, #0xc]
	lsls r1, r2, #0xc
	orrs r0, r1
	strh r0, [r5]
	mov r1, r8
	adds r0, r1, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sl
	ldrh r2, [r1, #0x1c]
	mov r1, sb
	bl sub_0800AAC8
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r5, #2
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, sp
	ldrh r0, [r0, #4]
_0800A7D0:
	subs r0, #2
	cmp r6, r0
	blt _0800A79C
	mov r0, sp
	ldrh r0, [r0]
	mov r8, r0
	mov r4, sp
	ldrh r0, [r4, #2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r0, r8
	mov r1, sb
	bl sub_0800AB64
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r6, #0
	ldrh r0, [r4, #6]
	b _0800A83E
_0800A7FA:
	mov r2, sb
	adds r4, r2, r6
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0800A874
	ldr r1, [sp, #8]
	mov r2, r8
	adds r3, r4, #0
	bl sub_08001378
	adds r5, r0, #0
	mov r0, sl
	ldrh r1, [r0, #0xe]
	adds r0, r7, #0
	orrs r0, r1
	ldr r2, [sp, #0xc]
	lsls r1, r2, #0xc
	orrs r0, r1
	strh r0, [r5]
	mov r0, sl
	ldrh r2, [r0, #0xc]
	mov r0, r8
	adds r1, r4, #0
	bl sub_0800AAC8
	adds r0, r7, #0
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, sp
	ldrh r0, [r0, #6]
_0800A83E:
	subs r0, #2
	cmp r6, r0
	blt _0800A7FA
	mov r0, sp
	ldrh r0, [r0]
	mov r4, sp
	ldr r1, _0800A878
	adds r0, r0, r1
	ldrh r2, [r4, #4]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r4, #2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r0, r8
	mov r1, sb
	bl sub_0800AB64
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r6, #0
	ldrh r0, [r4, #6]
	b _0800A8C0
	.align 2, 0
_0800A874: .4byte gUnknown_02016078
_0800A878: .4byte 0x0000FFFF
_0800A87C:
	mov r0, sb
	adds r4, r0, r6
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0800A8D8
	ldr r1, [sp, #8]
	mov r2, r8
	adds r3, r4, #0
	bl sub_08001378
	adds r5, r0, #0
	mov r2, sl
	ldrh r1, [r2, #0x16]
	adds r0, r7, #0
	orrs r0, r1
	ldr r2, [sp, #0xc]
	lsls r1, r2, #0xc
	orrs r0, r1
	strh r0, [r5]
	mov r0, sl
	ldrh r2, [r0, #0x14]
	mov r0, r8
	adds r1, r4, #0
	bl sub_0800AAC8
	adds r0, r7, #0
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, sp
	ldrh r0, [r0, #6]
_0800A8C0:
	subs r0, #2
	cmp r6, r0
	blt _0800A87C
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A8D8: .4byte gUnknown_02016078
	.syntax divided
