	.syntax unified
sub_080012BC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	mov r8, r0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	mov r0, sp
	strh r3, [r0]
	cmp r5, #0
	beq _0800133C
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _080012DE
	adds r0, #7
_080012DE:
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x10
	ldr r2, _08001338
	ldr r1, [sp, #4]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #4]
	movs r1, #2
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _080012F6
	adds r0, #7
_080012F6:
	asrs r0, r0, #3
	add r4, sp, #4
	strh r0, [r4, #2]
	ldrh r0, [r5, #4]
	lsrs r0, r0, #3
	strh r0, [r4, #4]
	ldrh r0, [r5, #6]
	lsrs r0, r0, #3
	strh r0, [r4, #6]
	ldrh r2, [r4]
	ldrh r3, [r4, #2]
	mov r0, r8
	adds r1, r7, #0
	bl sub_08001378
	adds r5, r0, #0
	movs r6, #0
	ldrh r0, [r4, #6]
	cmp r6, r0
	bhs _08001352
_0800131E:
	ldrh r1, [r4, #4]
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080019DC
	adds r5, #0x40
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r1, [r4, #6]
	cmp r6, r1
	blo _0800131E
	b _08001352
	.align 2, 0
_08001338: .4byte 0xFFFF0000
_0800133C:
	mov r0, r8
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001378
	adds r5, r0, #0
	movs r1, #0x80
	lsls r1, r1, #4
	bl sub_080019DC
_08001352:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800136A
	lsls r1, r7, #1
	movs r0, #0xb1
	lsls r0, r0, #6
	add r0, r8
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r1, #1
	strh r1, [r0]
_0800136A:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
