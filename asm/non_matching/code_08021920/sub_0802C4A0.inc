	.syntax unified
sub_0802C4A0:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp]
	ldr r0, _0802C4E0
	ldr r1, _0802C4E4
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_0801B498
	adds r6, r0, #0
	ldr r2, [sp]
	adds r2, #0xc6
	ldrb r1, [r2]
	movs r3, #3
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #4
	ands r0, r1
	strb r0, [r2]
	movs r2, #0
	str r2, [sp, #0xc]
	ldrb r0, [r6]
	b _0802C828
	.align 2, 0
_0802C4E0: .4byte gGame
_0802C4E4: .4byte 0x000067AC
_0802C4E8:
	ldr r4, [sp, #0xc]
	adds r4, #5
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r7, r0, #0
	ldrh r0, [r6, #0x10]
	bl sub_08036D18
	str r0, [sp, #4]
	ldrh r0, [r6, #0x10]
	bl sub_08036D3C
	str r0, [sp, #8]
	adds r0, r7, #0
	adds r0, #0x85
	strb r4, [r0]
	adds r0, #1
	movs r3, #0
	strb r3, [r0]
	movs r5, #0xca
	adds r5, r5, r7
	mov sl, r5
	ldrb r0, [r5]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802C548
	adds r2, r7, #0
	adds r2, #0xbc
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r5]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5]
	adds r2, #0xf
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0802C548:
	adds r1, r7, #0
	adds r1, #0x8c
	ldr r0, _0802C88C
	strh r0, [r1]
	movs r2, #0
	str r2, [r7, #0x1c]
	adds r0, r7, #0
	adds r0, #0xa4
	strh r2, [r0]
	ldrb r1, [r6, #0xa]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	movs r3, #0xcb
	adds r3, r3, r7
	mov sb, r3
	movs r5, #1
	ands r1, r5
	lsls r1, r1, #6
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r1, [r6, #0xa]
	lsrs r1, r1, #7
	movs r0, #0xcd
	adds r0, r0, r7
	mov r8, r0
	ands r1, r5
	ldrb r2, [r0]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	ldrb r0, [r6]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	adds r4, r7, #0
	adds r4, #0xbd
	ands r0, r5
	ldrb r1, [r4]
	movs r2, #2
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r4]
	ldrb r1, [r6]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	ands r1, r5
	lsls r1, r1, #1
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	bl sub_08036CD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #5
	ldrb r1, [r4]
	movs r3, #0x61
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	adds r2, r7, #0
	adds r2, #0xbf
	ldrb r1, [r2]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	subs r5, #0x12
	ands r0, r5
	movs r4, #0x21
	rsbs r4, r4, #0
	ands r0, r4
	strb r0, [r2]
	ldrb r1, [r6, #1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	adds r3, r7, #0
	adds r3, #0xbc
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #0xf
	ldr r0, [r3]
	ldr r2, _0802C890
	ands r0, r2
	orrs r0, r1
	str r0, [r3]
	ldrh r2, [r6, #4]
	lsls r2, r2, #0x17
	adds r3, #4
	lsrs r2, r2, #0x17
	mov ip, r2
	ldrh r0, [r3]
	ldr r2, _0802C894
	adds r1, r2, #0
	ands r0, r1
	mov r5, ip
	orrs r0, r5
	strh r0, [r3]
	ldr r1, [r6]
	lsls r1, r1, #0xf
	lsrs r1, r1, #0x1c
	movs r0, #0xbe
	adds r0, r0, r7
	mov ip, r0
	movs r2, #0xf
	ands r1, r2
	lsls r1, r1, #3
	ldrb r0, [r0]
	movs r5, #0x79
	rsbs r5, r5, #0
	ands r0, r5
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	ldr r2, [r6, #4]
	ldr r0, _0802C898
	ands r2, r0
	ldr r0, [r3]
	ldr r1, _0802C89C
	ands r0, r1
	orrs r0, r2
	str r0, [r3]
	ldrb r0, [r6, #2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	movs r2, #0xf
	ands r0, r2
	lsls r0, r0, #7
	mov r3, ip
	ldrh r1, [r3]
	ldr r5, _0802C8A0
	adds r2, r5, #0
	ands r1, r2
	orrs r1, r0
	strh r1, [r3]
	ldrh r0, [r6, #6]
	adds r3, r7, #0
	adds r3, #0xc2
	ldr r2, _0802C8A4
	ands r2, r0
	ldrh r0, [r3]
	subs r5, #0x7c
	adds r1, r5, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3]
	ldrb r1, [r6, #3]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1f
	movs r0, #0xc9
	adds r0, r0, r7
	mov ip, r0
	movs r2, #1
	ands r1, r2
	ldrb r2, [r0]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r3, ip
	strb r0, [r3]
	adds r2, r7, #0
	adds r2, #0xc8
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	mov r5, r8
	ldrb r1, [r5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	adds r3, r7, #0
	adds r3, #0xcc
	ldrb r1, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	ldr r1, [sp, #8]
	ldrb r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	lsls r0, r0, #4
	mov r2, ip
	ldrb r1, [r2]
	movs r5, #0x71
	rsbs r5, r5, #0
	mov r8, r5
	mov r2, r8
	ands r1, r2
	orrs r1, r0
	mov r5, ip
	strb r1, [r5]
	ldr r2, [sp, #8]
	ldrb r0, [r2, #1]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	lsls r0, r0, #7
	movs r5, #0x7f
	ands r1, r5
	orrs r1, r0
	mov r0, ip
	strb r1, [r0]
	ldrb r0, [r2, #1]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #5
	mov r2, sb
	ldrb r1, [r2]
	ands r4, r1
	orrs r4, r0
	strb r4, [r2]
	mov r5, sl
	ldrb r1, [r5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	movs r2, #5
	rsbs r2, r2, #0
	ands r0, r2
	mov r1, sb
	strb r0, [r1]
	ldrb r1, [r3]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r2
	subs r2, #4
	ands r0, r2
	movs r5, #0x11
	rsbs r5, r5, #0
	ands r0, r5
	strb r0, [r3]
	ldr r1, [sp, #0xc]
	lsls r0, r1, #3
	ldr r2, [sp]
	adds r0, r2, r0
	str r0, [r7, #0x2c]
	movs r5, #0
	str r5, [r7, #0x30]
	str r5, [r7, #0x34]
	adds r2, r7, #0
	adds r2, #0xc7
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	str r5, [r7, #0x38]
	str r5, [r7, #0x3c]
	ldr r1, [sp, #8]
	ldrb r0, [r1, #2]
	lsrs r0, r0, #1
	subs r2, #0x21
	strh r0, [r2]
	ldrb r0, [r1, #3]
	lsrs r0, r0, #1
	adds r1, r7, #0
	adds r1, #0xa8
	strh r0, [r1]
	ldrh r0, [r2]
	lsls r0, r0, #4
	adds r2, #4
	strh r0, [r2]
	ldrh r0, [r1]
	lsls r0, r0, #4
	adds r1, #4
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0xb2
	strh r5, [r0]
	subs r0, #2
	movs r2, #0
	strh r2, [r0]
	subs r0, #2
	strh r2, [r0]
	ldrb r1, [r3]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3]
	ldr r3, [sp, #4]
	ldrb r1, [r3, #8]
	adds r0, r7, #0
	adds r0, #0xb4
	strb r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #5
	strb r5, [r0]
	adds r2, r7, #0
	adds r2, #0x48
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r2, #8
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x19
	adds r0, #8
	strh r0, [r7, #0x14]
	ldrb r0, [r3]
	lsrs r0, r0, #4
	adds r0, #1
	lsls r0, r0, #3
	strh r0, [r7, #0x16]
	movs r2, #0
	ldr r4, [sp, #0xc]
	adds r4, #1
	adds r5, r6, #0
	adds r5, #0x18
	adds r3, r7, #0
	adds r3, #0x74
	movs r6, #0xff
_0802C7F8:
	cmp r2, #1
	beq _0802C804
	adds r1, r3, r2
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
_0802C804:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xc
	bls _0802C7F8
	adds r0, r7, #0
	bl sub_08036BA4
	adds r0, r7, #0
	bl sub_0802DE5C
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	adds r6, r5, #0
	cmp r0, #0x13
	bhi _0802C830
	ldrb r0, [r5]
_0802C828:
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802C830
	b _0802C4E8
_0802C830:
	ldr r0, [sp]
	movs r1, #1
	bl sub_0802C8A8
	ldr r0, [sp]
	adds r0, #0xb4
	ldrb r0, [r0]
	str r0, [sp, #0xc]
	cmp r0, #0x13
	bhi _0802C87C
	movs r0, #2
	rsbs r0, r0, #0
	adds r5, r0, #0
_0802C84A:
	ldr r4, [sp, #0xc]
	adds r4, #5
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r7, r0, #0
	adds r0, #0x85
	strb r4, [r0]
	adds r2, r7, #0
	adds r2, #0xbc
	ldrb r0, [r2]
	ands r0, r5
	movs r3, #3
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, [sp, #0xc]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	cmp r0, #0x13
	bls _0802C84A
_0802C87C:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C88C: .4byte 0x0000FFFF
_0802C890: .4byte 0xFFF87FFF
_0802C894: .4byte 0xFFFFFE00
_0802C898: .4byte 0x0003FE00
_0802C89C: .4byte 0xFFFC01FF
_0802C8A0: .4byte 0xFFFFF87F
_0802C8A4: .4byte 0x000007FC
	.syntax divided
