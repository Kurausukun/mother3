    .syntax unified
sub_08088F40__1VP7SettingPs:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r1, [sp, #8]
	mov sb, r2
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
	bge _08088F6C
	adds r0, #7
_08088F6C:
	asrs r0, r0, #3
	str r0, [sp, #0xc]
	mov r1, sb
	movs r2, #2
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _08088F7C
	adds r0, #7
_08088F7C:
	asrs r0, r0, #3
	ldr r3, [sp, #0xc]
	muls r0, r3, r0
	mov r1, sb
	movs r3, #0
	ldrsh r2, [r1, r3]
	cmp r2, #0
	bge _08088F8E
	adds r2, #7
_08088F8E:
	asrs r2, r2, #3
	adds r2, r0, r2
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806B828
	adds r5, r0, #0
	mov r0, sb
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r1, #0
	cmp r1, #0
	bge _08088FAA
	adds r0, r1, #7
_08088FAA:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	lsls r0, r0, #0x1a
	lsrs r4, r0, #0x18
	movs r0, #0x20
	subs r0, r0, r4
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	mov r0, sb
	movs r1, #2
	ldrsh r2, [r0, r1]
	adds r0, r2, #0
	cmp r2, #0
	bge _08088FCA
	adds r0, r2, #7
_08088FCA:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r2, r0
	movs r1, #1
	rsbs r1, r1, #0
	mov sl, r1
	lsrs r1, r3
	mvns r1, r1
	str r1, [sp, #0x10]
	mov r1, sl
	lsls r1, r4
	mvns r1, r1
	mov sl, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0xe
	adds r5, r5, r0
	adds r6, r2, #0
	add r2, sp, #4
	mov r8, r2
	b _0808901C
_08088FF2:
	ldr r0, [r5]
	mov r3, sl
	ands r0, r3
	str r0, [r5]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #0x10]
	ands r0, r1
	str r0, [r5, #0x20]
	adds r1, r6, #1
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08089018
	ldr r0, [sp, #0xc]
	subs r0, #1
	lsls r0, r0, #5
	adds r0, #4
	adds r5, r5, r0
	b _0808901A
_08089018:
	adds r5, #4
_0808901A:
	adds r6, r1, #0
_0808901C:
	movs r7, #0
	mov r2, sb
	movs r3, #2
	ldrsh r4, [r2, r3]
	mov r0, r8
	ldr r1, [sp, #8]
	bl __7SettingRC7Setting
	ldr r0, [sp, #4]
	asrs r0, r0, #0x10
	adds r4, r4, r0
	cmp r6, r4
	bge _08089038
	movs r7, #1
_08089038:
	cmp r7, #0
	bne _08088FF2
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
    .syntax divided
