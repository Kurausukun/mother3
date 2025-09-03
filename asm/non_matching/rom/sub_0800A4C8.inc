	.syntax unified
sub_0800A4C8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _0800A4EE
	adds r0, #7
_0800A4EE:
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x10
	ldr r2, _0800A66C
	ldr r1, [sp]
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	movs r2, #2
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bge _0800A506
	adds r0, #7
_0800A506:
	asrs r0, r0, #3
	mov r4, sp
	strh r0, [r4, #2]
	ldrh r0, [r5, #4]
	lsrs r0, r0, #3
	strh r0, [r4, #4]
	ldrh r0, [r5, #6]
	lsrs r0, r0, #3
	strh r0, [r4, #6]
	ldr r0, _0800A670
	mov sl, r0
	mov r0, sp
	ldrh r2, [r0]
	ldrh r3, [r4, #2]
	mov r0, sl
	mov r1, sb
	bl sub_08001378
	adds r7, r0, #0
	mov r0, sp
	ldrh r0, [r0]
	ldrh r1, [r4, #2]
	bl sub_0800AB64
	ldrh r1, [r6, #2]
	orrs r0, r1
	mov r1, r8
	lsls r1, r1, #0xc
	mov r8, r1
	orrs r0, r1
	strh r0, [r7]
	mov r0, sp
	ldrh r0, [r0]
	ldrh r1, [r4, #2]
	ldrh r2, [r6]
	bl sub_0800AAC8
	mov r0, sp
	ldrh r2, [r0]
	ldr r5, _0800A674
	adds r2, r2, r5
	ldrh r0, [r4, #4]
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldrh r3, [r4, #2]
	mov r0, sl
	mov r1, sb
	bl sub_08001378
	adds r7, r0, #0
	mov r0, sp
	ldrh r0, [r0]
	adds r0, r0, r5
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4, #2]
	bl sub_0800AB64
	ldrh r1, [r6, #0xa]
	orrs r0, r1
	mov r2, r8
	orrs r0, r2
	strh r0, [r7]
	mov r0, sp
	ldrh r0, [r0]
	adds r0, r0, r5
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4, #2]
	ldrh r2, [r6, #8]
	bl sub_0800AAC8
	mov r0, sp
	ldrh r2, [r0]
	ldrh r3, [r4, #2]
	adds r3, r3, r5
	ldrh r0, [r4, #6]
	adds r3, r3, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r0, sl
	mov r1, sb
	bl sub_08001378
	adds r7, r0, #0
	mov r0, sp
	ldrh r0, [r0]
	ldrh r1, [r4, #2]
	adds r1, r1, r5
	ldrh r2, [r4, #6]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0800AB64
	ldrh r1, [r6, #0x1a]
	orrs r0, r1
	mov r1, r8
	orrs r0, r1
	strh r0, [r7]
	mov r0, sp
	ldrh r0, [r0]
	ldrh r1, [r4, #2]
	adds r1, r1, r5
	ldrh r2, [r4, #6]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r6, #0x18]
	bl sub_0800AAC8
	mov r0, sp
	ldrh r2, [r0]
	adds r2, r2, r5
	ldrh r0, [r4, #4]
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldrh r3, [r4, #2]
	adds r3, r3, r5
	ldrh r1, [r4, #6]
	adds r3, r3, r1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r0, sl
	mov r1, sb
	bl sub_08001378
	adds r7, r0, #0
	mov r0, sp
	ldrh r0, [r0]
	adds r0, r0, r5
	ldrh r2, [r4, #4]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4, #2]
	adds r1, r1, r5
	ldrh r2, [r4, #6]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0800AB64
	ldrh r1, [r6, #0x22]
	orrs r0, r1
	mov r1, r8
	orrs r0, r1
	strh r0, [r7]
	mov r0, sp
	ldrh r0, [r0]
	adds r0, r0, r5
	ldrh r2, [r4, #4]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4, #2]
	adds r1, r1, r5
	ldrh r4, [r4, #6]
	adds r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r6, #0x20]
	bl sub_0800AAC8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A66C: .4byte 0xFFFF0000
_0800A670: .4byte gUnknown_02016078
_0800A674: .4byte 0x0000FFFF
	.syntax divided
