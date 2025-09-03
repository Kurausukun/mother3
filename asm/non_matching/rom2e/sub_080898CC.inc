	.syntax unified
sub_080898CC:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r5, r0, #0
	ldr r0, [r5, #0x2c]
	ldr r0, [r0]
	cmp r0, #1
	beq _08089904
	cmp r0, #1
	bgt _080898EC
	cmp r0, #0
	beq _080898F2
	b _08089A14
_080898EC:
	cmp r0, #2
	beq _08089930
	b _08089A14
_080898F2:
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0x78
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x50
	strh r0, [r1]
	movs r0, #2
	b _08089A12
_08089904:
	ldr r3, [r5, #0x30]
	ldr r2, [r3]
	adds r2, #0x40
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	ldr r0, [sp]
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x30]
	ldr r1, [r0]
	adds r1, #0x50
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _08089A12
_08089930:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	ldr r0, [sp, #4]
	str r0, [r5, #0x40]
	movs r7, #0
	str r7, [sp, #0x14]
	movs r0, #0
	mov r8, r0
	adds r0, r5, #0
	adds r0, #0x34
	ldr r1, [r0, #4]
	adds r2, r5, #0
	adds r2, #0x40
	str r2, [sp, #0x1c]
	str r0, [sp, #0x18]
	mov r3, sp
	adds r3, #0x10
	str r3, [sp, #0x20]
	cmp r7, r1
	bge _080899CE
	str r0, [sp, #0x24]
	add r6, sp, #8
	add r7, sp, #0xc
	mov sl, r7
	mov sb, r2
_08089966:
	mov r0, r8
	lsls r4, r0, #2
	ldr r1, [sp, #0x24]
	ldr r0, [r1, #8]
	adds r0, r0, r4
	ldr r3, [r0]
	ldr r2, [r3]
	adds r2, #0x40
	movs r7, #0
	ldrsh r1, [r2, r7]
	adds r0, r6, #0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	mov r0, sb
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r7, #0
	ldrsh r3, [r6, r7]
	movs r2, #2
	ldrsh r0, [r0, r2]
	movs r7, #2
	ldrsh r2, [r6, r7]
	adds r1, r1, r3
	adds r0, r0, r2
	mov r2, sl
	strh r1, [r2]
	strh r0, [r2, #2]
	ldr r0, [sp, #0xc]
	str r0, [r5, #0x40]
	ldr r3, [sp, #0x24]
	ldr r0, [r3, #8]
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r2, [r0]
	adds r2, #0x50
	movs r7, #0
	ldrsh r1, [r2, r7]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	ldr r1, [sp, #0x14]
	adds r1, r1, r0
	str r1, [sp, #0x14]
	movs r2, #1
	add r8, r2
	ldr r3, [sp, #0x24]
	ldr r0, [r3, #4]
	cmp r8, r0
	blt _08089966
_080899CE:
	ldr r6, [sp, #0x1c]
	ldr r7, [sp, #0x18]
	ldr r4, [r7, #4]
	movs r1, #0
	ldrsh r0, [r6, r1]
	cmp r4, #0
	beq _080899E2
	adds r1, r4, #0
	bl Div
_080899E2:
	adds r7, r0, #0
	movs r2, #2
	ldrsh r0, [r6, r2]
	cmp r4, #0
	beq _080899F2
	adds r1, r4, #0
	bl Div
_080899F2:
	adds r1, r0, #0
	add r0, sp, #0x10
	strh r7, [r0]
	ldr r3, [sp, #0x20]
	strh r1, [r3, #2]
	ldr r0, [sp, #0x10]
	str r0, [r5, #0x40]
	ldr r7, [sp, #0x18]
	ldr r1, [r7, #4]
	cmp r1, #0
	beq _08089A10
	ldr r0, [sp, #0x14]
	bl Div
	b _08089A12
_08089A10:
	ldr r0, [sp, #0x14]
_08089A12:
	str r0, [r5, #0x44]
_08089A14:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
