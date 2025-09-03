	.syntax unified
sub_080031F0:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	mov sl, r1
	adds r7, r2, #0
	adds r6, r3, #0
	ldr r5, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	ldr r0, [sp, #0x34]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r4, #0
	movs r1, #0x20
	str r2, [sp]
	str r3, [sp, #4]
	bl memclear
	ldrb r1, [r4, #0x1d]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x1d]
	movs r0, #0
	mov sb, r0
	strb r5, [r4, #0x1c]
	mov r0, sl
	str r0, [r4]
	str r7, [r4, #8]
	mov r0, sb
	str r0, [r4, #4]
	ldr r0, [r4, #0x1c]
	ldr r1, _08003274
	ands r0, r1
	str r0, [r4, #0x1c]
	mov r0, sb
	strh r0, [r4, #0xc]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x12]
	ldr r2, [sp]
	strh r2, [r4, #0x16]
	ldr r3, [sp, #4]
	strh r3, [r4, #0x18]
	mov r0, r8
	strh r0, [r4, #0x1a]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003274: .4byte 0xFFFC1FFF
	.syntax divided
