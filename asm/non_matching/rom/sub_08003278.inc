	.syntax unified
sub_08003278:
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	adds r5, r0, #0
	mov r8, r1
	mov sb, r2
	adds r4, r3, #0
	ldr r3, [sp, #0x20]
	ldr r6, [sp, #0x24]
	ldr r1, [sp, #0x28]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, sp
	strh r1, [r0]
	adds r0, r5, #0
	movs r1, #0x20
	str r3, [sp, #4]
	bl memclear
	ldrb r1, [r5, #0x1d]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #0x1d]
	movs r2, #0
	movs r0, #0xc
	strb r0, [r5, #0x1c]
	mov r0, r8
	str r0, [r5]
	mov r0, sb
	str r0, [r5, #4]
	movs r0, #0x1f
	ands r4, r0
	lsls r4, r4, #0xd
	ldr r0, [r5, #0x1c]
	ldr r1, _08003310
	ands r0, r1
	orrs r0, r4
	str r0, [r5, #0x1c]
	strh r2, [r5, #0xe]
	strh r2, [r5, #0xc]
	strh r2, [r5, #0x12]
	ldr r3, [sp, #4]
	strh r3, [r5, #0x10]
	movs r0, #3
	ands r6, r0
	lsls r6, r6, #2
	ldrb r1, [r5, #0x1d]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r6
	mov r1, sp
	ldrh r2, [r1]
	movs r1, #1
	ands r1, r2
	lsls r1, r1, #4
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x1d]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08003310: .4byte 0xFFFC1FFF
	.syntax divided
