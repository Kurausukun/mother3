	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r1, r3, #0
	cmp r5, #0
	bne _08010A66
	ldr r0, _08010A84
	ldrb r0, [r0, #0xf]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08010A66
	b _08010C36
_08010A66:
	cmp r5, #1
	bne _08010A76
	ldr r0, _08010A84
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _08010A76
	b _08010C36
_08010A76:
	cmp r3, #3
	beq _08010B5E
	cmp r3, #3
	bgt _08010A88
	cmp r3, #1
	beq _08010AF4
	b _08010C24
	.align 2, 0
_08010A84: .4byte gGame
_08010A88:
	cmp r1, #5
	beq _08010A94
	cmp r1, #7
	bne _08010A92
	b _08010BBC
_08010A92:
	b _08010C24
_08010A94:
	ldr r4, _08010AC8
	lsls r0, r5, #2
	adds r0, r0, r4
	ldrb r0, [r0, #0x1d]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bne _08010AD0
	adds r0, r5, #0
	bl sub_0801A638
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x11
	cmp r0, r1
	bne _08010AD0
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r1, _08010ACC
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x40
	b _08010BEA
	.align 2, 0
_08010AC8: .4byte gGame
_08010ACC: .4byte 0x000058E5
_08010AD0:
	movs r0, #2
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x14
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08011ABC
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	b _08010B56
_08010AF4:
	ldr r4, _08010B28
	lsls r0, r5, #2
	adds r0, r0, r4
	ldrb r0, [r0, #0x1d]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bne _08010B30
	adds r0, r5, #0
	bl sub_0801A638
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x11
	cmp r0, r1
	bne _08010B30
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r2, _08010B2C
	adds r0, r0, r2
	ldrb r1, [r0]
	movs r2, #0x40
	b _08010BEA
	.align 2, 0
_08010B28: .4byte gGame
_08010B2C: .4byte 0x000058E5
_08010B30:
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r4, #0x14
	str r4, [sp, #8]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_08011BA4
	adds r2, r7, #0
	adds r2, #0xa
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
_08010B56:
	movs r3, #0
	bl sub_08010C48
	b _08010C24
_08010B5E:
	ldr r4, _08010B8C
	lsls r0, r5, #2
	adds r0, r0, r4
	ldrb r0, [r0, #0x1c]
	lsrs r0, r0, #6
	cmp r0, #3
	bne _08010B94
	adds r0, r5, #0
	bl sub_0801A61C
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x11
	cmp r0, r1
	bne _08010B94
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r1, _08010B90
	adds r0, r0, r1
	b _08010BE6
	.align 2, 0
_08010B8C: .4byte gGame
_08010B90: .4byte 0x000058E5
_08010B94:
	movs r4, #0
	str r4, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r0, #0x16
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #2
	bl sub_08011C58
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	movs r3, #0
	bl sub_0801124C
	b _08010C24
_08010BBC:
	ldr r4, _08010BF0
	lsls r0, r5, #2
	adds r0, r0, r4
	ldrb r0, [r0, #0x1c]
	lsrs r0, r0, #6
	cmp r0, #3
	bne _08010BF8
	adds r0, r5, #0
	bl sub_0801A61C
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x11
	cmp r0, r1
	bne _08010BF8
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r2, _08010BF4
	adds r0, r0, r2
_08010BE6:
	ldrb r1, [r0]
	movs r2, #0x20
_08010BEA:
	orrs r1, r2
	strb r1, [r0]
	b _08010C36
	.align 2, 0
_08010BF0: .4byte gGame
_08010BF4: .4byte 0x000058E5
_08010BF8:
	movs r4, #0
	str r4, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r0, #0x16
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_08011DA4
	adds r1, r6, #0
	adds r1, #0xf
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r4, [sp]
	adds r0, r5, #0
	adds r2, r7, #0
	movs r3, #0x1e
	bl sub_0801124C
_08010C24:
	ldr r1, _08010C40
	adds r0, r5, #1
	lsls r0, r0, #1
	ldr r2, _08010C44
	adds r1, r1, r2
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r1, #1
	strh r1, [r0]
_08010C36:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010C40: .4byte gSomeBlend
_08010C44: .4byte 0x00002C90
	.syntax divided
