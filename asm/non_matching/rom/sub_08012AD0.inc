	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov sb, r5
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08012BD8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0
	bne _08012B1E
	bl sub_08012C1C
	adds r4, r0, #0
	cmp r4, #0
	beq _08012B1E
	lsls r1, r5, #4
	ldr r0, _08012B24
	adds r6, r1, r0
	ldr r5, [r6]
	ldrb r1, [r6, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08012B1E
	ldrb r0, [r5]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08012B1E
	ldrb r0, [r5, #8]
	cmp r7, r0
	blo _08012B28
_08012B1E:
	movs r0, #0
	b _08012BC6
	.align 2, 0
_08012B24: .4byte gUnknown_0200BBE0
_08012B28:
	ldrb r1, [r4, #0x14]
	movs r0, #1
	orrs r1, r0
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	mov r0, sb
	lsls r2, r0, #3
	movs r0, #7
	ands r1, r0
	orrs r1, r2
	movs r0, #0xf
	adds r2, r7, #0
	ands r2, r0
	ldrb r3, [r4, #0x15]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x15]
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	strb r1, [r4, #0x14]
	mov r0, r8
	strh r0, [r4, #0x10]
	ldr r0, [r6, #8]
	ldrb r1, [r5, #9]
	bl sub_08013778
	strh r0, [r4, #0x12]
	ldrb r0, [r5, #2]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08012B8C
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0xf
	ldr r0, [r4, #0x14]
	ldr r2, _08012B88
	ands r0, r2
	orrs r0, r1
	str r0, [r4, #0x14]
	ldrh r1, [r5, #0xa]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1b
	b _08012BA4
	.align 2, 0
_08012B88: .4byte 0xFFFE0FFF
_08012B8C:
	ldrb r0, [r5]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	lsls r0, r0, #0xc
	ldr r1, [r4, #0x14]
	ldr r2, _08012BD4
	ands r1, r2
	orrs r1, r0
	str r1, [r4, #0x14]
	ldrh r1, [r5]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x1d
_08012BA4:
	lsls r1, r1, #1
	ldrb r2, [r4, #0x16]
	movs r0, #0x3f
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x16]
	str r5, [r4]
	lsls r1, r7, #2
	ldr r0, [r6, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
	ldr r0, [r6, #8]
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0xc]
	movs r0, #1
_08012BC6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08012BD4: .4byte 0xFFFE0FFF
	.syntax divided
