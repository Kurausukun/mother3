	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	adds r2, r6, #0
	adds r2, #0xc8
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	bl sub_080355AC
	adds r1, r6, #0
	adds r1, #0x9e
	strh r0, [r1]
	ldr r0, [r6, #0x40]
	ldrb r1, [r0, #4]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	movs r0, #0xbc
	adds r0, r0, r6
	mov r8, r0
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #2
	mov r0, r8
	ldrb r2, [r0]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	ldr r0, [r6, #0x40]
	ldrb r1, [r0, #5]
	adds r7, r6, #0
	adds r7, #0xbd
	movs r4, #3
	lsrs r1, r1, #6
	lsls r1, r1, #3
	ldrb r2, [r7]
	movs r0, #0x19
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r7]
	ldr r1, [r6, #0x40]
	ldrh r0, [r1]
	strh r0, [r6]
	ldrh r0, [r1, #2]
	strh r0, [r6, #2]
	mov r5, sp
	adds r0, r6, #0
	mov r1, sp
	bl sub_08036BEC
	ldrb r0, [r7]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	bl sub_08036CD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r0, r4
	lsls r0, r0, #5
	ldrb r1, [r7]
	movs r3, #0x61
	rsbs r3, r3, #0
	ands r3, r1
	orrs r3, r0
	strb r3, [r7]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1e
	mov r0, sp
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	ldrh r2, [r5, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	adds r0, r3, #0
	bl sub_0801A978
	str r0, [r6, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08034E8C
	mov r0, r8
	ldrb r2, [r0]
	lsls r0, r2, #0x19
	cmp r0, #0
	blt _08034EA4
	adds r0, r6, #0
	adds r0, #0x85
	ldrb r4, [r0]
	adds r0, #1
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x88
	ldrh r1, [r1]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	bl sub_08035C0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08033374
	b _08034EA4
_08034E8C:
	adds r0, r6, #0
	adds r0, #0x85
	ldrb r0, [r0]
	ldr r2, [r6, #0x40]
	ldrh r1, [r2, #4]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x17
	ldrb r2, [r2, #4]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1b
	bl sub_080332AC
_08034EA4:
	ldr r0, [r6, #0x40]
	bl sub_08034FC8
	str r0, [r6, #0x40]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
