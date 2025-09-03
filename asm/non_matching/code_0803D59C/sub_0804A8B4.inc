	.syntax unified
sub_0804A8B4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _0804A8D4
	adds r0, #7
_0804A8D4:
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x10
	ldr r2, _0804A92C
	ldr r1, [sp]
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	movs r1, #2
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _0804A8EC
	adds r0, #7
_0804A8EC:
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
	lsrs r2, r0, #0x10
	ldrh r3, [r4, #2]
	ldr r0, _0804A930
	adds r1, r7, #0
	bl sub_08001378
	adds r2, r0, #0
	movs r3, #0
	ldrh r0, [r4, #4]
	subs r0, #2
	cmp r3, r0
	bge _0804A94C
	mov r0, r8
	lsls r4, r0, #0xc
	mov r5, sp
_0804A924:
	cmp r3, #0
	bne _0804A934
	ldrh r1, [r6, #0x12]
	b _0804A936
	.align 2, 0
_0804A92C: .4byte 0xFFFF0000
_0804A930: .4byte gUnknown_02016078
_0804A934:
	ldrh r1, [r6, #2]
_0804A936:
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #2
	ldrh r0, [r5, #4]
	subs r0, #2
	cmp r3, r0
	blt _0804A924
_0804A94C:
	mov r0, sp
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r4, sp
	ldrh r0, [r4, #2]
	ldr r1, _0804AA30
	adds r0, r0, r1
	ldrh r1, [r4, #6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _0804AA34
	adds r1, r7, #0
	bl sub_08001378
	adds r2, r0, #0
	movs r3, #0
	ldrh r0, [r4, #4]
	subs r0, #2
	cmp r3, r0
	bge _0804A998
	mov r0, r8
	lsls r5, r0, #0xc
	mov r4, sp
_0804A980:
	ldrh r1, [r6, #0xe]
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
	blt _0804A980
_0804A998:
	mov r0, sp
	ldrh r2, [r0]
	mov r4, sp
	ldrh r0, [r4, #2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _0804AA34
	adds r1, r7, #0
	bl sub_08001378
	adds r2, r0, #0
	movs r3, #0
	ldrh r0, [r4, #6]
	subs r0, #2
	cmp r3, r0
	bge _0804A9D8
	mov r1, r8
	lsls r5, r1, #0xc
	mov r4, sp
_0804A9C0:
	ldrh r1, [r6, #6]
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #0x40
	ldrh r0, [r4, #6]
	subs r0, #2
	cmp r3, r0
	blt _0804A9C0
_0804A9D8:
	mov r0, sp
	ldrh r0, [r0]
	mov r4, sp
	ldr r1, _0804AA30
	adds r0, r0, r1
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrh r0, [r4, #2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _0804AA34
	adds r1, r7, #0
	bl sub_08001378
	adds r2, r0, #0
	movs r3, #0
	ldrh r0, [r4, #6]
	subs r0, #2
	cmp r3, r0
	bge _0804AA24
	mov r0, r8
	lsls r5, r0, #0xc
	mov r4, sp
_0804AA0C:
	ldrh r1, [r6, #0xa]
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #0x40
	ldrh r0, [r4, #6]
	subs r0, #2
	cmp r3, r0
	blt _0804AA0C
_0804AA24:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AA30: .4byte 0x0000FFFF
_0804AA34: .4byte gUnknown_02016078
	.syntax divided
