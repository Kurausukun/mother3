	.syntax unified
sub_0804AA38:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	adds r7, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _0804AA5C
	adds r0, #7
_0804AA5C:
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x10
	ldr r2, _0804AA90
	ldr r1, [sp]
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	movs r1, #2
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _0804AA74
	adds r0, #7
_0804AA74:
	asrs r0, r0, #3
	mov r1, sp
	mov r4, sp
	strh r0, [r1, #2]
	ldrh r0, [r5, #4]
	lsrs r0, r0, #3
	strh r0, [r1, #4]
	ldrh r0, [r5, #6]
	lsrs r0, r0, #3
	strh r0, [r1, #6]
	movs r5, #0
	ldrh r0, [r1, #6]
	b _0804AAE8
	.align 2, 0
_0804AA90: .4byte 0xFFFF0000
_0804AA94:
	mov r0, sp
	ldrh r2, [r0]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldrh r0, [r4, #2]
	adds r0, #1
	lsls r3, r5, #0x10
	asrs r3, r3, #0x10
	adds r3, r3, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r0, _0804AAFC
	mov r1, sb
	bl sub_08001378
	adds r2, r0, #0
	movs r3, #0
	ldrh r0, [r4, #4]
	subs r0, #2
	adds r6, r5, #1
	cmp r3, r0
	bge _0804AAE0
	mov r0, r8
	lsls r5, r0, #0xc
	mov r4, sp
_0804AAC8:
	ldrh r1, [r7, #8]
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #2
	ldrh r0, [r4, #4]
	subs r0, #2
	cmp r3, r0
	blt _0804AAC8
_0804AAE0:
	lsls r0, r6, #0x10
	lsrs r5, r0, #0x10
	mov r4, sp
	ldrh r0, [r4, #6]
_0804AAE8:
	subs r0, #2
	cmp r5, r0
	blt _0804AA94
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AAFC: .4byte gUnknown_02016078
	.syntax divided
