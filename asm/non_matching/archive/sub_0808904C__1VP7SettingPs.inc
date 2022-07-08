    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r1, [sp, #8]
	mov sl, r2
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
	bge _08089078
	adds r0, #7
_08089078:
	asrs r0, r0, #3
	str r0, [sp, #0xc]
	mov r1, sl
	movs r2, #2
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _08089088
	adds r0, #7
_08089088:
	asrs r0, r0, #3
	ldr r3, [sp, #0xc]
	muls r0, r3, r0
	mov r1, sl
	movs r3, #0
	ldrsh r2, [r1, r3]
	cmp r2, #0
	bge _0808909A
	adds r2, #7
_0808909A:
	asrs r2, r2, #3
	adds r2, r0, r2
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806B828
	adds r5, r0, #0
	mov r4, sl
	movs r0, #0
	ldrsh r1, [r4, r0]
	adds r0, r1, #0
	cmp r1, #0
	bge _080890B6
	adds r0, r1, #7
_080890B6:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	lsls r0, r0, #0x1a
	lsrs r3, r0, #0x18
	movs r0, #0x20
	subs r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r1, sl
	movs r0, #2
	ldrsh r2, [r1, r0]
	adds r1, r2, #0
	cmp r2, #0
	bge _080890D6
	adds r1, r2, #7
_080890D6:
	asrs r1, r1, #3
	lsls r1, r1, #3
	subs r1, r2, r1
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #0x10]
	movs r0, #0xff
	mov r8, r0
	lsrs r0, r4
	mvns r0, r0
	str r0, [sp, #0x14]
	mov r0, r8
	lsls r0, r3
	mov r8, r0
	ldr r0, [sp, #0x10]
	lsrs r0, r4
	mov r4, r8
	orrs r0, r4
	mvns r0, r0
	mov r8, r0
	ldr r0, [sp, #0x10]
	lsls r0, r3
	mvns r0, r0
	str r0, [sp, #0x10]
	lsls r1, r1, #0x10
	asrs r1, r1, #0xe
	adds r5, r5, r1
	adds r6, r2, #0
	add r0, sp, #4
	mov sb, r0
	b _08089146
_08089114:
	ldr r0, [r5]
	ldr r1, [sp, #0x10]
	ands r0, r1
	str r0, [r5]
	ldr r0, [r5, #0x20]
	mov r2, r8
	ands r0, r2
	str r0, [r5, #0x20]
	ldr r0, [r5, #0x40]
	ldr r3, [sp, #0x14]
	ands r0, r3
	str r0, [r5, #0x40]
	adds r1, r6, #1
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08089142
	ldr r0, [sp, #0xc]
	subs r0, #1
	lsls r0, r0, #5
	adds r0, #4
	adds r5, r5, r0
	b _08089144
_08089142:
	adds r5, #4
_08089144:
	adds r6, r1, #0
_08089146:
	movs r7, #0
	mov r0, sl
	movs r1, #2
	ldrsh r4, [r0, r1]
	mov r0, sb
	ldr r1, [sp, #8]
	bl __7SettingRC7Setting
	ldr r0, [sp, #4]
	asrs r0, r0, #0x10
	adds r4, r4, r0
	cmp r6, r4
	bge _08089162
	movs r7, #1
_08089162:
	cmp r7, #0
	bne _08089114
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.syntax divided
