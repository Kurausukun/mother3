	.syntax unified
sub_0803F774:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0803F7B8
	mov r8, r0
	ldr r3, _0803F7BC
	ldr r1, _0803F7C0
	str r1, [sp]
	movs r2, #0xe0
	lsls r2, r2, #2
	str r2, [sp, #4]
	movs r5, #0
	mov sl, r5
	mov r6, r8
	adds r6, #0x54
	mov r7, r8
	adds r7, #0x18
	mov sb, r5
_0803F79E:
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0803F7C4
	ldrb r0, [r6, #0x1b]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r6, #0x1b]
	b _0803F8B2
	.align 2, 0
_0803F7B8: .4byte gUnknown_0201A55C
_0803F7BC: .4byte gUnknown_080C6A80
_0803F7C0: .4byte 0x06017000
_0803F7C4:
	ldrh r0, [r3]
	str r3, [sp, #8]
	bl sub_08036D18
	adds r4, r0, #0
	ldr r3, [sp, #8]
	ldrh r0, [r3]
	bl sub_08036D3C
	adds r5, r0, #0
	ldrb r0, [r6, #0x1b]
	movs r2, #1
	orrs r0, r2
	movs r1, #2
	orrs r0, r1
	subs r2, #6
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r6, #0x1b]
	ldr r3, [sp, #8]
	ldrh r0, [r3]
	strh r0, [r6, #4]
	movs r0, #8
	strb r0, [r6, #8]
	ldr r0, _0803F8F0
	strh r0, [r6, #0xa]
	mov r0, sb
	mov r1, r8
	str r0, [r1, #0x10]
	strh r0, [r6, #0x10]
	movs r2, #1
	strb r2, [r6, #0xc]
	ldrb r0, [r6, #0x1b]
	movs r2, #0x21
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	subs r2, #0x20
	adds r1, r2, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r6, #0x1b]
	mov r0, sb
	strh r0, [r6, #0x18]
	strh r0, [r6, #0x16]
	strh r0, [r6, #0x14]
	movs r1, #1
	strb r1, [r6, #0x1a]
	ldrb r1, [r7, #0x12]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r7, #0x12]
	ldrb r1, [r7, #0x18]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r7, #0x18]
	movs r2, #0
	strb r2, [r6, #0xd]
	ldrh r0, [r6, #4]
	str r3, [sp, #8]
	bl sub_08036D60
	str r0, [r7]
	ldr r0, [sp]
	str r0, [r7, #4]
	mov r1, sp
	ldrh r1, [r1, #4]
	strh r1, [r6, #0x12]
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	strb r0, [r6, #6]
	ldrb r0, [r5]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	strb r0, [r6, #7]
	ldrb r0, [r4, #1]
	lsrs r0, r0, #7
	movs r2, #1
	ands r0, r2
	lsls r0, r0, #4
	ldrb r1, [r6, #0x1b]
	movs r5, #0x11
	rsbs r5, r5, #0
	adds r2, r5, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6, #0x1b]
	ldrb r0, [r4, #4]
	strb r0, [r6]
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	strb r0, [r6, #1]
	ldrb r1, [r4, #6]
	adds r0, r0, r1
	strb r0, [r6, #2]
	ldrb r1, [r4, #7]
	adds r0, r0, r1
	strb r0, [r6, #3]
	ldrb r1, [r4]
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, #1
	lsrs r1, r1, #4
	adds r1, #1
	muls r0, r1, r0
	lsls r1, r0, #5
	ldr r2, [sp]
	adds r2, r2, r1
	str r2, [sp]
	ldr r5, [sp, #4]
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r3, [sp, #8]
_0803F8B2:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	adds r6, #0x74
	adds r7, #0x74
	movs r0, #0x74
	add r8, r0
	adds r3, #4
	mov r1, sl
	cmp r1, #0xa
	bhi _0803F8CE
	b _0803F79E
_0803F8CE:
	movs r0, #0
	bl sub_08036DDC
	adds r1, r0, #0
	ldr r0, _0803F8F4
	movs r2, #0x10
	movs r3, #0xe0
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
_0803F8F0: .4byte 0x0000FFFF
_0803F8F4: .4byte gUnknown_02016078
	.syntax divided
