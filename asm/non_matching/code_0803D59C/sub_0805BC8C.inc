	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10c
	str r0, [sp, #0xbc]
	adds r4, r2, #0
	movs r0, #0x6c
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, _0805BD10
	adds r7, r2, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805BD14
	adds r0, r0, r1
	str r0, [sp, #0xc0]
	add r0, sp, #8
	adds r1, r7, #0
	movs r2, #0x6c
	bl memcpy
	ldrb r0, [r7, #0x12]
	cmp r0, #0x62
	bhi _0805BCCC
	ldr r0, [r7, #0x14]
	adds r0, r0, r4
	str r0, [r7, #0x14]
_0805BCCC:
	adds r0, r7, #0
	adds r0, #0x28
	str r0, [sp, #0xf8]
	adds r1, r7, #0
	adds r1, #0x29
	str r1, [sp, #0xfc]
	adds r2, r7, #0
	adds r2, #0x2a
	str r2, [sp, #0x100]
	adds r3, r7, #0
	adds r3, #0x2b
	str r3, [sp, #0x104]
	adds r4, r7, #0
	adds r4, #0x2c
	str r4, [sp, #0x108]
	mov r5, sp
	adds r5, #0xb4
	str r5, [sp, #0xe0]
	mov r0, sp
	adds r0, #0x30
	str r0, [sp, #0xe4]
	mov r1, sp
	adds r1, #0x31
	str r1, [sp, #0xe8]
	mov r2, sp
	adds r2, #0x32
	str r2, [sp, #0xec]
	mov r3, sp
	adds r3, #0x33
	str r3, [sp, #0xf0]
	mov r4, sp
	adds r4, #0x34
	str r4, [sp, #0xf4]
	b _0805BF52
	.align 2, 0
_0805BD10: .4byte gCharStats
_0805BD14: .4byte gLevelStatTable
_0805BD18:
	ldrb r0, [r7, #0x12]
	adds r0, #1
	str r0, [sp, #0xc4]
	bl sub_0805C0A0
	mov sb, r0
	add r0, sp, #0x74
	adds r1, r7, #0
	ldr r2, [sp, #0xc0]
	mov r3, sb
	bl sub_0805C0CC
	ldr r0, [sp, #0x74]
	ldr r1, [sp, #0x78]
	mov r5, sp
	adds r5, #0x94
	str r5, [sp, #0xdc]
	adds r2, r5, #0
	str r0, [r2]
	str r1, [r2, #4]
	add r0, sp, #0x7c
	adds r1, r7, #0
	ldr r2, [sp, #0xc0]
	mov r3, sb
	bl sub_0805C0F0
	ldr r0, [sp, #0x7c]
	ldr r1, [sp, #0x80]
	add r3, sp, #0xa4
	mov r8, r3
	mov r4, r8
	str r0, [r4]
	str r1, [r4, #4]
	ldrb r0, [r7, #0x12]
	adds r0, #1
	bl sub_0805C0B4
	adds r6, r0, #0
	add r4, sp, #0x84
	adds r0, r4, #0
	adds r1, r7, #0
	ldr r2, [sp, #0xc0]
	adds r3, r6, #0
	bl sub_0805C0CC
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r5, sp, #0x9c
	str r0, [r5]
	str r1, [r5, #4]
	add r4, sp, #0x8c
	adds r0, r4, #0
	adds r1, r7, #0
	ldr r2, [sp, #0xc0]
	adds r3, r6, #0
	bl sub_0805C0F0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, sp, #0xac
	mov sl, r2
	mov r3, sl
	str r0, [r3]
	str r1, [r3, #4]
	ldr r4, [sp, #0xdc]
	ldr r1, [r4]
	ldr r3, [r5]
	ldr r0, [sp, #0xc4]
	str r0, [sp]
	ldr r4, _0805BEAC
	str r4, [sp, #4]
	mov r0, sb
	adds r2, r6, #0
	bl sub_0805C114
	str r0, [sp, #0xc8]
	ldr r2, [sp, #0xdc]
	movs r3, #4
	ldrsh r1, [r2, r3]
	movs r0, #4
	ldrsh r3, [r5, r0]
	ldr r2, [sp, #0xc4]
	str r2, [sp]
	str r4, [sp, #4]
	mov r0, sb
	adds r2, r6, #0
	bl sub_0805C114
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0805BEB0
	ldr r3, [sp, #0xcc]
	ands r1, r3
	orrs r1, r0
	str r1, [sp, #0xcc]
	mov r4, r8
	ldrb r1, [r4]
	mov r5, sl
	ldrb r3, [r5]
	ldr r0, [sp, #0xc4]
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	mov r0, sb
	adds r2, r6, #0
	bl sub_0805C114
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r4, _0805BEB4
	ldr r3, [sp, #0xd0]
	ands r4, r3
	orrs r4, r0
	str r4, [sp, #0xd0]
	mov r5, r8
	ldrb r1, [r5, #1]
	mov r0, sl
	ldrb r3, [r0, #1]
	ldr r2, [sp, #0xc4]
	str r2, [sp]
	movs r5, #0xff
	str r5, [sp, #4]
	mov r0, sb
	adds r2, r6, #0
	bl sub_0805C114
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	ldr r5, _0805BEB8
	ands r5, r4
	orrs r5, r0
	str r5, [sp, #0xd0]
	mov r0, r8
	ldrb r1, [r0, #2]
	mov r2, sl
	ldrb r3, [r2, #2]
	ldr r4, [sp, #0xc4]
	str r4, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	mov r0, sb
	adds r2, r6, #0
	bl sub_0805C114
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	ldr r4, _0805BEBC
	ands r4, r5
	orrs r4, r0
	str r4, [sp, #0xd0]
	mov r2, r8
	ldrb r1, [r2, #3]
	mov r5, sl
	ldrb r3, [r5, #3]
	ldr r0, [sp, #0xc4]
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	mov r0, sb
	adds r2, r6, #0
	bl sub_0805C114
	lsls r0, r0, #0x18
	ldr r1, _0805BEC0
	ands r4, r1
	orrs r4, r0
	str r4, [sp, #0xd0]
	mov r3, r8
	ldrb r1, [r3, #4]
	ldrb r3, [r5, #4]
	ldr r4, [sp, #0xc4]
	str r4, [sp]
	movs r5, #0xff
	str r5, [sp, #4]
	mov r0, sb
	adds r2, r6, #0
	bl sub_0805C114
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0805BEB4
	ldr r2, [sp, #0xd4]
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #0xd4]
	ldr r0, [r7, #0x20]
	movs r3, #0
	ldr r4, [sp, #0xc8]
	cmp r4, r0
	ble _0805BE96
	subs r3, r4, r0
_0805BE96:
	ldr r5, [sp, #0xcc]
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	movs r2, #0x24
	ldrsh r0, [r7, r2]
	ldrh r2, [r7, #0x24]
	cmp r1, r0
	ble _0805BEC4
	subs r1, r1, r0
	b _0805BEC6
	.align 2, 0
_0805BEAC: .4byte 0x000003E7
_0805BEB0: .4byte 0xFFFF0000
_0805BEB4: .4byte 0xFFFFFF00
_0805BEB8: .4byte 0xFFFF00FF
_0805BEBC: .4byte 0xFF00FFFF
_0805BEC0: .4byte 0x00FFFFFF
_0805BEC4:
	movs r1, #0
_0805BEC6:
	ldr r0, [r7, #0x20]
	adds r0, r0, r3
	str r0, [r7, #0x20]
	adds r0, r2, r1
	strh r0, [r7, #0x24]
	ldr r0, [r7, #0x18]
	adds r0, r0, r3
	str r0, [r7, #0x18]
	ldrh r0, [r7, #0x1c]
	adds r0, r0, r1
	strh r0, [r7, #0x1c]
	ldr r5, [sp, #0xd0]
	lsls r0, r5, #0x18
	lsrs r2, r0, #0x18
	ldr r1, [sp, #0xf8]
	ldrb r0, [r1]
	adds r1, r0, #0
	cmp r0, r2
	bhs _0805BEEE
	adds r1, r2, #0
_0805BEEE:
	ldr r2, [sp, #0xf8]
	strb r1, [r2]
	ldr r3, [sp, #0xd0]
	lsrs r0, r3, #8
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r4, [sp, #0xfc]
	ldrb r0, [r4]
	adds r1, r0, #0
	cmp r0, r2
	bhs _0805BF06
	adds r1, r2, #0
_0805BF06:
	ldr r5, [sp, #0xfc]
	strb r1, [r5]
	ldr r1, [sp, #0xd0]
	lsrs r0, r1, #0x10
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r3, [sp, #0x100]
	ldrb r0, [r3]
	adds r1, r0, #0
	cmp r0, r2
	bhs _0805BF1E
	adds r1, r2, #0
_0805BF1E:
	ldr r4, [sp, #0x100]
	strb r1, [r4]
	ldr r5, [sp, #0xd0]
	lsrs r2, r5, #0x18
	ldr r1, [sp, #0x104]
	ldrb r0, [r1]
	adds r1, r0, #0
	cmp r0, r2
	bhs _0805BF32
	adds r1, r2, #0
_0805BF32:
	ldr r2, [sp, #0x104]
	strb r1, [r2]
	ldr r3, [sp, #0xd4]
	lsls r0, r3, #0x18
	lsrs r2, r0, #0x18
	ldr r4, [sp, #0x108]
	ldrb r0, [r4]
	adds r1, r0, #0
	cmp r0, r2
	bhs _0805BF48
	adds r1, r2, #0
_0805BF48:
	ldr r5, [sp, #0x108]
	strb r1, [r5]
	add r0, sp, #0xc4
	ldrb r0, [r0]
	strb r0, [r7, #0x12]
_0805BF52:
	ldrb r0, [r7, #0x12]
	adds r2, r0, #1
	cmp r2, #0x63
	bgt _0805BF6A
	adds r0, r7, #0
	ldr r1, [sp, #0xc0]
	bl sub_0805C1A8
	ldr r1, [r7, #0x14]
	cmp r1, r0
	blo _0805BF6A
	b _0805BD18
_0805BF6A:
	add r1, sp, #8
	ldrb r0, [r7, #0x12]
	ldrb r1, [r1, #0x12]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0805C08C
	mov sb, r1
	ldr r3, [sp, #0xe0]
	ldr r2, [r3]
	add r6, sp, #0xb4
	ands r2, r1
	orrs r2, r0
	str r2, [r6]
	ldr r0, [r7, #0x20]
	ldr r1, [sp, #0x28]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	ldr r4, _0805C090
	mov sl, r4
	mov r3, sl
	ands r3, r2
	orrs r3, r0
	str r3, [r6]
	ldrh r0, [r7, #0x24]
	add r1, sp, #8
	ldrh r1, [r1, #0x24]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	ldr r4, _0805C094
	adds r2, r4, #0
	ands r2, r3
	orrs r2, r0
	str r2, [r6]
	ldr r5, [sp, #0xf8]
	ldrb r1, [r5]
	ldr r3, [sp, #0xe4]
	ldrb r0, [r3]
	subs r1, r1, r0
	lsls r1, r1, #0x18
	ldr r3, _0805C098
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	str r0, [r6]
	ldr r5, [sp, #0xfc]
	ldrb r0, [r5]
	ldr r2, [sp, #0xe8]
	ldrb r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, [r6, #4]
	mov r5, sb
	ands r2, r5
	orrs r2, r0
	str r2, [r6, #4]
	ldr r1, [sp, #0x100]
	ldrb r0, [r1]
	ldr r5, [sp, #0xec]
	ldrb r1, [r5]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	mov r5, sl
	ands r5, r2
	orrs r5, r0
	str r5, [r6, #4]
	ldr r1, [sp, #0x104]
	ldrb r0, [r1]
	ldr r2, [sp, #0xf0]
	ldrb r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	ands r4, r5
	orrs r4, r0
	str r4, [r6, #4]
	ldr r5, [sp, #0x108]
	ldrb r0, [r5]
	ldr r2, [sp, #0xf4]
	ldrb r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	ands r3, r4
	orrs r3, r0
	str r3, [r6, #4]
	ldrb r0, [r7]
	cmp r0, #2
	beq _0805C026
	cmp r0, #4
	bne _0805C06C
_0805C026:
	ldrb r0, [r7]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0805C09C
	adds r1, r1, r0
	adds r4, r1, #0
	adds r4, #0xc0
	movs r5, #0x1f
_0805C03C:
	ldrh r0, [r4]
	cmp r0, #0
	beq _0805C064
	adds r1, r0, #0
	adds r0, r7, #0
	bl sub_0805C364
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0805C064
	ldrb r0, [r4, #2]
	ldrb r3, [r7, #0x12]
	cmp r0, r3
	bhi _0805C064
	ldrh r1, [r4]
	adds r0, r7, #0
	movs r2, #1
	bl sub_0805C248
_0805C064:
	adds r4, #4
	subs r5, #1
	cmp r5, #0
	bge _0805C03C
_0805C06C:
	ldr r4, [sp, #0xe0]
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r5, [sp, #0xbc]
	str r0, [r5]
	str r1, [r5, #4]
	ldr r0, [sp, #0xbc]
	add sp, #0x10c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r2}
	bx r2
	.align 2, 0
_0805C08C: .4byte 0xFFFFFF00
_0805C090: .4byte 0xFFFF00FF
_0805C094: .4byte 0xFF00FFFF
_0805C098: .4byte 0x00FFFFFF
_0805C09C: .4byte gLevelStatTable
	.syntax divided
