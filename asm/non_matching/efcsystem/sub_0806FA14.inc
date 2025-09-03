	.syntax unified
sub_0806FA14:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r1, [r7, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sb, r0
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	mov r0, sb
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldrh r0, [r7, #0x34]
	subs r0, #1
	strh r0, [r7, #0x34]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806FB0A
	ldr r5, _0806FB5C
	movs r0, #0
	adds r1, r5, #0
	bl sub_0805D234
	adds r4, r0, #0
	ldr r3, [sp]
	lsls r6, r3, #0x10
	asrs r6, r6, #0x10
	ldr r0, _0806FB60
	mov r8, r0
	ands r4, r5
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_08069594
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r4, r4, #2
	add r4, r8
	ldr r1, [r4]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sub_08069594
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r1, [r7, #0x2c]
	ldrh r0, [r1, #6]
	ldrh r1, [r1, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x34]
	movs r0, #0
	movs r1, #0xff
	bl sub_0805D234
	ldrh r1, [r7, #0x34]
	muls r0, r1, r0
	strh r0, [r7, #0x34]
	movs r3, #0x34
	ldrsh r0, [r7, r3]
	ldr r1, [r7, #0x2c]
	asrs r0, r0, #8
	ldrh r1, [r1, #4]
	adds r0, r0, r1
	strh r0, [r7, #0x34]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	subs r0, r5, r6
	ldrh r1, [r7, #0x34]
	cmp r1, #0
	beq _0806FAF0
	bl Div
_0806FAF0:
	strh r0, [r7, #0x30]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	ldrh r1, [r7, #0x34]
	cmp r1, #0
	beq _0806FB08
	bl Div
_0806FB08:
	strh r0, [r7, #0x32]
_0806FB0A:
	mov r3, sb
	ldr r2, [r3, #0x1c]
	adds r2, #0xb8
	movs r1, #0
	ldrsh r0, [r2, r1]
	add r0, sb
	ldr r3, [sp]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldrh r3, [r7, #0x30]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r2, #4]
	bl _call_via_r2
	mov r0, sb
	ldr r2, [r0, #0x1c]
	adds r2, #0xc0
	movs r1, #0
	ldrsh r0, [r2, r1]
	add r0, sb
	mov r3, sl
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldrh r7, [r7, #0x32]
	adds r1, r1, r7
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r2, #4]
	bl _call_via_r2
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806FB5C: .4byte 0x000003FF
_0806FB60: .4byte gUnknown_080EF880
	.syntax divided
