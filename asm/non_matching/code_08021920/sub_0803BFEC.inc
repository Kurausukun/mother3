	.syntax unified
sub_0803BFEC:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r6, #1
_0803C000:
	ldr r0, [sp]
	bl get_obj_direct
	mov ip, r0
	ldrh r0, [r0]
	strh r0, [r7]
	mov r1, ip
	ldrh r0, [r1, #2]
	strh r0, [r7, #2]
	ldrh r0, [r1, #4]
	strh r0, [r7, #4]
	ldrh r0, [r1, #6]
	strh r0, [r7, #6]
	movs r3, #0
	adds r5, r7, #0
	adds r5, #0x2d
	movs r2, #0x2e
	adds r2, r2, r7
	mov r8, r2
	adds r0, r7, #0
	adds r0, #0x34
	str r0, [sp, #0x34]
	adds r1, r7, #0
	adds r1, #0x31
	str r1, [sp, #0x30]
	adds r2, r7, #0
	adds r2, #0x2f
	str r2, [sp, #0x28]
	subs r0, #4
	str r0, [sp, #0x2c]
	movs r1, #0x32
	adds r1, r1, r7
	mov sb, r1
	movs r2, #0x33
	adds r2, r2, r7
	mov sl, r2
	subs r0, #6
	str r0, [sp, #0x1c]
	adds r1, r7, #0
	adds r1, #0x2b
	str r1, [sp, #0x20]
	adds r2, r7, #0
	adds r2, #0x2c
	str r2, [sp, #0x24]
	ldr r0, [sp]
	adds r0, #1
	str r0, [sp, #0x18]
	adds r1, #0xd
	str r1, [sp, #0x14]
_0803C062:
	lsls r0, r3, #2
	adds r2, r0, r7
	add r0, ip
	ldrh r1, [r0, #8]
	strh r1, [r2, #8]
	ldrh r0, [r0, #0xa]
	strh r0, [r2, #0xa]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #1
	bls _0803C062
	mov r2, ip
	ldr r0, [r2, #0x40]
	ldr r1, _0803C468
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	ldrh r0, [r7, #0x10]
	lsrs r0, r0, #3
	strh r0, [r7, #0x10]
	mov r0, ip
	adds r0, #0x86
	ldrb r0, [r0]
	strb r0, [r7, #0x12]
	mov r0, ip
	adds r0, #0x87
	ldrb r0, [r0]
	strb r0, [r7, #0x13]
	mov r0, ip
	adds r0, #0x88
	ldrh r0, [r0]
	strh r0, [r7, #0x14]
	mov r0, ip
	adds r0, #0x8a
	ldrb r0, [r0]
	strb r0, [r7, #0x16]
	mov r0, ip
	adds r0, #0x8b
	ldrb r0, [r0]
	strb r0, [r7, #0x17]
	mov r0, ip
	adds r0, #0x8e
	ldrb r0, [r0]
	strb r0, [r7, #0x18]
	mov r0, ip
	adds r0, #0x8f
	ldrb r0, [r0]
	strb r0, [r7, #0x19]
	mov r0, ip
	adds r0, #0x91
	ldrb r0, [r0]
	strb r0, [r7, #0x1a]
	mov r0, ip
	adds r0, #0x92
	ldrh r0, [r0]
	strh r0, [r7, #0x1c]
	mov r0, ip
	adds r0, #0x94
	ldrh r0, [r0]
	strh r0, [r7, #0x1e]
	mov r0, ip
	adds r0, #0x96
	ldrh r0, [r0]
	strh r0, [r7, #0x20]
	mov r0, ip
	adds r0, #0x9a
	ldrh r0, [r0]
	strh r0, [r7, #0x22]
	mov r0, ip
	adds r0, #0x9e
	ldrh r0, [r0]
	strh r0, [r7, #0x24]
	mov r0, ip
	adds r0, #0xa0
	ldrh r0, [r0]
	strh r0, [r7, #0x26]
	mov r0, ip
	adds r0, #0xa2
	ldrh r0, [r0]
	strh r0, [r7, #0x28]
	mov r4, ip
	adds r4, #0xbc
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	ands r0, r6
	ldrb r2, [r5]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	ands r0, r6
	lsls r0, r0, #1
	movs r2, #3
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r5]
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	movs r3, #7
	ands r0, r3
	lsls r0, r0, #2
	subs r3, #0x24
	adds r1, r3, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r5]
	ldrb r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	ands r0, r6
	lsls r0, r0, #5
	subs r3, #4
	ands r3, r2
	orrs r3, r0
	strb r3, [r5]
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	ands r0, r6
	lsls r0, r0, #6
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r0
	strb r1, [r5]
	ldrb r0, [r4]
	lsrs r0, r0, #7
	lsls r0, r0, #7
	movs r2, #0x7f
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	mov r3, ip
	adds r3, #0xbd
	str r3, [sp, #4]
	ldrb r1, [r3]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1e
	mov r0, r8
	ldrb r2, [r0]
	movs r3, #4
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	mov r2, ip
	adds r2, #0xcb
	str r2, [sp, #8]
	ldrb r1, [r2]
	lsrs r1, r1, #7
	ands r1, r6
	lsls r1, r1, #3
	ldr r0, [sp, #0x34]
	ldrb r2, [r0]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	ldr r1, [sp, #0x34]
	strb r0, [r1]
	adds r4, #3
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	ands r0, r6
	lsls r0, r0, #2
	mov r1, r8
	ldrb r2, [r1]
	movs r1, #5
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	mov r2, r8
	strb r1, [r2]
	ldrb r0, [r4]
	lsrs r0, r0, #7
	ands r0, r6
	lsls r0, r0, #3
	movs r2, #9
	rsbs r2, r2, #0
	ands r1, r2
	orrs r1, r0
	mov r0, r8
	strb r1, [r0]
	mov r1, ip
	adds r1, #0xc8
	str r1, [sp, #0xc]
	ldrb r0, [r1]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	ands r0, r6
	lsls r0, r0, #2
	ldr r1, [sp, #0x30]
	ldrb r2, [r1]
	movs r1, #5
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	ldr r2, [sp, #0x30]
	strb r1, [r2]
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	ands r1, r3
	orrs r1, r0
	ldr r3, [sp, #0x30]
	strb r1, [r3]
	mov r0, ip
	adds r0, #0xc3
	ldrb r2, [r0]
	lsrs r2, r2, #3
	lsls r2, r2, #4
	ldrh r0, [r7, #0x2e]
	ldr r3, _0803C46C
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r7, #0x2e]
	mov r5, ip
	adds r5, #0xc4
	ldrb r0, [r5]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	ands r0, r6
	lsls r0, r0, #1
	ldr r2, [sp, #0x28]
	ldrb r1, [r2]
	movs r2, #3
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	ldr r3, [sp, #0x28]
	strb r2, [r3]
	ldrb r0, [r5]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	ands r0, r6
	lsls r0, r0, #2
	movs r1, #5
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldrh r3, [r5]
	lsls r3, r3, #0x16
	lsrs r2, r3, #0x18
	movs r0, #0x1f
	ands r2, r0
	lsls r2, r2, #3
	movs r4, #7
	ands r1, r4
	orrs r1, r2
	ldr r0, [sp, #0x28]
	strb r1, [r0]
	lsrs r3, r3, #0x1d
	ands r3, r4
	ands r3, r4
	ldr r2, [sp, #0x2c]
	ldrb r1, [r2]
	movs r2, #8
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r1, r0
	orrs r1, r3
	ldr r3, [sp, #0x2c]
	strb r1, [r3]
	mov r0, ip
	adds r0, #0xc5
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1b
	lsls r0, r0, #3
	ands r1, r4
	orrs r1, r0
	strb r1, [r3]
	ldr r0, [r5]
	lsls r0, r0, #0xb
	lsrs r0, r0, #0x1a
	lsls r0, r0, #0xb
	ldr r1, [r7, #0x30]
	ldr r2, _0803C470
	ands r1, r2
	orrs r1, r0
	str r1, [r7, #0x30]
	adds r5, #2
	ldrb r0, [r5]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	ands r0, r6
	lsls r0, r0, #1
	mov r2, sb
	ldrb r1, [r2]
	movs r2, #3
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	mov r3, sb
	strb r2, [r3]
	mov r7, ip
	adds r7, #0xc7
	ldrb r0, [r7]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	ands r0, r6
	lsls r0, r0, #2
	movs r1, #5
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldrb r0, [r7]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	ands r0, r6
	lsls r0, r0, #3
	movs r2, #9
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r3]
	mov r4, ip
	adds r4, #0xca
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	ands r0, r6
	lsls r0, r0, #4
	movs r3, #0x11
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r1, r2
	orrs r1, r0
	mov r0, sb
	strb r1, [r0]
	ldrb r0, [r4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	ands r0, r6
	lsls r0, r0, #5
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	mov r1, sb
	strb r2, [r1]
	ldrb r0, [r7]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	ands r0, r6
	lsls r0, r0, #6
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	mov r2, sb
	strb r1, [r2]
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	lsls r0, r0, #7
	movs r2, #0x7f
	ands r1, r2
	orrs r1, r0
	mov r0, sb
	strb r1, [r0]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	ands r0, r6
	mov r1, sl
	ldrb r2, [r1]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	mov r2, sl
	strb r1, [r2]
	ldrb r0, [r5]
	lsrs r0, r0, #7
	ands r0, r6
	lsls r0, r0, #1
	movs r2, #3
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	mov r0, sl
	strb r2, [r0]
	ldrb r0, [r4]
	lsrs r0, r0, #7
	ands r0, r6
	lsls r0, r0, #2
	movs r1, #5
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	mov r2, sl
	strb r1, [r2]
	ldr r2, [sp, #8]
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	ands r0, r6
	lsls r0, r0, #3
	movs r2, #9
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #0x10]
	mov r0, sl
	strb r2, [r0]
	ldr r1, [sp, #8]
	ldrb r0, [r1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	ands r0, r6
	lsls r0, r0, #4
	ldr r2, [sp, #0x10]
	ands r3, r2
	orrs r3, r0
	mov r0, sl
	strb r3, [r0]
	ldr r1, [sp, #4]
	ldrb r0, [r1]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	ands r0, r6
	lsls r0, r0, #5
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r0
	mov r2, sl
	strb r1, [r2]
	ldr r3, [sp, #0xc]
	ldrb r0, [r3]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	ands r0, r6
	lsls r0, r0, #6
	movs r2, #0x41
	rsbs r2, r2, #0
	ands r1, r2
	orrs r1, r0
	mov r3, sl
	strb r1, [r3]
	mov r3, ip
	adds r3, #0xcc
	ldrb r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	ands r0, r6
	ldr r2, [sp, #0x34]
	ldrb r1, [r2]
	movs r2, #2
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	ldr r0, [sp, #0x34]
	strb r2, [r0]
	ldrb r0, [r3]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	ands r0, r6
	lsls r0, r0, #1
	movs r1, #3
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	ldr r2, [sp, #0x34]
	strb r1, [r2]
	ldrb r0, [r7]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	ands r0, r6
	lsls r0, r0, #2
	movs r3, #5
	rsbs r3, r3, #0
	ands r1, r3
	orrs r1, r0
	strb r1, [r2]
	mov r0, ip
	adds r0, #0xb8
	ldrb r0, [r0]
	ldr r1, [sp, #0x1c]
	strb r0, [r1]
	mov r0, ip
	adds r0, #0xb9
	ldrb r0, [r0]
	ldr r2, [sp, #0x20]
	strb r0, [r2]
	mov r0, ip
	adds r0, #0xba
	ldrb r0, [r0]
	ldr r3, [sp, #0x24]
	strb r0, [r3]
	mov r1, sl
	ldrb r0, [r1]
	movs r2, #0x7f
	ands r2, r0
	strb r2, [r1]
	ldr r3, [sp]
	cmp r3, #4
	b _0803C474
	.align 2, 0
_0803C468: .4byte gUnknown_0200D908
_0803C46C: .4byte 0xFFFFFE0F
_0803C470: .4byte 0xFFFE07FF
_0803C474:
	bls _0803C48E
	mov r0, ip
	adds r0, #0x75
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	bne _0803C48E
	movs r1, #0x80
	adds r0, r2, #0
	orrs r0, r1
	mov r1, sl
	strb r0, [r1]
_0803C48E:
	ldr r2, [sp, #0x18]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r7, [sp, #0x14]
	cmp r0, #0x18
	bhi _0803C49E
	b _0803C000
_0803C49E:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
