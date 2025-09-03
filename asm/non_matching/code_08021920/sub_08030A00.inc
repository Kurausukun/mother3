	.syntax unified
sub_08030A00:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	mov r8, r0
	movs r7, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	cmp r7, r0
	blo _08030A16
	b _08030B64
_08030A16:
	mov r6, sp
_08030A18:
	adds r0, r7, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xcb
	ldrb r0, [r5]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _08030A36
	adds r0, r4, #0
	bl sub_08032CC8
_08030A36:
	adds r0, r4, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08030A44
	b _08030B52
_08030A44:
	adds r0, r4, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08030A62
	ldr r0, _08030A7C
	ldr r1, _08030A80
	adds r0, r0, r1
	ldr r0, [r0]
	lsrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08030B52
_08030A62:
	ldrb r0, [r5]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08030A84
	adds r0, r4, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sp
	bl sub_0801A548
	b _08030A8E
	.align 2, 0
_08030A7C: .4byte gGame
_08030A80: .4byte 0x00009D10
_08030A84:
	ldr r0, _08030AD0
	ldrh r1, [r0]
	strh r1, [r6]
	ldrh r0, [r0, #2]
	strh r0, [r6, #2]
_08030A8E:
	ldrh r2, [r6]
	ldr r1, _08030AD4
	ldr r0, [sp, #4]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	ldrh r0, [r6, #2]
	add r1, sp, #4
	strh r0, [r1, #2]
	movs r0, #0xf0
	strh r0, [r1, #4]
	movs r0, #0xa0
	strh r0, [r1, #6]
	adds r0, r4, #0
	adds r0, #0xc7
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _08030AFA
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_08035600
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08030AD8
	adds r0, r4, #0
	adds r0, #0xc8
	ldrb r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0]
	b _08030B52
	.align 2, 0
_08030AD0: .4byte gUnknown_02001004
_08030AD4: .4byte 0xFFFF0000
_08030AD8:
	adds r2, r4, #0
	adds r2, #0xc8
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08030B52
	adds r0, r4, #0
	bl sub_08031480
	b _08030B52
_08030AFA:
	adds r0, r4, #0
	adds r0, #0xcc
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _08030B2E
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_08035600
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08030B2E
	adds r0, r4, #0
	adds r0, #0xc8
	ldrb r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0]
	lsls r1, r1, #0x1a
	cmp r1, #0
	bge _08030B52
	adds r0, r4, #0
	bl sub_08032B34
	b _08030B52
_08030B2E:
	adds r0, r4, #0
	bl sub_08035A88
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08030B52
	adds r2, r4, #0
	adds r2, #0xc8
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_080359DC
	adds r0, r4, #0
	bl sub_08030D34
_08030B52:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r0, r8
	adds r0, #0xb4
	ldrb r0, [r0]
	cmp r7, r0
	bhs _08030B64
	b _08030A18
_08030B64:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
