	.syntax unified
sub_08088044:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov r8, r0
	mov sb, r3
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	add r5, sp, #0xc
	movs r0, #0
	strh r0, [r5]
	strh r0, [r5, #2]
	add r6, sp, #0x10
	strh r0, [r6]
	strh r0, [r6, #2]
	add r1, sp, #0x14
	mov sl, r1
	strh r0, [r1]
	strh r0, [r1, #2]
	add r0, sp, #0x18
	mov r1, r8
	bl sub_080884B4
	ldr r0, [sp, #0x18]
	str r0, [sp, #0xc]
	mov r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r0, #0
	ldrsh r4, [r5, r0]
	movs r3, #2
	ldrsh r0, [r2, r3]
	movs r2, #2
	ldrsh r3, [r5, r2]
	add r2, sp, #0x1c
	adds r1, r1, r4
	adds r0, r0, r3
	strh r1, [r2]
	strh r0, [r2, #2]
	add r4, sp, #0x20
	adds r0, r4, #0
	mov r1, r8
	bl sub_080884F4
	movs r3, #0
	ldrsh r2, [r4, r3]
	movs r1, #0
	ldrsh r0, [r5, r1]
	subs r2, r2, r0
	movs r3, #2
	ldrsh r1, [r4, r3]
	movs r3, #2
	ldrsh r0, [r5, r3]
	subs r1, r1, r0
	add r0, sp, #0x24
	strh r2, [r0]
	strh r1, [r0, #2]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x14]
	mov r0, sl
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_0808855C
	bl sub_0806B070
	adds r6, r0, #0
	adds r1, r7, #0
	bl sub_0806B814
	adds r2, r0, #0
	subs r2, #1
	ldr r0, _080881A4
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r3, #1
	bl sub_0806B758
	adds r4, r0, #0
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_0806B744
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_0806B95C
	lsls r0, r0, #0xc
	mov r1, r8
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_0806B410
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_0806B680
	adds r4, r0, #0
	add r0, sp, #0x28
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_0806BB34
	ldr r0, [sp, #0x28]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0808813E
	adds r0, #7
_0808813E:
	asrs r0, r0, #3
	mov sb, r0
	movs r3, #0
	mov r2, sl
	movs r5, #2
	ldrsh r0, [r2, r5]
	cmp r3, r0
	bge _0808818C
	ldr r2, _080881A8
_08088150:
	mov r1, sl
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _0808815C
	adds r0, #7
_0808815C:
	asrs r0, r0, #3
	lsls r1, r0, #1
	cmp r1, #0
	ble _0808817A
	add r0, sp, #4
	mov r5, r8
	strh r5, [r0]
	str r0, [r2]
	str r4, [r2, #4]
	asrs r0, r1, #1
	movs r1, #0x81
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0808817A:
	mov r1, sb
	lsls r0, r1, #1
	adds r4, r4, r0
	adds r3, #8
	mov r5, sl
	movs r1, #2
	ldrsh r0, [r5, r1]
	cmp r3, r0
	blt _08088150
_0808818C:
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_0806B3F4
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080881A4: .4byte gUnknown_02001E38
_080881A8: .4byte 0x040000D4
	.syntax divided
