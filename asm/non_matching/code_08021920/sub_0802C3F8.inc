	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r5, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	cmp r5, r0
	bhs _0802C492
	movs r7, #0
	movs r0, #2
	rsbs r0, r0, #0
	mov r8, r0
_0802C412:
	adds r0, r5, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r4, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802C482
	adds r1, r4, #0
	adds r1, #0x8c
	ldr r0, _0802C49C
	strh r0, [r1]
	str r7, [r4, #0x1c]
	adds r2, r4, #0
	adds r2, #0xbf
	ldrb r0, [r2]
	movs r3, #0x41
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
	adds r2, #0xd
	ldrb r1, [r2]
	mov r0, r8
	ands r0, r1
	strb r0, [r2]
	subs r2, #4
	ldrb r1, [r2]
	mov r0, r8
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x9e
	strh r7, [r0]
	adds r0, #2
	strh r7, [r0]
	ldrb r0, [r2]
	adds r3, #0x3a
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
	ldrh r1, [r4]
	strh r1, [r4, #8]
	ldrh r0, [r4, #2]
	strh r0, [r4, #0xa]
	strh r1, [r4, #0xc]
	strh r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08035FE4
	adds r0, r4, #0
	bl sub_08036030
_0802C482:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	cmp r5, r0
	blo _0802C412
_0802C492:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C49C: .4byte 0x0000FFFF
	.syntax divided
