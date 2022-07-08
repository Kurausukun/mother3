    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r1, [sp, #0x3c]
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #8]
	bl sub_08088E60__15Struct_09F85088i
	str r0, [sp, #0x10]
	bl sub_0806B070
	adds r4, r0, #0
	mov r0, sp
	adds r1, r4, #0
	movs r2, #0
	bl sub_0806BB34
	ldr r0, [sp]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0808937A
	adds r0, #7
_0808937A:
	asrs r0, r0, #3
	str r0, [sp, #0x14]
	ldr r1, [sp, #0xc]
	movs r2, #2
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _0808938A
	adds r0, #7
_0808938A:
	asrs r0, r0, #3
	ldr r3, [sp, #0x14]
	muls r0, r3, r0
	ldr r1, [sp, #0xc]
	movs r3, #0
	ldrsh r2, [r1, r3]
	cmp r2, #0
	bge _0808939C
	adds r2, #7
_0808939C:
	asrs r2, r2, #3
	adds r2, r0, r2
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806B828
	adds r3, r0, #0
	ldr r4, [sp, #0xc]
	movs r0, #0
	ldrsh r1, [r4, r0]
	adds r0, r1, #0
	cmp r1, #0
	bge _080893B8
	adds r0, r1, #7
_080893B8:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x18
	mov sb, r0
	movs r0, #0x20
	mov r1, sb
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r4, [sp, #0xc]
	movs r0, #2
	ldrsh r2, [r4, r0]
	adds r0, r2, #0
	cmp r2, #0
	bge _080893DE
	adds r0, r2, #7
_080893DE:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r2, r0
	lsls r6, r5, #4
	orrs r6, r5
	lsls r1, r6, #8
	orrs r6, r1
	lsls r1, r6, #0x10
	orrs r6, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0xe
	adds r5, r3, r0
	mov r8, r2
	mov r1, sp
	adds r1, #4
	str r1, [sp, #0x18]
	b _0808948C
_08089400:
	ldr r2, [sp, #0x10]
	ldrh r1, [r2]
	ldr r3, _08089484 @ =gUnknown_08115A7C
	movs r0, #0xf
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r2, [r0]
	lsls r2, r2, #0x10
	movs r0, #0xf0
	ands r0, r1
	lsrs r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	orrs r2, r0
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r0, r1
	lsrs r0, r0, #6
	adds r0, r0, r3
	ldr r0, [r0]
	lsls r4, r0, #0x10
	lsrs r1, r1, #0xc
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r0, [r1]
	orrs r4, r0
	adds r3, r4, #0
	mov r0, sl
	lsrs r3, r0
	adds r1, r4, #0
	mov r0, sb
	lsls r1, r0
	adds r0, r2, #0
	mov r4, sl
	lsrs r0, r4
	orrs r1, r0
	mov r0, sb
	lsls r2, r0
	ands r2, r6
	ldr r0, [r5]
	orrs r0, r2
	str r0, [r5]
	ands r1, r6
	ldr r0, [r5, #0x20]
	orrs r0, r1
	str r0, [r5, #0x20]
	ands r3, r6
	ldr r0, [r5, #0x40]
	orrs r0, r3
	str r0, [r5, #0x40]
	ldr r1, [sp, #0x10]
	adds r1, #2
	str r1, [sp, #0x10]
	mov r1, r8
	adds r1, #1
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08089488
	ldr r0, [sp, #0x14]
	subs r0, #1
	lsls r0, r0, #5
	adds r0, #4
	adds r5, r5, r0
	b _0808948A
	.align 2, 0
_08089484: .4byte gUnknown_08115A7C
_08089488:
	adds r5, #4
_0808948A:
	mov r8, r1
_0808948C:
	movs r7, #0
	ldr r2, [sp, #0xc]
	movs r3, #2
	ldrsh r4, [r2, r3]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #8]
	bl __7SettingRC7Setting
	ldr r0, [sp, #4]
	asrs r0, r0, #0x10
	adds r4, r4, r0
	cmp r8, r4
	bge _080894A8
	movs r7, #1
_080894A8:
	cmp r7, #0
	bne _08089400
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
    .syntax divided
