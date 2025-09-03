	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r0, [sp, #0x24]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sl, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, _08038324
	ldrh r2, [r5]
	ldrh r3, [r5, #2]
	movs r1, #0
	bl sub_08001378
	adds r3, r0, #0
	movs r0, #0
	b _0803838C
	.align 2, 0
_08038324: .4byte gUnknown_02016078
_08038328:
	movs r6, #0
	adds r0, #1
	mov r8, r0
	ldrh r0, [r5, #4]
	cmp r6, r0
	bhs _0803837A
	ldr r7, _080383A4
	ldr r1, _080383A8
	mov sb, r1
	ldr r0, [sp]
	lsls r0, r0, #4
	mov ip, r0
_08038340:
	ldrh r2, [r4]
	strh r2, [r3]
	adds r0, r7, #0
	ands r0, r2
	cmp r0, #0
	beq _0803836A
	ldr r1, [r3]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	add r1, sl
	ands r1, r7
	mov r0, sb
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	ldrb r1, [r3, #1]
	movs r0, #0xf
	ands r0, r1
	mov r1, ip
	orrs r0, r1
	strb r0, [r3, #1]
_0803836A:
	adds r4, #2
	adds r3, #2
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r5, #4]
	cmp r6, r0
	blo _08038340
_0803837A:
	ldrh r0, [r5, #4]
	movs r1, #0x20
	subs r1, r1, r0
	lsls r1, r1, #1
	adds r3, r3, r1
	adds r4, r4, r1
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
_0803838C:
	ldrh r1, [r5, #6]
	cmp r0, r1
	blo _08038328
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080383A4: .4byte 0x000003FF
_080383A8: .4byte 0xFFFFFC00
	.syntax divided
