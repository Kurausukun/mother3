	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sb, r0
	mov sl, r1
	adds r4, r2, #0
	str r3, [sp]
	bl sub_0806BE14
	adds r5, r0, #0
	mov r0, sb
	bl sub_08088660
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	ldr r2, [sp, #4]
	bl sub_0806BFB0
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806C010
	adds r7, r0, #0
	asrs r4, r4, #1
	str r4, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r1, [sp, #4]
	cmp r0, r1
	blt _08088A38
	b _08088B7E
_08088A38:
	mov r0, sb
	ldr r1, [sp, #0xc]
	bl sub_08088668
	adds r4, r0, #0
	ldr r0, [r4]
	str r0, [r7]
	ldr r0, [r4, #4]
	strh r0, [r7, #4]
	ldrb r1, [r7, #1]
	movs r2, #4
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r7, #1]
	ldrh r1, [r4, #2]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x17
	mov r3, sl
	movs r5, #0
	ldrsh r0, [r3, r5]
	adds r1, r1, r0
	ldr r0, _08088B90
	ands r1, r0
	ldrh r2, [r7, #2]
	ldr r0, _08088B94
	ands r0, r2
	orrs r0, r1
	strh r0, [r7, #2]
	ldrb r0, [r3, #2]
	ldrb r1, [r4]
	adds r0, r0, r1
	strb r0, [r7]
	movs r0, #3
	ldr r2, [sp, #8]
	ands r2, r0
	lsls r2, r2, #2
	ldrb r0, [r7, #5]
	movs r3, #0xd
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r7, #5]
	mov r0, sb
	adds r1, r4, #0
	bl sub_08088BA8
	ldr r5, _08088B98
	adds r1, r5, #0
	ands r0, r1
	ldrh r1, [r7, #4]
	ldr r3, _08088B9C
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strh r1, [r7, #4]
	mov r0, sb
	adds r1, r4, #0
	bl sub_08088C08
	lsls r0, r0, #4
	ldrb r2, [r7, #5]
	movs r1, #0xf
	ands r1, r2
	orrs r1, r0
	strb r1, [r7, #5]
	mov r0, sb
	ldr r1, [sp]
	ldr r2, [sp, #0x30]
	bl sub_08088C54
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #1
	ldrb r2, [r7, #3]
	movs r5, #0x3f
	rsbs r5, r5, #0
	adds r1, r5, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r7, #3]
	ldrh r6, [r4, #2]
	lsls r6, r6, #0x17
	ldrb r4, [r4]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	lsrs r2, r2, #6
	lsls r2, r2, #2
	ldrb r0, [r7, #1]
	lsrs r0, r0, #6
	lsls r0, r0, #4
	adds r2, r2, r0
	ldr r1, _08088BA0
	adds r0, r2, r1
	movs r5, #0
	ldrsh r3, [r0, r5]
	lsrs r0, r3, #0x1f
	adds r3, r3, r0
	asrs r3, r3, #1
	asrs r6, r6, #0x17
	adds r3, r6, r3
	ldr r0, _08088BA4
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r2, r4, #0x10
	mov ip, r2
	adds r4, r4, r0
	lsls r4, r4, #0x10
	ldr r5, [sp, #0x30]
	ldrh r0, [r5]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r1, r3, #0
	muls r1, r0, r1
	adds r0, r1, #0
	lsls r0, r0, #0x10
	ldrh r1, [r5, #2]
	lsrs r2, r4, #0x10
	mov r8, r2
	asrs r4, r4, #0x10
	adds r2, r4, #0
	muls r2, r1, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r4, sl
	movs r5, #0
	ldrsh r1, [r4, r5]
	adds r1, r1, r6
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r1, r1, r0
	ldr r0, _08088B90
	ands r1, r0
	ldrh r3, [r7, #2]
	ldr r0, _08088B94
	ands r0, r3
	orrs r0, r1
	strh r0, [r7, #2]
	mov r1, ip
	lsrs r5, r1, #0x10
	ldrb r3, [r4, #2]
	adds r5, r5, r3
	mov r4, r8
	subs r2, r2, r4
	adds r5, r5, r2
	strb r5, [r7]
	adds r7, #8
	ldr r5, [sp, #0xc]
	adds r5, #1
	str r5, [sp, #0xc]
	ldr r0, [sp, #4]
	cmp r5, r0
	bge _08088B7E
	b _08088A38
_08088B7E:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08088B90: .4byte 0x000001FF
_08088B94: .4byte 0xFFFFFE00
_08088B98: .4byte 0x000003FF
_08088B9C: .4byte 0xFFFFFC00
_08088BA0: .4byte gUnknown_0811568C
_08088BA4: .4byte gUnknown_0811568E
	.syntax divided
