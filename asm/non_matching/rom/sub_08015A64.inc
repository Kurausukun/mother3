	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	movs r0, #0
	bl get_obj_direct
	adds r6, r0, #0
	ldr r3, _08015AA4
	ldr r1, _08015AA8
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r1, _08015AAC
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _08015AB0
	ldr r2, _08015AB4
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #0
	bne _08015AB8
	adds r0, r3, #0
	adds r0, #0x50
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_080012BC
	b _08015AC6
	.align 2, 0
_08015AA4: .4byte gSomeBlend
_08015AA8: .4byte 0x00011D9C
_08015AAC: .4byte gUnknown_080C2A90
_08015AB0: .4byte gGame
_08015AB4: .4byte 0x00005962
_08015AB8:
	ldrh r0, [r3, #8]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r1, r7, #0
	ldrh r2, [r3, #8]
	orrs r1, r0
	strh r1, [r3, #8]
_08015AC6:
	ldr r4, _08015B50
	ldrb r0, [r4]
	cmp r0, #8
	beq _08015AD0
	b _08015BD0
_08015AD0:
	ldr r1, _08015B54
	ldrb r0, [r1, #0x1c]
	cmp r0, #4
	bne _08015AE4
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #1
	bl sub_08016F68
_08015AE4:
	ldr r1, _08015B58
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #0x1d
	bls _08015BB2
	ldr r7, _08015B5C
	adds r2, r4, r7
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #9
	strb r0, [r4]
	ldr r4, _08015B60
	ldr r0, _08015B64
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08015B68
	adds r0, r4, r1
	ldrb r1, [r0]
	ldr r2, _08015B6C
	adds r0, r4, r2
	strb r1, [r0]
	bl sub_0802691C
	bl sub_0805B7D4
	ldr r1, _08015B70
	adds r5, r1, #0
	adds r5, #0x66
	strb r0, [r5]
	bl sub_0805B7D4
	cmp r0, #1
	beq _08015B40
	adds r0, r6, #0
	add r1, sp, #0x10
	bl sub_08036BEC
	add r0, sp, #0x10
	bl sub_08026760
_08015B40:
	ldrb r1, [r5]
	cmp r1, #1
	beq _08015B88
	cmp r1, #1
	bgt _08015B74
	cmp r1, #0
	beq _08015B7A
	b _08015B9C
	.align 2, 0
_08015B50: .4byte gGame
_08015B54: .4byte gUnknown_02000008
_08015B58: .4byte 0x00005962
_08015B5C: .4byte 0x00009D14
_08015B60: .4byte gSomeBlend
_08015B64: .4byte 0x000121B8
_08015B68: .4byte 0x00011D9C
_08015B6C: .4byte 0x000121C0
_08015B70: .4byte gEncounter
_08015B74:
	cmp r1, #2
	beq _08015B94
	b _08015B9C
_08015B7A:
	ldr r7, _08015B84
	adds r0, r4, r7
	strb r1, [r0]
	b _08015B9C
	.align 2, 0
_08015B84: .4byte 0x000121C1
_08015B88:
	ldr r0, _08015B90
	adds r1, r4, r0
	movs r0, #2
	b _08015B9A
	.align 2, 0
_08015B90: .4byte 0x000121C1
_08015B94:
	ldr r2, _08015BC4
	adds r1, r4, r2
	movs r0, #1
_08015B9A:
	strb r0, [r1]
_08015B9C:
	ldr r0, _08015BC8
	ldrb r1, [r0, #8]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08015BAE
	ldr r1, _08015BCC
	movs r0, #3
	strb r0, [r1]
_08015BAE:
	bl sub_08026AF8
_08015BB2:
	bl sub_08004FB4
	bl sub_08001960
	bl sub_08005C4C
	movs r0, #0
	b _08015CA8
	.align 2, 0
_08015BC4: .4byte 0x000121C1
_08015BC8: .4byte gGame
_08015BCC: .4byte gEncounter
_08015BD0:
	ldr r7, _08015CB8
	adds r0, r4, r7
	ldrh r0, [r0]
	subs r0, #0x1e
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #0x50
	bne _08015C0A
	bl sub_08026BCC
	ldr r0, _08015CBC
	ldr r4, _08015CC0
	ldr r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
	ldr r0, _08015CC4
	ldr r1, [r4]
	movs r2, #1
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	movs r3, #0xa
	bl sub_080031F0
_08015C0A:
	ldr r1, _08015CC8
	ldr r0, _08015CCC
	adds r6, r1, r0
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	adds r4, r1, #0
	cmp r0, #0
	bne _08015C62
	ldr r1, _08015CD0
	adds r5, r4, r1
	ldrb r3, [r5]
	mov r2, r8
	ldrb r2, [r2, #3]
	cmp r3, r2
	bhs _08015C62
	ldr r7, _08015CD4
	adds r2, r4, r7
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08015CD8
	adds r2, r4, r0
	ldrb r1, [r2]
	adds r7, #8
	adds r0, r4, r7
	strb r1, [r0]
	ldr r1, _08015CDC
	adds r0, r4, r1
	strb r3, [r0]
	adds r0, r3, #1
	strb r0, [r5]
	ldr r3, _08015CE0
	ldrb r1, [r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	ldrb r5, [r5]
	adds r0, r0, r5
	adds r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r6]
_08015C62:
	ldrh r0, [r4]
	movs r1, #0
	ldr r0, _08015CE4
	strh r0, [r4]
	ldrh r0, [r4, #2]
	ldr r0, _08015CE8
	strh r0, [r4, #2]
	ldrh r0, [r4, #4]
	strh r1, [r4, #4]
	bl sub_08004FB4
	ldr r1, _08015CC4
	ldrb r0, [r1, #0x1c]
	cmp r0, #1
	bne _08015C8C
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0x20
	movs r3, #0
	bl sub_08016F68
_08015C8C:
	bl sub_08001960
	bl sub_08005C4C
	mov r2, sb
	cmp r2, #0x3c
	bne _08015C9E
	bl sub_0800882C
_08015C9E:
	movs r0, #0
	mov r7, sb
	cmp r7, #0x5a
	bls _08015CA8
	movs r0, #1
_08015CA8:
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08015CB8: .4byte 0x00005962
_08015CBC: .4byte gUnknown_03005314
_08015CC0: .4byte gUnknown_02000028
_08015CC4: .4byte gUnknown_02000008
_08015CC8: .4byte gSomeBlend
_08015CCC: .4byte 0x00011D9F
_08015CD0: .4byte 0x00011D9E
_08015CD4: .4byte 0x000121B8
_08015CD8: .4byte 0x00011D9C
_08015CDC: .4byte 0x000121C2
_08015CE0: .4byte gUnknown_080C2A9C
_08015CE4: .4byte 0x00001E41
_08015CE8: .4byte 0x0000070C
	.syntax divided
