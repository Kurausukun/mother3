	.syntax unified
sub_080881AC:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	adds r5, r0, #0
	str r2, [sp, #0x2c]
	mov sb, r3
	ldr r2, [sp, #0x64]
	ldr r4, [sp, #0x68]
	ldr r0, [sp, #0x6c]
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	add r3, sp, #4
	movs r1, #0
	adds r0, r3, #0
	strh r1, [r0]
	strh r1, [r3, #2]
	add r7, sp, #8
	strh r1, [r7]
	strh r1, [r7, #2]
	add r6, sp, #0xc
	strh r1, [r6]
	strh r1, [r6, #2]
	add r0, sp, #0x10
	adds r1, r5, #0
	bl sub_080884B4
	ldr r0, [sp, #0x10]
	str r0, [sp, #4]
	add r0, sp, #0x14
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080884B4
	ldr r0, [sp, #0x14]
	str r0, [sp, #8]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r0, #0
	ldrsh r4, [r7, r0]
	movs r3, #2
	ldrsh r0, [r2, r3]
	movs r2, #2
	ldrsh r3, [r7, r2]
	add r2, sp, #0x18
	adds r1, r1, r4
	adds r0, r0, r3
	strh r1, [r2]
	strh r0, [r2, #2]
	add r4, sp, #0x1c
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080884F4
	movs r3, #0
	ldrsh r2, [r4, r3]
	movs r1, #0
	ldrsh r0, [r7, r1]
	subs r2, r2, r0
	movs r3, #2
	ldrsh r1, [r4, r3]
	movs r3, #2
	ldrsh r0, [r7, r3]
	subs r1, r1, r0
	add r0, sp, #0x20
	strh r2, [r0]
	strh r1, [r0, #2]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0xc]
	str r6, [sp]
	adds r0, r5, #0
	mov r1, sl
	add r2, sp, #4
	adds r3, r7, #0
	bl sub_0808855C
	bl sub_0806B070
	mov r8, r0
	mov r0, sb
	bl sub_0806D644
	adds r4, r0, #0
	mov r0, sb
	bl sub_0806D648
	str r0, [sp]
	mov r0, r8
	mov r1, sl
	movs r2, #0
	adds r3, r4, #0
	bl sub_0806B7B8
	ldr r0, [sp, #0x60]
	bl sub_0806D538
	adds r4, r0, #0
	ldr r0, [sp, #0x60]
	bl sub_0806D53C
	str r0, [sp]
	mov r0, r8
	mov r1, sl
	movs r2, #0
	adds r3, r4, #0
	bl sub_0806B9C0
	ldr r0, [sp, #0x2c]
	add r1, sp, #4
	bl sub_08087FE8
	str r0, [sp, #0x30]
	add r0, sp, #0x24
	ldr r1, [sp, #0x2c]
	bl sub_08087FD4
	ldr r0, [sp, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080882AA
	adds r0, #7
_080882AA:
	asrs r5, r0, #3
	mov r0, r8
	mov r1, sl
	bl sub_0806B744
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, r8
	mov r1, sl
	bl sub_0806B95C
	lsls r0, r0, #0xc
	orrs r6, r0
	lsls r0, r6, #0x10
	lsrs r6, r0, #0x10
	mov r0, r8
	mov r1, sl
	adds r2, r7, #0
	bl sub_0806B410
	adds r2, r0, #0
	mov r0, r8
	mov r1, sl
	bl sub_0806B680
	str r0, [sp, #0x38]
	add r0, sp, #0x28
	mov r1, r8
	mov r2, sl
	bl sub_0806BB34
	ldr r0, [sp, #0x28]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080882F4
	adds r0, #7
_080882F4:
	asrs r1, r0, #3
	movs r4, #0
	mov r7, sp
	movs r2, #0xe
	ldrsh r0, [r7, r2]
	cmp r4, r0
	bge _08088352
	add r3, sp, #0xc
	mov sb, r3
	lsls r5, r5, #1
	str r5, [sp, #0x34]
	lsls r1, r1, #1
	mov ip, r1
_0808830E:
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x38]
	movs r3, #0
	mov r5, sb
	movs r7, #0
	ldrsh r0, [r5, r7]
	adds r4, #8
	str r4, [sp, #0x3c]
	cmp r3, r0
	bge _08088338
	add r4, sp, #0xc
_08088324:
	ldrh r0, [r2]
	adds r0, r6, r0
	strh r0, [r1]
	adds r2, #2
	adds r1, #2
	adds r3, #8
	movs r5, #0
	ldrsh r0, [r4, r5]
	cmp r3, r0
	blt _08088324
_08088338:
	ldr r7, [sp, #0x30]
	ldr r0, [sp, #0x34]
	adds r7, r7, r0
	str r7, [sp, #0x30]
	ldr r1, [sp, #0x38]
	add r1, ip
	str r1, [sp, #0x38]
	ldr r4, [sp, #0x3c]
	mov r2, sb
	movs r3, #2
	ldrsh r0, [r2, r3]
	cmp r4, r0
	blt _0808830E
_08088352:
	mov r0, r8
	mov r1, sl
	bl sub_0806B3F4
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
