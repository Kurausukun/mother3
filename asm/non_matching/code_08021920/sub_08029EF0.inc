	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r0, #0
	bl get_obj_direct
	adds r6, r0, #0
	movs r7, #1
	movs r0, #0
	mov sb, r0
	movs r1, #3
	mov r8, r1
_08029F0A:
	adds r0, r7, #0
	bl get_obj_direct
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0xbc
	ldrb r0, [r3]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08029FAC
	adds r0, r6, #0
	adds r0, #0x8b
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x8b
	strb r0, [r1]
	adds r1, #1
	ldr r0, _08029FC4
	strh r0, [r1]
	mov r5, sb
	str r5, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x92
	strh r5, [r0]
	adds r1, #2
	movs r0, #1
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	movs r2, #0x1c
	ands r2, r0
	ldrb r0, [r3]
	movs r5, #0x1d
	rsbs r5, r5, #0
	adds r1, r5, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	adds r0, r6, #0
	adds r0, #0xbd
	ldrb r1, [r0]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1e
	adds r5, r4, #0
	adds r5, #0xbd
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #3
	ldrb r0, [r5]
	movs r3, #0x19
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	bl sub_08036CD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #5
	ldrb r1, [r5]
	movs r3, #0x61
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	ldrh r0, [r6]
	strh r0, [r4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #2]
_08029FAC:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #4
	bls _08029F0A
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029FC4: .4byte 0x0000FFFF
	.syntax divided
