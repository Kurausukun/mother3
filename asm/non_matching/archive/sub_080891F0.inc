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
	mov sl, r0
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
	bge _0808922E
	adds r0, #7
_0808922E:
	asrs r0, r0, #3
	str r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	movs r2, #2
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _0808923E
	adds r0, #7
_0808923E:
	asrs r0, r0, #3
	ldr r3, [sp, #0x10]
	muls r0, r3, r0
	ldr r1, [sp, #0xc]
	movs r3, #0
	ldrsh r2, [r1, r3]
	cmp r2, #0
	bge _08089250
	adds r2, #7
_08089250:
	asrs r2, r2, #3
	adds r2, r0, r2
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806B828
	adds r3, r0, #0
	ldr r0, [sp, #0xc]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r1, #0
	cmp r1, #0
	bge _0808926C
	adds r0, r1, #7
_0808926C:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	movs r0, #0x20
	ldr r1, [sp, #0x14]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	movs r1, #2
	ldrsh r2, [r0, r1]
	adds r0, r2, #0
	cmp r2, #0
	bge _08089292
	adds r0, r2, #7
_08089292:
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
	add r2, sp, #4
	mov sb, r2
	b _0808930C
_080892B2:
	ldr r3, _08089304 @ =gUnknown_08115A3C
	mov r0, sl
	ldrb r2, [r0]
	movs r0, #0xf
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r1, [r0]
	lsls r1, r1, #0x10
	lsrs r2, r2, #4
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r0, [r2]
	orrs r1, r0
	adds r2, r1, #0
	ldr r3, [sp, #0x18]
	lsrs r2, r3
	ldr r0, [sp, #0x14]
	lsls r1, r0
	ands r1, r6
	ldr r0, [r5]
	orrs r0, r1
	str r0, [r5]
	ands r2, r6
	ldr r0, [r5, #0x20]
	orrs r0, r2
	str r0, [r5, #0x20]
	movs r1, #1
	add sl, r1
	mov r1, r8
	adds r1, #1
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08089308
	ldr r0, [sp, #0x10]
	subs r0, #1
	lsls r0, r0, #5
	adds r0, #4
	adds r5, r5, r0
	b _0808930A
	.align 2, 0
_08089304: .4byte gUnknown_08115A3C
_08089308:
	adds r5, #4
_0808930A:
	mov r8, r1
_0808930C:
	movs r7, #0
	ldr r2, [sp, #0xc]
	movs r3, #2
	ldrsh r4, [r2, r3]
	mov r0, sb
	ldr r1, [sp, #8]
	bl __7SettingRC7Setting
	ldr r0, [sp, #4]
	asrs r0, r0, #0x10
	adds r4, r4, r0
	cmp r8, r4
	bge _08089328
	movs r7, #1
_08089328:
	cmp r7, #0
	bne _080892B2
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
    .syntax divided
