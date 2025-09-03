	.syntax unified
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r5, r0, #0
	mov r8, r1
	adds r4, r2, #0
	ldr r6, [sp, #0x18]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	movs r1, #0x20
	str r3, [sp]
	bl memclear
	ldrb r1, [r5, #0x1d]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #0x1d]
	movs r2, #0
	movs r0, #0xd
	strb r0, [r5, #0x1c]
	mov r0, r8
	str r0, [r5, #4]
	movs r0, #0x1f
	ands r4, r0
	lsls r4, r4, #0xd
	ldr r0, [r5, #0x1c]
	ldr r1, _08003404
	ands r0, r1
	orrs r0, r4
	str r0, [r5, #0x1c]
	strh r2, [r5, #0xe]
	strh r2, [r5, #0xc]
	strh r2, [r5, #0x12]
	ldr r3, [sp]
	strh r3, [r5, #0x10]
	movs r0, #0x1f
	ands r6, r0
	lsls r6, r6, #2
	ldrb r1, [r5, #0x1e]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r6
	strb r0, [r5, #0x1e]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08003404: .4byte 0xFFFC1FFF
	.syntax divided
