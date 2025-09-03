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
	ldr r1, _08017EA8
	mov sl, r1
	ldr r2, _08017EAC
	mov sb, r2
	ldr r0, _08017EB0
	ldrh r0, [r0]
	str r0, [sp]
	movs r7, #0x1f
	movs r4, #0x20
	rsbs r4, r4, #0
	mov r8, r4
_08017E8E:
	ldr r1, [r5]
	lsls r2, r1, #0x1b
	lsrs r0, r2, #0x1b
	ldr r6, [sp]
	adds r0, r0, r6
	adds r4, r1, #0
	cmp r0, #0x1e
	ble _08017EB4
	ldrb r0, [r3]
	orrs r0, r7
	strb r0, [r3]
	b _08017EC6
	.align 2, 0
_08017EA8: .4byte gUnknown_02000034
_08017EAC: .4byte gUnknown_02000036
_08017EB0: .4byte gUnknown_02000032
_08017EB4:
	lsrs r0, r2, #0x1b
	ldr r1, [sp]
	adds r0, r0, r1
	ands r0, r7
	ldrb r2, [r3]
	mov r1, r8
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_08017EC6:
	lsls r1, r4, #0x16
	lsrs r0, r1, #0x1b
	mov r6, sl
	ldrh r2, [r6]
	adds r0, r0, r2
	cmp r0, #0x1e
	ble _08017EDE
	ldrh r0, [r3]
	movs r2, #0xf8
	lsls r2, r2, #2
	adds r1, r2, #0
	b _08017EEE
_08017EDE:
	lsrs r1, r1, #0x1b
	adds r1, r1, r2
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r3]
	ldr r0, _08017F0C
	ands r0, r2
_08017EEE:
	orrs r0, r1
	strh r0, [r3]
	lsls r2, r4, #0x11
	lsrs r0, r2, #0x1b
	mov r4, sb
	ldrh r1, [r4]
	adds r0, r0, r1
	cmp r0, #0x1e
	ble _08017F10
	ldrb r0, [r3, #1]
	movs r1, #0x7c
	orrs r0, r1
	strb r0, [r3, #1]
	b _08017F24
	.align 2, 0
_08017F0C: .4byte 0xFFFFFC1F
_08017F10:
	lsrs r0, r2, #0x1b
	adds r0, r0, r1
	ands r0, r7
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
_08017F24:
	adds r3, #2
	adds r5, #2
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	cmp r0, #0xf
	bls _08017E8E
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
