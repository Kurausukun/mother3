	.syntax unified
sub_0803F8F8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r7, _0803F92C
	lsls r1, r0, #2
	ldr r0, _0803F930
	adds r4, r1, r0
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0803F934
	adds r2, r7, #0
	adds r2, #0x6f
	ldrb r1, [r2]
	subs r0, #1
	ands r0, r1
	strb r0, [r2]
	b _0803FA72
	.align 2, 0
_0803F92C: .4byte gUnknown_0201A55C
_0803F930: .4byte gUnknown_080C6A80
_0803F934:
	ldrh r0, [r4]
	bl sub_08036D18
	adds r5, r0, #0
	ldrh r0, [r4]
	bl sub_08036D3C
	mov sb, r0
	movs r1, #0x6f
	adds r1, r1, r7
	mov sl, r1
	ldrb r2, [r1]
	movs r0, #1
	orrs r2, r0
	movs r0, #2
	orrs r2, r0
	movs r0, #5
	rsbs r0, r0, #0
	ands r2, r0
	strb r2, [r1]
	ldrh r0, [r4]
	adds r6, r7, #0
	adds r6, #0x58
	movs r1, #0
	mov ip, r1
	movs r3, #0
	strh r0, [r6]
	ldrb r0, [r4, #2]
	subs r0, #1
	adds r1, r7, #0
	adds r1, #0x5c
	strb r0, [r1]
	adds r1, #2
	ldr r0, _0803FA80
	strh r0, [r1]
	str r3, [r7, #0x10]
	adds r0, r7, #0
	adds r0, #0x64
	strh r3, [r0]
	subs r0, #4
	movs r4, #1
	strb r4, [r0]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	mov r2, sl
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x6c
	strh r3, [r0]
	subs r0, #2
	strh r3, [r0]
	subs r0, #2
	strh r3, [r0]
	adds r0, #6
	strb r4, [r0]
	adds r3, r7, #0
	adds r3, #0x2a
	ldrb r2, [r3]
	subs r1, #0x81
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3]
	adds r4, r7, #0
	adds r4, #0x30
	ldrb r0, [r4]
	ands r1, r0
	strb r1, [r4]
	adds r0, r7, #0
	adds r0, #0x61
	mov r1, ip
	strb r1, [r0]
	ldrh r0, [r6]
	bl sub_08036D60
	str r0, [r7, #0x18]
	ldr r0, _0803FA84
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x66
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r1]
	ldrb r0, [r5, #1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	subs r1, #0xc
	strb r0, [r1]
	mov r2, sb
	ldrb r0, [r2]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	adds r1, #1
	strb r0, [r1]
	ldrb r1, [r5, #1]
	lsrs r1, r1, #7
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #4
	mov r0, sl
	ldrb r2, [r0]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, sl
	strb r0, [r1]
	ldrb r0, [r5, #4]
	adds r1, r7, #0
	adds r1, #0x54
	strb r0, [r1]
	ldrb r1, [r5, #5]
	adds r0, r0, r1
	adds r1, r7, #0
	adds r1, #0x55
	strb r0, [r1]
	ldrb r1, [r5, #6]
	adds r0, r0, r1
	adds r1, r7, #0
	adds r1, #0x56
	strb r0, [r1]
	ldrb r1, [r5, #7]
	adds r0, r0, r1
	adds r1, r7, #0
	adds r1, #0x57
	strb r0, [r1]
	mov r2, r8
	cmp r2, #6
	bne _0803FA5E
	adds r0, r7, #0
	movs r1, #0xa
	bl sub_08050FF0
	ldrb r0, [r4]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
	adds r2, r7, #0
	adds r2, #0x31
	ldrb r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0803FA5E:
	movs r0, #0
	bl sub_08036DDC
	adds r1, r0, #0
	ldr r2, _0803FA88
	adds r0, r7, r2
	movs r2, #0x10
	movs r3, #0xe0
	bl sub_0800160C
_0803FA72:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803FA80: .4byte 0x0000FFFF
_0803FA84: .4byte 0x06017000
_0803FA88: .4byte 0xFFFFBB1C
	.syntax divided
