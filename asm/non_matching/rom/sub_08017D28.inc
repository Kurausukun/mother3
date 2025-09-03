	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r3, r0, #0
	adds r5, r1, #0
	movs r0, #0
	mov ip, r0
	ldr r1, _08017D70
	movs r2, #0
	ldrsh r1, [r1, r2]
	str r1, [sp]
	movs r4, #0x20
	rsbs r4, r4, #0
	mov sl, r4
	ldr r6, _08017D74
	mov sb, r6
	movs r7, #0x7d
	rsbs r7, r7, #0
	mov r8, r7
_08017D54:
	ldr r1, [r5]
	lsls r2, r1, #0x1b
	lsrs r0, r2, #0x1b
	ldr r4, [sp]
	adds r0, r0, r4
	adds r4, r1, #0
	cmp r0, #0x1e
	ble _08017D78
	ldrb r0, [r3]
	movs r6, #0x1f
	orrs r0, r6
	strb r0, [r3]
	b _08017DA2
	.align 2, 0
_08017D70: .4byte gUnknown_0200002C
_08017D74: .4byte 0xFFFFFC1F
_08017D78:
	lsrs r0, r2, #0x1b
	ldr r7, [sp]
	adds r0, r0, r7
	cmp r0, #0
	bge _08017D8C
	ldrb r1, [r3]
	mov r0, sl
	ands r0, r1
	strb r0, [r3]
	b _08017DA2
_08017D8C:
	lsrs r0, r2, #0x1b
	ldr r1, _08017DBC
	ldrh r1, [r1]
	adds r0, r0, r1
	movs r2, #0x1f
	ands r0, r2
	ldrb r2, [r3]
	mov r1, sl
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_08017DA2:
	lsls r1, r4, #0x16
	lsrs r0, r1, #0x1b
	ldr r6, _08017DC0
	movs r7, #0
	ldrsh r2, [r6, r7]
	adds r0, r0, r2
	cmp r0, #0x1e
	ble _08017DC4
	ldrh r0, [r3]
	movs r2, #0xf8
	lsls r2, r2, #2
	adds r1, r2, #0
	b _08017DE8
	.align 2, 0
_08017DBC: .4byte gUnknown_0200002C
_08017DC0: .4byte gUnknown_0200002E
_08017DC4:
	lsrs r0, r1, #0x1b
	adds r0, r0, r2
	cmp r0, #0
	bge _08017DD4
	ldrh r1, [r3]
	mov r0, sb
	ands r0, r1
	b _08017DEA
_08017DD4:
	lsrs r1, r1, #0x1b
	ldr r6, _08017E08
	ldrh r6, [r6]
	adds r1, r1, r6
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r3]
	mov r0, sb
	ands r0, r2
_08017DE8:
	orrs r0, r1
_08017DEA:
	strh r0, [r3]
	lsls r1, r4, #0x11
	lsrs r0, r1, #0x1b
	ldr r7, _08017E0C
	movs r4, #0
	ldrsh r2, [r7, r4]
	adds r0, r0, r2
	cmp r0, #0x1e
	ble _08017E10
	ldrb r0, [r3, #1]
	movs r1, #0x7c
	orrs r0, r1
	strb r0, [r3, #1]
	b _08017E3A
	.align 2, 0
_08017E08: .4byte gUnknown_0200002E
_08017E0C: .4byte gUnknown_02000030
_08017E10:
	lsrs r0, r1, #0x1b
	adds r0, r0, r2
	cmp r0, #0
	bge _08017E22
	ldrb r1, [r3, #1]
	mov r0, r8
	ands r0, r1
	strb r0, [r3, #1]
	b _08017E3A
_08017E22:
	lsrs r0, r1, #0x1b
	ldr r6, _08017E60
	ldrh r6, [r6]
	adds r0, r0, r6
	movs r7, #0x1f
	ands r0, r7
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	mov r1, r8
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
_08017E3A:
	adds r3, #2
	adds r5, #2
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	cmp r0, #0xf
	bhi _08017E4E
	b _08017D54
_08017E4E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017E60: .4byte gUnknown_02000030
	.syntax divided
