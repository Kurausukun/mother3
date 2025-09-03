	.syntax unified
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r4, r0, #0
	mov r8, r1
	mov sb, r2
	adds r5, r3, #0
	ldr r6, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0x20
	str r3, [sp]
	bl memclear
	ldrb r1, [r4, #0x1d]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x1d]
	movs r2, #0
	movs r0, #0xd
	strb r0, [r4, #0x1c]
	mov r0, r8
	str r0, [r4]
	mov r0, sb
	str r0, [r4, #4]
	movs r0, #0x1f
	ands r5, r0
	lsls r5, r5, #0xd
	ldr r0, [r4, #0x1c]
	ldr r1, _08003390
	ands r0, r1
	orrs r0, r5
	str r0, [r4, #0x1c]
	strh r2, [r4, #0xe]
	strh r2, [r4, #0xc]
	strh r2, [r4, #0x12]
	strh r6, [r4, #0x10]
	ldr r3, [sp]
	adds r0, r3, #0
	muls r0, r6, r0
	strh r0, [r4, #0x14]
	ldrb r1, [r4, #0x1d]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x1d]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08003390: .4byte 0xFFFC1FFF
	.syntax divided
