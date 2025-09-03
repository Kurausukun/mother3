	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r7, r0, #0
	adds r5, r1, #0
	adds r0, #0xbc
	str r0, [sp]
	ldrb r0, [r0]
	movs r1, #1
	mov ip, r1
	mov r2, ip
	orrs r0, r2
	ldr r1, [sp]
	strb r0, [r1]
	ldrb r2, [r5, #9]
	lsls r2, r2, #0x1c
	lsrs r0, r2, #0x1d
	adds r1, r7, #0
	adds r1, #0x8b
	strb r0, [r1]
	adds r1, #1
	ldr r0, _0802D204
	strh r0, [r1]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	adds r0, #0x92
	movs r1, #0
	strh r1, [r0]
	subs r0, #4
	movs r1, #1
	strb r1, [r0]
	adds r0, #1
	movs r1, #0
	strb r1, [r0]
	movs r0, #0xbf
	adds r0, r0, r7
	mov sb, r0
	ldrb r1, [r0]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, sb
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0xcc
	str r0, [sp, #4]
	ldrb r1, [r0]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	ldr r1, [sp, #4]
	strb r0, [r1]
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	mov r1, sb
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0xc8
	str r0, [sp, #8]
	ldrb r1, [r0]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	ldr r1, [sp, #8]
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x9e
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	ldr r1, [sp, #8]
	strb r0, [r1]
	lsrs r2, r2, #0x1d
	lsls r2, r2, #2
	ldr r1, [sp]
	ldrb r0, [r1]
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r1, r0
	orrs r1, r2
	movs r4, #0x21
	rsbs r4, r4, #0
	ands r1, r4
	ldrb r0, [r5]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	lsls r0, r0, #7
	movs r2, #0x7f
	ands r1, r2
	orrs r1, r0
	ldr r0, [sp]
	strb r1, [r0]
	ldrb r2, [r5, #0xa]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1f
	movs r0, #0xcb
	adds r0, r0, r7
	mov r8, r0
	mov r0, ip
	ands r1, r0
	lsls r1, r1, #6
	mov r0, r8
	ldrb r3, [r0]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x1f
	adds r0, r7, #0
	adds r0, #0xcd
	str r0, [sp, #0xc]
	mov r1, ip
	ands r2, r1
	ldrb r1, [r0]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	ldrh r1, [r5]
	lsls r1, r1, #0x17
	adds r3, r7, #0
	adds r3, #0xbd
	movs r2, #3
	mov r0, sp
	strb r2, [r0, #0x10]
	lsrs r1, r1, #0x1e
	lsls r1, r1, #3
	ldrb r2, [r3]
	movs r0, #0x19
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	str r3, [sp, #0x20]
	bl sub_08036CD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sp
	ldrb r1, [r1, #0x10]
	ands r0, r1
	lsls r0, r0, #5
	ldr r3, [sp, #0x20]
	ldrb r2, [r3]
	movs r1, #0x61
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	ands r0, r4
	mov r2, sb
	strb r0, [r2]
	adds r6, r7, #0
	adds r6, #0xc4
	ldrb r1, [r6]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r2, #3
	rsbs r2, r2, #0
	ands r0, r2
	strb r0, [r6]
	adds r3, r7, #0
	adds r3, #0xc5
	ldrb r1, [r3]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x4c
	orrs r0, r1
	strb r0, [r3]
	ldr r0, [r6]
	ldr r1, _0802D208
	ands r0, r1
	str r0, [r6]
	movs r0, #0xc6
	adds r0, r0, r7
	mov ip, r0
	ldrb r0, [r0]
	ands r4, r0
	mov r1, ip
	strb r4, [r1]
	adds r0, r7, #0
	adds r0, #0x9a
	movs r1, #1
	strh r1, [r0]
	movs r0, #0xc7
	adds r0, r0, r7
	mov sl, r0
	ldrb r1, [r0]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r2
	mov r1, sl
	strb r0, [r1]
	ldr r0, [sp]
	ldrb r1, [r0]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	ldr r1, [sp]
	strb r0, [r1]
	adds r4, r7, #0
	adds r4, #0xca
	ldrb r1, [r4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r3, #5
	rsbs r3, r3, #0
	ands r0, r3
	strb r0, [r4]
	mov r0, sl
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	mov r1, sl
	strb r0, [r1]
	ldrb r1, [r4]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	ldr r1, [sp, #8]
	strb r0, [r1]
	ldr r0, [sp, #0xc]
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	mov r1, ip
	ldrb r0, [r1]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x7f
	ands r1, r0
	mov r0, ip
	strb r1, [r0]
	ldrb r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r4]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r2
	ands r0, r3
	mov r1, r8
	strb r0, [r1]
	ldr r1, [sp, #4]
	ldrb r0, [r1]
	ands r2, r0
	ands r2, r3
	movs r0, #9
	rsbs r0, r0, #0
	ands r2, r0
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r2, r1
	ldr r0, [sp, #4]
	strb r2, [r0]
	movs r1, #0
	str r1, [r7, #0x30]
	str r1, [r7, #0x34]
	mov r2, sl
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	str r0, [r7, #0x38]
	str r0, [r7, #0x3c]
	adds r0, r7, #0
	adds r0, #0xb2
	movs r1, #0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	ldr r2, [sp, #4]
	ldrb r0, [r2]
	movs r1, #0x7f
	ands r1, r0
	strb r1, [r2]
	adds r0, r7, #0
	adds r0, #0xb6
	movs r1, #0
	strh r1, [r0]
	adds r0, #4
	movs r1, #3
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	adds r0, #3
	movs r2, #0
	strb r2, [r0]
	adds r2, r7, #0
	adds r2, #0x48
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x50
	ldrb r0, [r1]
	movs r2, #2
	rsbs r2, r2, #0
	ands r2, r0
	strb r2, [r1]
	ldrb r0, [r5, #9]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0802D20C
	ldr r0, [r5, #8]
	lsls r0, r0, #0xb
	lsrs r0, r0, #0x18
	b _0802D212
	.align 2, 0
_0802D204: .4byte 0x0000FFFF
_0802D208: .4byte 0xFFE07FFF
_0802D20C:
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x19
_0802D212:
	lsls r0, r0, #2
	ldrh r2, [r6]
	ldr r1, _0802D290
	ands r1, r2
	orrs r1, r0
	strh r1, [r6]
	ldr r0, [r7, #0x2c]
	movs r1, #8
	bl memclear
	ldrb r0, [r5, #0x12]
	lsls r0, r0, #4
	adds r0, #8
	lsls r1, r0, #4
	movs r2, #0
	strh r1, [r7]
	ldrb r0, [r5, #0x13]
	lsls r0, r0, #4
	adds r0, #0xf
	lsls r0, r0, #4
	strh r0, [r7, #2]
	ldrb r0, [r5, #3]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0802D24A
	adds r0, r1, #0
	adds r0, #0x80
	strh r0, [r7]
_0802D24A:
	ldrb r0, [r5, #3]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802D258
	ldrh r0, [r7, #2]
	adds r0, #0x80
	strh r0, [r7, #2]
_0802D258:
	strh r2, [r7, #4]
	strh r2, [r7, #6]
	movs r2, #0
	adds r3, r7, #0
	adds r3, #0x74
	movs r4, #0xff
_0802D264:
	adds r1, r3, r2
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	adds r2, #1
	cmp r2, #0xc
	ble _0802D264
	adds r0, r7, #0
	bl sub_08036BA4
	adds r0, r7, #0
	bl sub_0802DE5C
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D290: .4byte 0xFFFFFC03
	.syntax divided
