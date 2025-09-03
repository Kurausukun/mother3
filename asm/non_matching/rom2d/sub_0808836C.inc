	.syntax unified
sub_0808836C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r4, r0, #0
	mov r8, r2
	adds r2, r3, #0
	ldr r6, [sp, #0x54]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	add r3, sp, #4
	movs r1, #0
	adds r0, r3, #0
	strh r1, [r0]
	strh r1, [r3, #2]
	add r7, sp, #8
	strh r1, [r7]
	strh r1, [r7, #2]
	add r5, sp, #0xc
	strh r1, [r5]
	strh r1, [r5, #2]
	add r0, sp, #0x10
	adds r1, r4, #0
	bl sub_080884B4
	ldr r0, [sp, #0x10]
	str r0, [sp, #4]
	add r0, sp, #0x14
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_080884B4
	ldr r0, [sp, #0x14]
	str r0, [sp, #8]
	add r0, sp, #0x18
	adds r1, r4, #0
	ldr r2, [sp, #0x58]
	bl sub_080884F4
	ldr r0, [sp, #0x18]
	str r0, [sp, #0xc]
	str r5, [sp]
	adds r0, r4, #0
	mov r1, sb
	add r2, sp, #4
	adds r3, r7, #0
	bl sub_0808855C
	bl sub_0806B070
	str r0, [sp, #0x24]
	mov r0, r8
	add r1, sp, #4
	bl sub_08087FE8
	mov sl, r0
	add r0, sp, #0x1c
	mov r1, r8
	bl sub_08087FD4
	ldr r0, [sp, #0x1c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080883F6
	adds r0, #7
_080883F6:
	asrs r6, r0, #3
	ldr r0, [sp, #0x24]
	mov r1, sb
	bl sub_0806B744
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, [sp, #0x24]
	mov r1, sb
	bl sub_0806B95C
	lsls r0, r0, #0xc
	orrs r5, r0
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
	ldr r0, [sp, #0x24]
	mov r1, sb
	adds r2, r7, #0
	bl sub_0806B410
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	mov r1, sb
	bl sub_0806B680
	str r0, [sp, #0x2c]
	add r0, sp, #0x20
	ldr r1, [sp, #0x24]
	mov r2, sb
	bl sub_0806BB34
	ldr r0, [sp, #0x20]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08088440
	adds r0, #7
_08088440:
	asrs r1, r0, #3
	movs r4, #0
	mov r2, sp
	movs r3, #0xe
	ldrsh r0, [r2, r3]
	cmp r4, r0
	bge _0808849A
	add r7, sp, #0xc
	mov r8, r7
	lsls r6, r6, #1
	str r6, [sp, #0x28]
	lsls r1, r1, #1
	mov ip, r1
_0808845A:
	mov r2, sl
	ldr r1, [sp, #0x2c]
	movs r3, #0
	mov r6, r8
	movs r7, #0
	ldrsh r0, [r6, r7]
	adds r4, #8
	str r4, [sp, #0x30]
	cmp r3, r0
	bge _08088484
	add r4, sp, #0xc
_08088470:
	ldrh r0, [r2]
	adds r0, r5, r0
	strh r0, [r1]
	adds r2, #2
	adds r1, #2
	adds r3, #8
	movs r6, #0
	ldrsh r0, [r4, r6]
	cmp r3, r0
	blt _08088470
_08088484:
	ldr r7, [sp, #0x28]
	add sl, r7
	ldr r0, [sp, #0x2c]
	add r0, ip
	str r0, [sp, #0x2c]
	ldr r4, [sp, #0x30]
	mov r1, r8
	movs r2, #2
	ldrsh r0, [r1, r2]
	cmp r4, r0
	blt _0808845A
_0808849A:
	ldr r0, [sp, #0x24]
	mov r1, sb
	bl sub_0806B3F4
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
