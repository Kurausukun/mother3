	.syntax unified
sub_0803CBC4:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r5, r0, #0
	movs r4, #0
	movs r0, #1
	mov sb, r0
_0803CBD8:
	adds r0, r4, #0
	bl get_obj_direct
	mov ip, r0
	ldrh r0, [r5]
	mov r1, ip
	strh r0, [r1]
	ldrh r0, [r5, #2]
	strh r0, [r1, #2]
	ldrh r0, [r5, #4]
	strh r0, [r1, #4]
	ldrh r0, [r5, #6]
	strh r0, [r1, #6]
	movs r3, #0
	adds r6, r5, #0
	adds r6, #0x2d
	adds r7, r5, #0
	adds r7, #0x2e
	adds r2, r5, #0
	adds r2, #0x34
	str r2, [sp, #0x28]
	adds r0, r5, #0
	adds r0, #0x31
	str r0, [sp, #0x20]
	adds r1, r5, #0
	adds r1, #0x2f
	str r1, [sp, #0x18]
	subs r2, #4
	str r2, [sp, #0x1c]
	movs r0, #0x32
	adds r0, r0, r5
	mov sl, r0
	adds r1, #4
	str r1, [sp, #0x24]
	subs r2, #6
	str r2, [sp, #0xc]
	adds r0, r5, #0
	adds r0, #0x2b
	str r0, [sp, #0x10]
	subs r1, #7
	str r1, [sp, #0x14]
	adds r4, #1
	str r4, [sp, #8]
	adds r2, #0xe
	str r2, [sp, #0x2c]
_0803CC32:
	lsls r0, r3, #2
	mov r4, ip
	adds r2, r0, r4
	adds r0, r0, r5
	ldrh r1, [r0, #8]
	strh r1, [r2, #8]
	ldrh r0, [r0, #0xa]
	strh r0, [r2, #0xa]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #1
	bls _0803CC32
	ldrh r0, [r5, #0x10]
	lsls r0, r0, #3
	ldr r1, _0803D024
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldrb r0, [r5, #0x12]
	mov r1, ip
	adds r1, #0x86
	strb r0, [r1]
	ldrb r0, [r5, #0x13]
	adds r1, #1
	strb r0, [r1]
	ldrh r1, [r5, #0x14]
	mov r0, ip
	adds r0, #0x88
	strh r1, [r0]
	ldrb r0, [r5, #0x16]
	mov r1, ip
	adds r1, #0x8a
	strb r0, [r1]
	ldrb r0, [r5, #0x17]
	adds r1, #1
	strb r0, [r1]
	ldrb r0, [r5, #0x18]
	adds r1, #3
	strb r0, [r1]
	ldrb r0, [r5, #0x19]
	adds r1, #1
	strb r0, [r1]
	ldrb r0, [r5, #0x1a]
	adds r1, #2
	strb r0, [r1]
	ldrh r0, [r5, #0x1c]
	adds r1, #1
	strh r0, [r1]
	ldrh r1, [r5, #0x1e]
	mov r0, ip
	adds r0, #0x94
	strh r1, [r0]
	ldrh r0, [r5, #0x20]
	mov r1, ip
	adds r1, #0x96
	strh r0, [r1]
	ldrh r0, [r5, #0x22]
	adds r1, #4
	strh r0, [r1]
	ldrh r0, [r5, #0x24]
	adds r1, #4
	strh r0, [r1]
	ldrh r1, [r5, #0x26]
	mov r0, ip
	adds r0, #0xa0
	strh r1, [r0]
	ldrh r0, [r5, #0x28]
	mov r1, ip
	adds r1, #0xa2
	strh r0, [r1]
	ldrb r0, [r6]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	adds r4, #0xbc
	mov r1, sb
	ands r0, r1
	ldrb r2, [r4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	ldrb r0, [r6]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	mov r2, sb
	ands r0, r2
	lsls r0, r0, #1
	movs r2, #3
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r4]
	ldrb r0, [r6]
	movs r1, #0x1c
	ands r1, r0
	movs r3, #0x1d
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r2, r0
	orrs r2, r1
	strb r2, [r4]
	ldrb r0, [r6]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #5
	subs r3, #4
	ands r3, r2
	orrs r3, r0
	strb r3, [r4]
	ldrb r0, [r6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	ands r0, r1
	lsls r0, r0, #6
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r0
	strb r1, [r4]
	ldrb r0, [r6]
	lsrs r0, r0, #7
	lsls r0, r0, #7
	movs r6, #0x7f
	ands r1, r6
	orrs r1, r0
	strb r1, [r4]
	ldrb r2, [r7]
	lsls r2, r2, #0x1e
	mov r3, ip
	adds r3, #0xbd
	str r3, [sp]
	lsrs r2, r2, #0x1b
	ldrb r0, [r3]
	movs r4, #0x19
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldr r0, [sp, #0x28]
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	mov r2, ip
	adds r2, #0xcb
	str r2, [sp, #4]
	lsls r1, r1, #7
	ldrb r2, [r2]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	ldr r3, [sp, #4]
	strb r0, [r3]
	ldrb r0, [r7]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	mov r3, ip
	adds r3, #0xbf
	mov r4, sb
	ands r0, r4
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldrb r0, [r7]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	lsls r0, r0, #7
	ands r1, r6
	orrs r1, r0
	strb r1, [r3]
	ldr r7, [sp, #0x20]
	ldrb r1, [r7]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1f
	movs r0, #0xc8
	add r0, ip
	mov r8, r0
	ands r1, r4
	ldrb r2, [r0]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	ldrb r2, [r7]
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1d
	movs r3, #7
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	mov r4, r8
	strb r0, [r4]
	ldrh r1, [r5, #0x2e]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x1b
	mov r3, ip
	adds r3, #0xc3
	lsls r1, r1, #3
	ldrb r2, [r3]
	movs r4, #7
	adds r0, r4, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r7, [sp, #0x18]
	ldrb r0, [r7]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	adds r3, #1
	mov r1, sb
	ands r0, r1
	ldrb r2, [r3]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldrb r0, [r7]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	mov r2, sb
	ands r0, r2
	lsls r0, r0, #1
	movs r7, #3
	rsbs r7, r7, #0
	ands r1, r7
	orrs r1, r0
	strb r1, [r3]
	ldr r0, [sp, #0x18]
	ldrb r1, [r0]
	lsrs r1, r1, #3
	ldr r2, [sp, #0x1c]
	ldrb r0, [r2]
	ands r0, r4
	lsls r0, r0, #5
	orrs r0, r1
	lsls r0, r0, #2
	ldrh r1, [r3]
	ldr r4, _0803D028
	adds r2, r4, #0
	ands r1, r2
	orrs r1, r0
	strh r1, [r3]
	ldr r7, [sp, #0x1c]
	ldrb r2, [r7]
	mov r4, ip
	adds r4, #0xc5
	lsrs r2, r2, #3
	lsls r2, r2, #2
	ldrb r0, [r4]
	movs r7, #0x7d
	rsbs r7, r7, #0
	adds r1, r7, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	ldr r0, [r5, #0x30]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1a
	lsls r0, r0, #0xf
	ldr r1, [r3]
	ldr r2, _0803D02C
	ands r1, r2
	orrs r1, r0
	str r1, [r3]
	mov r0, sl
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1f
	adds r4, #1
	mov r2, sb
	ands r1, r2
	lsls r1, r1, #5
	ldrb r2, [r4]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	mov r3, sl
	ldrb r0, [r3]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	mov r7, ip
	adds r7, #0xc7
	mov r1, sb
	ands r0, r1
	ldrb r2, [r7]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r7]
	ldrb r0, [r3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	mov r2, sb
	ands r0, r2
	lsls r0, r0, #1
	movs r3, #3
	rsbs r3, r3, #0
	ands r1, r3
	orrs r1, r0
	strb r1, [r7]
	mov r1, sl
	ldrb r0, [r1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	mov r3, ip
	adds r3, #0xca
	ands r0, r2
	ldrb r2, [r3]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	mov r2, sb
	ands r0, r2
	lsls r0, r0, #2
	movs r5, #5
	rsbs r5, r5, #0
	ands r1, r5
	orrs r1, r0
	strb r1, [r3]
	mov r0, sl
	ldrb r1, [r0]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r7]
	adds r0, r5, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r7]
	mov r2, sl
	ldrb r1, [r2]
	lsrs r1, r1, #7
	mov r0, sb
	ands r1, r0
	lsls r1, r1, #6
	mov r0, r8
	ldrb r2, [r0]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	ldr r2, [sp, #0x24]
	ldrb r0, [r2]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r4]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	ldr r2, [sp, #0x24]
	ldrb r0, [r2]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	lsls r0, r0, #7
	ands r1, r6
	orrs r1, r0
	strb r1, [r4]
	ldrb r0, [r2]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	lsls r0, r0, #7
	ldrb r1, [r3]
	ands r6, r1
	orrs r6, r0
	strb r6, [r3]
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	mov r3, sb
	ands r0, r3
	lsls r0, r0, #3
	ldr r4, [sp, #4]
	ldrb r2, [r4]
	movs r4, #9
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r1, r2
	orrs r1, r0
	ldr r0, [sp, #4]
	strb r1, [r0]
	ldr r2, [sp, #0x24]
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	ands r0, r3
	lsls r0, r0, #4
	movs r3, #0x11
	rsbs r3, r3, #0
	ands r1, r3
	orrs r1, r0
	ldr r0, [sp, #4]
	strb r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #2
	ldr r2, [sp]
	ldrb r1, [r2]
	ands r5, r1
	orrs r5, r0
	strb r5, [r2]
	ldr r0, [sp, #0x24]
	ldrb r1, [r0]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	mov r2, sb
	ands r1, r2
	lsls r1, r1, #5
	mov r0, r8
	ldrb r2, [r0]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	ldr r2, [sp, #0x28]
	ldrb r0, [r2]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	mov r2, ip
	adds r2, #0xcc
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #4
	ldrb r1, [r2]
	ands r3, r1
	orrs r3, r0
	strb r3, [r2]
	ldr r1, [sp, #0x28]
	ldrb r0, [r1]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #5
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r3, r1
	orrs r3, r0
	strb r3, [r2]
	ldr r2, [sp, #0x28]
	ldrb r0, [r2]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	mov r3, sb
	ands r0, r3
	lsls r0, r0, #3
	ldrb r1, [r7]
	ands r4, r1
	orrs r4, r0
	strb r4, [r7]
	ldr r4, [sp, #0xc]
	ldrb r1, [r4]
	mov r0, ip
	adds r0, #0xb8
	strb r1, [r0]
	ldr r7, [sp, #0x10]
	ldrb r0, [r7]
	mov r1, ip
	adds r1, #0xb9
	strb r0, [r1]
	ldr r1, [sp, #0x14]
	ldrb r0, [r1]
	mov r1, ip
	adds r1, #0xba
	strb r0, [r1]
	ldr r2, [sp, #0x24]
	ldrb r0, [r2]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0803D030
	subs r1, #0x45
	movs r0, #3
	b _0803D036
	.align 2, 0
_0803D024: .4byte gUnknown_0200D908
_0803D028: .4byte 0xFFFFFC03
_0803D02C: .4byte 0xFFE07FFF
_0803D030:
	mov r1, ip
	adds r1, #0x75
	movs r0, #0xff
_0803D036:
	strb r0, [r1]
	ldr r3, [sp, #8]
	lsls r0, r3, #0x10
	lsrs r4, r0, #0x10
	ldr r5, [sp, #0x2c]
	cmp r4, #0x18
	bhi _0803D046
	b _0803CBD8
_0803D046:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
