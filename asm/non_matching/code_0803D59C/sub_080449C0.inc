	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x1c
	adds r7, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, sp
	strh r3, [r0]
	ldr r0, _08044A24
	add r6, sp, #4
	adds r1, r6, #0
	movs r2, #0x14
	bl sub_08001B18
	add r0, sp, #0x14
	strh r4, [r0]
	adds r0, #2
	strh r5, [r0]
	movs r5, #0
	ldrh r0, [r7, #0xc]
	cmp r5, r0
	bhs _08044ACA
	mov r8, r6
	mov r3, sp
_080449FA:
	adds r0, r7, #0
	adds r0, #0xe
	adds r0, r0, r5
	ldrb r2, [r0]
	ldr r0, _08044A28
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r0, r4, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r1, r8
	strh r0, [r1, #2]
	movs r0, #2
	strb r0, [r1, #0xc]
	ldrh r0, [r3]
	cmp r0, #0
	beq _08044A2C
	strh r5, [r6, #4]
	b _08044A36
	.align 2, 0
_08044A24: .4byte gUnknown_080C629C
_08044A28: .4byte gUnknown_080C6994
_08044A2C:
	ldr r0, _08044A40
	adds r0, r2, r0
	ldrb r0, [r0]
	adds r0, #5
	strh r0, [r6, #4]
_08044A36:
	cmp r2, #2
	beq _08044A44
	cmp r2, #4
	beq _08044A76
	b _08044A98
	.align 2, 0
_08044A40: .4byte gUnknown_080C69B8
_08044A44:
	adds r0, r7, #0
	adds r0, #0x13
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0x47
	beq _08044A66
	cmp r0, #0x47
	bgt _08044A5E
	cmp r0, #4
	beq _08044A66
	cmp r0, #0x3c
	beq _08044A66
	b _08044A98
_08044A5E:
	cmp r0, #0x8d
	beq _08044A66
	cmp r0, #0xf1
	bne _08044A98
_08044A66:
	movs r0, #0xc4
	lsls r0, r0, #2
	strh r0, [r6, #2]
	ldrh r0, [r3]
	cmp r0, #0
	bne _08044A98
	movs r0, #7
	b _08044A96
_08044A76:
	adds r0, r7, #0
	adds r0, #0x13
	adds r0, r0, r5
	ldrb r0, [r0]
	subs r0, #0xc
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08044A98
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r6, #2]
	ldrh r0, [r3]
	cmp r0, #0
	bne _08044A98
	movs r0, #6
_08044A96:
	strh r0, [r6, #4]
_08044A98:
	adds r4, r6, #0
	adds r0, r4, #0
	str r3, [sp, #0x18]
	bl sub_08046A64
	ldr r3, [sp, #0x18]
	cmp r5, #0
	bne _08044AB0
	ldrh r0, [r4, #0x12]
	adds r0, #0x14
	strh r0, [r4, #0x12]
	b _08044ABE
_08044AB0:
	cmp r5, #0
	blt _08044ABE
	cmp r5, #3
	bgt _08044ABE
	ldrh r0, [r6, #0x10]
	adds r0, #0x16
	strh r0, [r6, #0x10]
_08044ABE:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r4, [r7, #0xc]
	cmp r5, r4
	blo _080449FA
_08044ACA:
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
