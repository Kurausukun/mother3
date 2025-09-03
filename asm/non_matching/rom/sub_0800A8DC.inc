	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r4, r0, #0
	str r1, [sp, #8]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0xc]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x10]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0800A902
	adds r0, #7
_0800A902:
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x10
	ldr r2, _0800A938
	ldr r1, [sp]
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _0800A91A
	adds r0, #7
_0800A91A:
	asrs r0, r0, #3
	mov r1, sp
	mov r7, sp
	strh r0, [r1, #2]
	ldrh r0, [r4, #4]
	lsrs r0, r0, #3
	strh r0, [r1, #4]
	ldrh r0, [r4, #6]
	lsrs r0, r0, #3
	strh r0, [r1, #6]
	movs r0, #0
	mov sl, r0
	ldrh r0, [r1, #6]
	b _0800A9C6
	.align 2, 0
_0800A938: .4byte 0xFFFF0000
_0800A93C:
	mov r0, sp
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldrh r1, [r7, #2]
	adds r1, #1
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r0, sb
	mov r1, r8
	bl sub_0800AB64
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _0800A9DC
	ldr r1, [sp, #0xc]
	mov r2, sb
	mov r3, r8
	bl sub_08001378
	adds r5, r0, #0
	movs r4, #0
	ldrh r0, [r7, #4]
	subs r0, #2
	mov r7, sl
	adds r7, #1
	cmp r4, r0
	bge _0800A9BC
_0800A982:
	ldr r0, [sp, #8]
	ldrh r1, [r0, #0x12]
	adds r0, r6, #0
	orrs r0, r1
	ldr r2, [sp, #0x10]
	lsls r1, r2, #0xc
	orrs r0, r1
	strh r0, [r5]
	mov r1, sb
	adds r0, r1, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #8]
	ldrh r2, [r1, #0x10]
	mov r1, r8
	bl sub_0800AAC8
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r5, #2
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r0, sp
	ldrh r0, [r0, #4]
	subs r0, #2
	cmp r4, r0
	blt _0800A982
_0800A9BC:
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	mov r7, sp
	ldrh r0, [r7, #6]
_0800A9C6:
	subs r0, #2
	cmp sl, r0
	blt _0800A93C
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A9DC: .4byte gUnknown_02016078
	.syntax divided
