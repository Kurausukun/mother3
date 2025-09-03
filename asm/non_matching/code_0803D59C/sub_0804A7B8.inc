	.syntax unified
sub_0804A7B8:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _0804A7D8
	adds r0, #7
_0804A7D8:
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x10
	ldr r2, _0804A8A8
	ldr r1, [sp]
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	movs r1, #2
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _0804A7F0
	adds r0, #7
_0804A7F0:
	asrs r0, r0, #3
	mov r4, sp
	strh r0, [r4, #2]
	ldrh r0, [r5, #4]
	lsrs r0, r0, #3
	strh r0, [r4, #4]
	ldrh r0, [r5, #6]
	lsrs r0, r0, #3
	strh r0, [r4, #6]
	ldr r0, _0804A8AC
	mov r8, r0
	mov r0, sp
	ldrh r2, [r0]
	ldrh r3, [r4, #2]
	mov r0, r8
	adds r1, r7, #0
	bl sub_08001378
	adds r2, r0, #0
	lsls r6, r6, #0xc
	mov r0, sb
	ldrh r1, [r0]
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r2]
	mov r0, sp
	ldrh r2, [r0]
	ldr r5, _0804A8B0
	adds r2, r2, r5
	ldrh r1, [r4, #4]
	adds r2, r2, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldrh r3, [r4, #2]
	mov r0, r8
	adds r1, r7, #0
	bl sub_08001378
	adds r2, r0, #0
	mov r0, sb
	ldrh r1, [r0, #4]
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r2]
	mov r0, sp
	ldrh r2, [r0]
	ldrh r3, [r4, #2]
	adds r3, r3, r5
	ldrh r1, [r4, #6]
	adds r3, r3, r1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r0, r8
	adds r1, r7, #0
	bl sub_08001378
	adds r2, r0, #0
	mov r0, sb
	ldrh r1, [r0, #0xc]
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r2]
	mov r0, sp
	ldrh r2, [r0]
	adds r2, r2, r5
	ldrh r1, [r4, #4]
	adds r2, r2, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldrh r3, [r4, #2]
	adds r3, r3, r5
	ldrh r4, [r4, #6]
	adds r3, r3, r4
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r0, r8
	adds r1, r7, #0
	bl sub_08001378
	adds r2, r0, #0
	mov r1, sb
	ldrh r0, [r1, #0x10]
	orrs r6, r0
	strh r6, [r2]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A8A8: .4byte 0xFFFF0000
_0804A8AC: .4byte gUnknown_02016078
_0804A8B0: .4byte 0x0000FFFF
	.syntax divided
