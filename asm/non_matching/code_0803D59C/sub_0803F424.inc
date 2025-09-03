	.syntax unified
sub_0803F424:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x10
	str r0, [sp, #8]
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r5, _0803F484
	bl sub_08036D18
	adds r6, r0, #0
	ldr r0, [sp, #4]
	bl sub_08036D3C
	mov sl, r0
	adds r2, r5, #0
	adds r2, #0x6f
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x58
	mov r1, sp
	ldrh r1, [r1, #4]
	strh r1, [r0]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0803F488
	adds r0, r5, #0
	adds r0, #0x5c
	strb r4, [r0]
	b _0803F492
	.align 2, 0
_0803F484: .4byte gUnknown_0201A55C
_0803F488:
	lsls r0, r4, #3
	adds r0, r7, r0
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
_0803F492:
	adds r1, r5, #0
	adds r1, #0x5e
	ldr r0, _0803F588
	strh r0, [r1]
	movs r2, #0
	str r2, [r5, #0x10]
	adds r0, r5, #0
	adds r0, #0x64
	movs r1, #0
	mov sb, r1
	strh r2, [r0]
	subs r0, #4
	movs r3, #1
	strb r3, [r0]
	adds r7, r5, #0
	adds r7, #0x6f
	ldrb r1, [r7]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r7]
	adds r0, r5, #0
	adds r0, #0x6c
	strh r2, [r0]
	subs r0, #2
	strh r2, [r0]
	subs r0, #2
	strh r2, [r0]
	adds r0, #6
	strb r3, [r0]
	adds r3, r5, #0
	adds r3, #0x2a
	ldrb r2, [r3]
	subs r1, #0x81
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3]
	adds r2, r5, #0
	adds r2, #0x30
	ldrb r0, [r2]
	ands r1, r0
	strb r1, [r2]
	adds r0, r5, #0
	adds r0, #0x61
	mov r2, sb
	strb r2, [r0]
	movs r0, #0x58
	adds r0, r0, r5
	mov r8, r0
	ldrh r0, [r0]
	bl sub_08036D60
	str r0, [r5, #0x18]
	ldr r0, _0803F58C
	str r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x66
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x5a
	mov r1, sb
	strb r1, [r0]
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	adds r1, r5, #0
	adds r1, #0x5b
	strb r0, [r1]
	ldrb r1, [r6, #1]
	lsrs r1, r1, #7
	lsls r1, r1, #4
	ldrb r2, [r7]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r7]
	ldrb r0, [r6, #4]
	adds r1, r5, #0
	adds r1, #0x54
	strb r0, [r1]
	ldrb r1, [r6, #5]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x55
	strb r0, [r1]
	ldrb r1, [r6, #6]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x56
	strb r0, [r1]
	ldrb r1, [r6, #7]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x57
	strb r0, [r1]
	ldrb r0, [r6, #1]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0803F598
	mov r0, r8
	ldrh r2, [r0]
	adds r1, r2, #0
	cmp r1, #0xff
	bls _0803F598
	ldr r0, _0803F590
	cmp r1, r0
	bhi _0803F598
	ldr r1, _0803F594
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08036DDC
	b _0803F5A8
	.align 2, 0
_0803F588: .4byte 0x0000FFFF
_0803F58C: .4byte 0x06017000
_0803F590: .4byte 0x0000026B
_0803F594: .4byte 0x0000FF01
_0803F598:
	movs r0, #0
	bl sub_08036DDC
	str r0, [r5, #0x20]
	ldrb r1, [r6, #1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x17
	adds r0, r0, r1
_0803F5A8:
	str r0, [r5, #0x20]
	ldr r0, _0803F5C8
	ldr r1, [r5, #0x20]
	movs r2, #0x10
	movs r3, #0x20
	bl sub_0800160C
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803F5C8: .4byte gUnknown_02016078
	.syntax divided
