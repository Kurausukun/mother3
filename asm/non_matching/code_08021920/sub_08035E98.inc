	.syntax unified
sub_08035E98:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r4, [sp, #0x28]
	ldr r5, [sp, #0x2c]
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	mov sl, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, [sp]
	bl sub_08036030
	movs r0, #0x18
	bl sub_0803B800
	adds r2, r0, #0
	cmp r5, #0
	bne _08035EDE
	movs r5, #1
_08035EDE:
	ldrb r1, [r2, #0x14]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x74
	ands r0, r1
	strb r0, [r2, #0x14]
	movs r0, #0
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	strh r0, [r2, #6]
	strh r4, [r2, #8]
	strh r5, [r2]
	movs r0, #1
	strh r0, [r2, #0xa]
	strh r7, [r2, #0xc]
	mov r0, sb
	strh r0, [r2, #0x10]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r1, #0x78
	cmp r0, r1
	bne _08035F1A
	strh r7, [r2, #0xe]
	b _08035F1E
_08035F1A:
	mov r1, sl
	strh r1, [r2, #0xe]
_08035F1E:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08035F32
	mov r0, sb
	strh r0, [r2, #0x12]
	b _08035F36
_08035F32:
	mov r1, r8
	strh r1, [r2, #0x12]
_08035F36:
	ldr r0, [sp]
	str r2, [r0, #0x38]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
