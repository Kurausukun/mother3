	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov ip, r0
	ldr r0, [sp, #0x28]
	ldr r4, [sp, #0x2c]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r3, r3, #0xc
	adds r3, r3, r0
	lsls r3, r3, #1
	adds r6, r1, r3
	movs r0, #0
	str r0, [sp, #4]
	cmp r0, r8
	bhs _080036CE
	movs r1, #0x1f
	mov sl, r1
	ldr r7, _08003660
	mov sb, r7
	mov r3, sp
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
_08003604:
	mov r0, ip
	ldrh r1, [r0]
	mov r2, sl
	ands r2, r1
	ldr r0, [sp]
	mov r7, sb
	ands r0, r7
	orrs r0, r2
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	mov r2, sl
	ands r0, r2
	strb r0, [r3, #1]
	lsrs r1, r1, #0x1a
	ands r1, r2
	strb r1, [r3, #2]
	cmp r4, #0
	ble _08003668
	ldrb r0, [r3]
	adds r0, r0, r4
	cmp r0, #0x1f
	ble _08003634
	movs r0, #0x1f
_08003634:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r7, sb
	ands r5, r7
	orrs r5, r0
	ldrb r0, [r3, #1]
	adds r0, r0, r4
	cmp r0, #0x1f
	ble _08003648
	movs r0, #0x1f
_08003648:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	ldr r1, _08003664
	ands r5, r1
	orrs r5, r0
	ldrb r0, [r3, #2]
	adds r0, r0, r4
	cmp r0, #0x1f
	ble _0800369A
	movs r0, #0x1f
	b _0800369A
	.align 2, 0
_08003660: .4byte 0xFFFFFF00
_08003664: .4byte 0xFFFF00FF
_08003668:
	ldrb r0, [r3]
	adds r0, r0, r4
	cmp r0, #0
	bge _08003672
	movs r0, #0
_08003672:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r1, sb
	ands r5, r1
	orrs r5, r0
	ldrb r0, [r3, #1]
	adds r0, r0, r4
	cmp r0, #0
	bge _08003686
	movs r0, #0
_08003686:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	ldr r1, _080036E0
	ands r5, r1
	orrs r5, r0
	ldrb r0, [r3, #2]
	adds r0, r0, r4
	cmp r0, #0
	bge _0800369A
	movs r0, #0
_0800369A:
	lsls r1, r0, #0x18
	lsrs r1, r1, #8
	ldr r0, _080036E4
	ands r5, r0
	orrs r5, r1
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	lsrs r0, r5, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x13
	orrs r1, r0
	lsrs r0, r5, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0xe
	orrs r1, r0
	strh r1, [r6]
	ldr r0, [sp, #4]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r2, #2
	add ip, r2
	adds r6, #2
	cmp r0, r8
	blo _08003604
_080036CE:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080036E0: .4byte 0xFFFF00FF
_080036E4: .4byte 0xFF00FFFF
	.syntax divided
