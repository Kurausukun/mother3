	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	str r0, [sp, #4]
	mov r0, sp
	strh r1, [r0]
	ldr r2, [sp, #4]
	adds r2, #0xb4
	ldrb r1, [r2]
	cmp r1, #0x13
	bls _0802C8C6
	b _0802CEAE
_0802C8C6:
	ldrh r0, [r0]
	cmp r0, #0
	bne _0802C8D0
	subs r0, r1, #1
	strb r0, [r2]
_0802C8D0:
	movs r6, #2
	ldr r1, _0802C8E4
	ldr r2, _0802C8E8
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #6
	bne _0802C8EC
	movs r3, #2
	str r3, [sp, #0x10]
	b _0802C92C
	.align 2, 0
_0802C8E4: .4byte gGame
_0802C8E8: .4byte 0x0000829B
_0802C8EC:
	ldr r0, _0802C908
	adds r1, r1, r0
	ldr r2, _0802C90C
	movs r3, #0xdf
	lsls r3, r3, #3
	adds r0, r2, r3
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r1, r0
	bne _0802C914
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r1, _0802C910
	b _0802C928
	.align 2, 0
_0802C908: .4byte 0x000067AC
_0802C90C: .4byte gSave
_0802C910: .4byte 0x000006FE
_0802C914:
	movs r3, #0xe0
	lsls r3, r3, #3
	adds r0, r2, r3
	ldrh r0, [r0]
	cmp r1, r0
	beq _0802C922
	b _0802CEAE
_0802C922:
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r1, _0802C948
_0802C928:
	adds r0, r2, r1
	ldrh r6, [r0]
_0802C92C:
	movs r0, #0x41
	bl sub_08002998
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bls _0802C93C
	b _0802CEAE
_0802C93C:
	lsls r0, r0, #2
	ldr r1, _0802C94C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802C948: .4byte 0x00000706
_0802C94C: .4byte _0802C950
_0802C950:
	.4byte _0802C964
	.4byte _0802C968
	.4byte _0802C96E
	.4byte _0802C978
	.4byte _0802C97C
_0802C964:
	movs r5, #0x7b
	b _0802C97E
_0802C968:
	movs r5, #0x8e
	lsls r5, r5, #2
	b _0802C97E
_0802C96E:
	ldr r5, _0802C974
	b _0802C97E
	.align 2, 0
_0802C974: .4byte 0x00000237
_0802C978:
	movs r5, #0xd0
	b _0802C97E
_0802C97C:
	ldr r5, _0802CD64
_0802C97E:
	ldr r4, [sp, #4]
	adds r4, #0xb4
	ldrb r0, [r4]
	adds r0, #5
	bl get_obj_direct
	adds r7, r0, #0
	adds r0, r5, #0
	bl sub_08036D18
	str r0, [sp, #8]
	adds r0, r5, #0
	bl sub_08036D3C
	str r0, [sp, #0xc]
	adds r2, r7, #0
	adds r2, #0xbc
	str r2, [sp, #0x14]
	ldrb r0, [r2]
	movs r3, #1
	orrs r0, r3
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4]
	adds r0, #5
	adds r1, r7, #0
	adds r1, #0x85
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x86
	movs r1, #0
	strb r1, [r0]
	adds r1, r7, #0
	adds r1, #0x87
	movs r0, #2
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x88
	strh r5, [r0]
	mov r0, sp
	ldrh r0, [r0]
	str r4, [sp, #0x38]
	cmp r0, #0
	beq _0802CA0C
	adds r0, r7, #0
	adds r0, #0x8b
	strb r6, [r0]
	adds r0, #7
	movs r2, #0
	strh r2, [r0]
	movs r0, #7
	ands r6, r0
	lsls r2, r6, #2
	ldr r3, [sp, #0x14]
	ldrb r1, [r3]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	adds r0, r7, #0
	adds r0, #0x8f
	movs r1, #0
	strb r1, [r0]
	adds r2, r7, #0
	adds r2, #0xbf
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
_0802CA0C:
	adds r1, r7, #0
	adds r1, #0x8c
	ldr r0, _0802CD68
	strh r0, [r1]
	movs r2, #0
	str r2, [r7, #0x1c]
	adds r0, r7, #0
	adds r0, #0x8e
	movs r3, #1
	strb r3, [r0]
	adds r0, #0x31
	str r0, [sp, #0x18]
	ldrb r1, [r0]
	movs r5, #0x41
	rsbs r5, r5, #0
	adds r0, r5, #0
	ands r0, r1
	ldr r1, [sp, #0x18]
	strb r0, [r1]
	adds r2, r7, #0
	adds r2, #0xcc
	str r2, [sp, #0x1c]
	ldrb r1, [r2]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0xc8
	str r0, [sp, #0x20]
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	ldr r1, [sp, #0x20]
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x9e
	movs r2, #0
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	ldrb r1, [r1]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	ldr r1, [sp, #0x20]
	strb r0, [r1]
	ldr r2, [sp, #0x14]
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r5
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r2, r7, #0
	adds r2, #0xcb
	str r2, [sp, #0x24]
	ldrb r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0xcd
	str r0, [sp, #0x28]
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	ldr r1, [sp, #0x28]
	strb r0, [r1]
	movs r2, #0xbd
	adds r2, r2, r7
	mov sl, r2
	ldrb r1, [r2]
	movs r0, #1
	orrs r1, r0
	movs r4, #3
	rsbs r4, r4, #0
	ands r1, r4
	strb r1, [r2]
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	movs r2, #1
	ands r0, r2
	lsls r0, r0, #2
	subs r2, #6
	ands r1, r2
	orrs r1, r0
	mov r0, sl
	strb r1, [r0]
	ldr r2, [sp, #0xc]
	ldrb r1, [r2]
	lsrs r1, r1, #7
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #5
	ldr r0, [sp, #0x1c]
	ldrb r2, [r0]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	ldr r1, [sp, #0x1c]
	strb r0, [r1]
	mov r2, sl
	ldrb r1, [r2]
	movs r0, #0x19
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0
	str r3, [sp, #0x3c]
	bl sub_08036CD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #5
	mov r1, sl
	ldrb r2, [r1]
	movs r1, #0x61
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	mov r2, sl
	strb r1, [r2]
	ldr r0, [sp, #0x24]
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	ldr r1, [sp, #0x24]
	strb r0, [r1]
	ldr r2, [sp, #0x18]
	ldrb r1, [r2]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r0, r2
	ldr r1, [sp, #0x18]
	strb r0, [r1]
	adds r2, r7, #0
	adds r2, #0xc4
	str r2, [sp, #0x2c]
	ldrb r1, [r2]
	ldr r3, [sp, #0x3c]
	adds r0, r3, #0
	ands r0, r1
	ands r0, r4
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r2]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x4c
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [sp, #0x2c]
	ldr r0, [r1]
	ldr r1, _0802CD6C
	ands r0, r1
	ldr r2, [sp, #0x2c]
	str r0, [r2]
	adds r2, r7, #0
	adds r2, #0xc6
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r5
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r2, [sp, #0x14]
	ldr r0, [r2]
	ldr r1, _0802CD70
	ands r0, r1
	movs r1, #0xa0
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r2]
	adds r2, r7, #0
	adds r2, #0xc0
	ldrh r1, [r2]
	ldr r0, _0802CD74
	ands r0, r1
	movs r1, #0xc
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0xbe
	adds r0, r0, r7
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, ip
	strb r0, [r1]
	ldr r0, [r2]
	ldr r1, _0802CD78
	ands r0, r1
	str r0, [r2]
	mov r2, ip
	ldrh r1, [r2]
	ldr r0, _0802CD7C
	ands r0, r1
	strh r0, [r2]
	adds r2, r7, #0
	adds r2, #0xc2
	ldrh r1, [r2]
	ldr r0, _0802CD80
	ands r0, r1
	strh r0, [r2]
	adds r2, #1
	ldrb r1, [r2]
	movs r0, #7
	ands r0, r1
	strb r0, [r2]
	adds r6, r7, #0
	adds r6, #0xc9
	ldrb r1, [r6]
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r6]
	adds r0, r7, #0
	adds r0, #0x96
	movs r1, #0
	strh r1, [r0]
	adds r0, #4
	movs r2, #1
	strh r2, [r0]
	movs r0, #0xc7
	adds r0, r0, r7
	mov sb, r0
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	ands r0, r4
	mov r1, sb
	strb r0, [r1]
	movs r2, #0xca
	adds r2, r2, r7
	mov r8, r2
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	mov r2, sb
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, r8
	strb r0, [r1]
	ldr r2, [sp, #0x20]
	ldrb r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r2, [sp, #0x28]
	ldrb r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, [sp, #8]
	ldrb r1, [r0, #1]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	movs r2, #1
	ands r1, r2
	lsls r1, r1, #3
	mov r0, sb
	ldrb r2, [r0]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, sb
	strb r0, [r1]
	ldr r2, [sp, #0x1c]
	ldrb r0, [r2]
	ands r5, r0
	strb r5, [r2]
	ldr r1, [sp, #0xc]
	ldrb r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	lsls r0, r0, #4
	ldrb r2, [r6]
	movs r1, #0x71
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
	ldr r2, [sp, #0xc]
	ldrb r0, [r2, #1]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	lsls r0, r0, #7
	movs r2, #0x7f
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
	ldr r0, [sp, #0xc]
	ldrb r1, [r0, #1]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1f
	movs r2, #1
	ands r1, r2
	lsls r1, r1, #5
	ldr r0, [sp, #0x24]
	ldrb r2, [r0]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	ldr r1, [sp, #0x24]
	strb r0, [r1]
	ldr r2, [sp, #0x20]
	ldrb r0, [r2]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r2]
	mov r0, r8
	ldrb r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	movs r2, #0x7f
	ands r0, r2
	mov r1, r8
	strb r0, [r1]
	ldr r2, [sp, #0x24]
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	ands r0, r4
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	movs r2, #9
	rsbs r2, r2, #0
	ands r0, r2
	subs r1, #0xc
	ands r0, r1
	ldr r2, [sp, #0x24]
	strb r0, [r2]
	ldr r1, [sp, #0x1c]
	ldrb r0, [r1]
	ands r4, r0
	movs r2, #5
	rsbs r2, r2, #0
	ands r4, r2
	movs r0, #9
	rsbs r0, r0, #0
	ands r4, r0
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r4, r1
	ldr r2, [sp, #0x1c]
	strb r4, [r2]
	ldr r1, [sp, #0x38]
	ldrb r0, [r1]
	lsls r0, r0, #3
	ldr r2, [sp, #4]
	adds r0, r2, r0
	str r0, [r7, #0x2c]
	movs r0, #0
	str r0, [r7, #0x30]
	str r0, [r7, #0x34]
	mov r2, sb
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	str r0, [r7, #0x38]
	str r0, [r7, #0x3c]
	ldr r1, [sp, #0xc]
	ldrb r0, [r1, #2]
	lsrs r0, r0, #1
	adds r2, r7, #0
	adds r2, #0xa6
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
	b _0802CD84
	.align 2, 0
_0802CD64: .4byte 0x00000236
_0802CD68: .4byte 0x0000FFFF
_0802CD6C: .4byte 0xFFE07FFF
_0802CD70: .4byte 0xFFF87FFF
_0802CD74: .4byte 0xFFFFFE00
_0802CD78: .4byte 0xFFFC01FF
_0802CD7C: .4byte 0xFFFFF87F
_0802CD80: .4byte 0xFFFFF803
_0802CD84:
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0xb2
	movs r2, #0
	strh r2, [r0]
	subs r0, #2
	strh r2, [r0]
	subs r0, #2
	strh r2, [r0]
	ldr r1, [sp, #0x1c]
	ldrb r0, [r1]
	movs r2, #0x7f
	ands r2, r0
	strb r2, [r1]
	ldr r2, [sp, #8]
	ldrb r1, [r2, #8]
	adds r0, r7, #0
	adds r0, #0xb4
	strb r1, [r0]
	adds r0, #2
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
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x50
	ldrb r0, [r1]
	ands r3, r0
	strb r3, [r1]
	ldr r3, [sp, #0x2c]
	ldrh r1, [r3]
	ldr r0, _0802CE04
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strh r0, [r3]
	ldr r0, [r7, #0x2c]
	movs r1, #8
	bl memclear
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0802CE08
	cmp r0, #1
	beq _0802CE38
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r7]
	b _0802CE56
	.align 2, 0
_0802CE04: .4byte 0xFFFFFC03
_0802CE08:
	ldr r0, _0802CE24
	ldr r1, _0802CE28
	adds r0, r0, r1
	movs r2, #0
	strb r2, [r0]
	ldr r1, _0802CE2C
	ldr r3, _0802CE30
	adds r0, r1, r3
	ldrh r0, [r0]
	lsls r0, r0, #4
	strh r0, [r7]
	ldr r0, _0802CE34
	adds r1, r1, r0
	b _0802CE52
	.align 2, 0
_0802CE24: .4byte gGame
_0802CE28: .4byte 0x00008375
_0802CE2C: .4byte gSave
_0802CE30: .4byte 0x000006FA
_0802CE34: .4byte 0x000006FC
_0802CE38:
	ldr r0, _0802CEC0
	ldr r1, _0802CEC4
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldr r1, _0802CEC8
	ldr r2, _0802CECC
	adds r0, r1, r2
	ldrh r0, [r0]
	lsls r0, r0, #4
	strh r0, [r7]
	ldr r3, _0802CED0
	adds r1, r1, r3
_0802CE52:
	ldrh r0, [r1]
	lsls r0, r0, #4
_0802CE56:
	strh r0, [r7, #2]
	movs r0, #0
	strh r0, [r7, #4]
	strh r0, [r7, #6]
	ldr r1, [sp, #8]
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x19
	adds r0, #8
	strh r0, [r7, #0x14]
	ldrb r0, [r1]
	lsrs r0, r0, #4
	adds r0, #1
	lsls r0, r0, #3
	strh r0, [r7, #0x16]
	movs r2, #0
	ldr r4, [sp, #4]
	adds r4, #0xc6
	adds r3, r7, #0
	adds r3, #0x74
	movs r5, #0xff
_0802CE80:
	adds r0, r3, r2
	ldrb r1, [r0]
	orrs r1, r5
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xc
	bls _0802CE80
	adds r0, r7, #0
	bl sub_08036BA4
	adds r0, r7, #0
	bl sub_0802DE5C
	ldrb r0, [r4]
	movs r1, #8
	orrs r0, r1
	strb r0, [r4]
	ldr r2, [sp, #0x38]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_0802CEAE:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802CEC0: .4byte gGame
_0802CEC4: .4byte 0x00008375
_0802CEC8: .4byte gSave
_0802CECC: .4byte 0x00000702
_0802CED0: .4byte 0x00000704
	.syntax divided
