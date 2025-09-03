	.syntax unified
sub_0802BBE4:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	str r0, [sp]
	ldr r0, _0802BC44
	ldr r1, _0802BC48
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_0801B498
	mov sl, r0
	ldr r0, [sp]
	adds r0, #0xb4
	movs r1, #0
	strb r1, [r0]
	ldr r0, [sp]
	adds r0, #0xb5
	strb r1, [r0]
	ldr r0, [sp]
	adds r0, #0xb7
	strb r1, [r0]
	ldr r0, [sp]
	adds r0, #0xb8
	strb r1, [r0]
	ldr r3, [sp]
	adds r3, #0xc6
	ldrb r1, [r3]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r1
	movs r4, #3
	rsbs r4, r4, #0
	ands r0, r4
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #4
	ands r0, r1
	strb r0, [r3]
	movs r3, #0
	str r3, [sp, #0xc]
	mov r6, sl
	ldrb r0, [r6]
	b _0802C35A
	.align 2, 0
_0802BC44: .4byte gGame
_0802BC48: .4byte 0x000067AC
_0802BC4C:
	ldr r4, [sp, #0xc]
	adds r4, #5
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r7, r0, #0
	mov r1, sl
	ldrh r0, [r1, #0x10]
	bl sub_08036D18
	str r0, [sp, #4]
	mov r2, sl
	ldrh r0, [r2, #0x10]
	bl sub_08036D3C
	str r0, [sp, #8]
	ldr r1, [sp]
	adds r1, #0xb4
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	mov r3, sl
	ldrb r0, [r3, #3]
	lsls r0, r0, #0x1a
	mov r8, r4
	cmp r0, #0
	bge _0802BCE4
	adds r2, r7, #0
	adds r2, #0xbc
	ldrb r1, [r2]
	movs r4, #2
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r3]
	lsls r0, r0, #0x19
	str r2, [sp, #0x20]
	cmp r0, #0
	bge _0802BCC2
	mov r0, sl
	adds r0, #0xc
	movs r1, #1
	bl sub_080263A4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r6, #1
	ands r0, r6
	ldr r1, [sp, #0x20]
	ldrb r2, [r1]
	adds r1, r4, #0
	ands r1, r2
	orrs r1, r0
	ldr r2, [sp, #0x20]
	strb r1, [r2]
_0802BCC2:
	mov r3, sl
	ldrb r0, [r3, #8]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _0802BD98
	bl sub_08026470
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r6, #1
	ands r0, r6
	ldr r1, [sp, #0x20]
	ldrb r2, [r1]
	adds r1, r4, #0
	ands r1, r2
	b _0802BD48
_0802BCE4:
	mov r3, sl
	ldrb r0, [r3]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0802BD50
	mov r0, sl
	adds r0, #0xc
	movs r1, #1
	bl sub_080263A4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r7, #0
	adds r3, #0xbc
	movs r5, #1
	ands r0, r5
	lsls r4, r0, #1
	ldrb r2, [r3]
	movs r6, #3
	rsbs r6, r6, #0
	adds r1, r6, #0
	ands r1, r2
	orrs r1, r4
	movs r4, #2
	rsbs r4, r4, #0
	ands r1, r4
	orrs r1, r0
	strb r1, [r3]
	lsls r1, r1, #0x1f
	str r3, [sp, #0x20]
	cmp r1, #0
	beq _0802BD98
	mov r1, sl
	ldrb r0, [r1, #8]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _0802BD98
	bl sub_08026470
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r0, r5
	lsls r3, r0, #1
	ldr r1, [sp, #0x20]
	ldrb r2, [r1]
	adds r1, r6, #0
	ands r1, r2
	orrs r1, r3
	ands r1, r4
_0802BD48:
	orrs r1, r0
	ldr r2, [sp, #0x20]
	strb r1, [r2]
	b _0802BD98
_0802BD50:
	mov r3, sl
	ldrb r0, [r3, #8]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _0802BD86
	bl sub_08026470
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r7, #0
	adds r2, #0xbc
	movs r4, #1
	ands r0, r4
	lsls r3, r0, #1
	ldrb r1, [r2]
	movs r6, #3
	rsbs r6, r6, #0
	ands r1, r6
	orrs r1, r3
	movs r3, #2
	rsbs r3, r3, #0
	ands r1, r3
	orrs r1, r0
	strb r1, [r2]
	str r2, [sp, #0x20]
	b _0802BD98
_0802BD86:
	adds r0, r7, #0
	adds r0, #0xbc
	ldrb r1, [r0]
	movs r4, #1
	orrs r1, r4
	movs r2, #2
	orrs r1, r2
	strb r1, [r0]
	str r0, [sp, #0x20]
_0802BD98:
	mov r6, sl
	ldrb r0, [r6, #9]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802BDAC
	ldr r1, [sp]
	adds r1, #0xb7
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0802BDAC:
	adds r0, r7, #0
	adds r0, #0x85
	mov r1, r8
	strb r1, [r0]
	adds r0, #1
	movs r2, #0
	strb r2, [r0]
	adds r1, r7, #0
	adds r1, #0x87
	movs r0, #2
	strb r0, [r1]
	mov r3, sl
	ldrh r1, [r3, #0x10]
	adds r0, r7, #0
	adds r0, #0x88
	strh r1, [r0]
	ldrb r0, [r3, #9]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1d
	adds r1, r7, #0
	adds r1, #0x8b
	strb r0, [r1]
	adds r1, #1
	ldr r0, _0802C1C4
	strh r0, [r1]
	movs r4, #0
	str r4, [r7, #0x1c]
	adds r0, r7, #0
	adds r0, #0x92
	strh r4, [r0]
	subs r0, #4
	movs r6, #1
	strb r6, [r0]
	adds r0, #1
	movs r1, #0
	strb r1, [r0]
	adds r3, r7, #0
	adds r3, #0xbf
	ldrb r1, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	adds r2, r7, #0
	adds r2, #0xcc
	str r2, [sp, #0x10]
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r3]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3]
	movs r4, #0xc8
	adds r4, r4, r7
	mov r8, r4
	ldrb r1, [r4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	adds r0, r7, #0
	adds r0, #0x9e
	movs r6, #0
	strh r6, [r0]
	adds r0, #2
	strh r6, [r0]
	adds r0, #2
	strh r6, [r0]
	adds r0, #2
	strh r6, [r0]
	ldrb r0, [r4]
	movs r2, #7
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r4]
	mov r4, sl
	ldrb r1, [r4, #9]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1d
	lsls r1, r1, #2
	ldr r6, [sp, #0x20]
	ldrb r0, [r6]
	movs r4, #0x1d
	rsbs r4, r4, #0
	adds r2, r4, #0
	ands r0, r2
	orrs r0, r1
	movs r5, #0x21
	rsbs r5, r5, #0
	ands r0, r5
	movs r6, #0x41
	rsbs r6, r6, #0
	ands r0, r6
	ldr r1, [sp, #0x20]
	strb r0, [r1]
	mov r2, sl
	ldrb r1, [r2]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	lsls r1, r1, #7
	movs r4, #0x7f
	ands r0, r4
	orrs r0, r1
	ldr r6, [sp, #0x20]
	strb r0, [r6]
	ldrb r1, [r2, #0xa]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	adds r0, r7, #0
	adds r0, #0xcb
	str r0, [sp, #0x14]
	movs r2, #1
	ands r1, r2
	lsls r1, r1, #6
	ldrb r2, [r0]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	ldr r4, [sp, #0x14]
	strb r0, [r4]
	mov r6, sl
	ldrb r1, [r6, #0xa]
	lsrs r1, r1, #7
	adds r0, r7, #0
	adds r0, #0xcd
	str r0, [sp, #0x18]
	movs r2, #1
	ands r1, r2
	ldrb r2, [r0]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	ldr r4, [sp, #0x18]
	strb r0, [r4]
	ldrb r0, [r6]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	movs r6, #0xbd
	adds r6, r6, r7
	mov sb, r6
	movs r1, #1
	ands r0, r1
	ldrb r1, [r6]
	movs r2, #2
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r6]
	mov r4, sl
	ldrb r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	movs r6, #1
	ands r0, r6
	lsls r0, r0, #1
	movs r1, #3
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	mov r0, sb
	strb r1, [r0]
	ldr r2, [sp, #8]
	ldrb r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	ands r0, r6
	lsls r0, r0, #2
	movs r4, #5
	rsbs r4, r4, #0
	ands r1, r4
	orrs r1, r0
	mov r6, sb
	strb r1, [r6]
	ldrb r1, [r2]
	lsrs r1, r1, #7
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #5
	ldr r4, [sp, #0x10]
	ldrb r2, [r4]
	adds r0, r5, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	mov r6, sl
	ldrh r1, [r6]
	lsls r1, r1, #0x17
	movs r4, #3
	lsrs r1, r1, #0x1e
	lsls r1, r1, #3
	mov r2, sb
	ldrb r0, [r2]
	movs r6, #0x19
	rsbs r6, r6, #0
	adds r2, r6, #0
	ands r0, r2
	orrs r0, r1
	mov r1, sb
	strb r0, [r1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	str r3, [sp, #0x24]
	bl sub_08036CD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r0, r4
	lsls r0, r0, #5
	mov r2, sb
	ldrb r1, [r2]
	movs r4, #0x61
	rsbs r4, r4, #0
	adds r2, r4, #0
	ands r1, r2
	orrs r1, r0
	mov r6, sb
	strb r1, [r6]
	ldr r0, [sp, #0x14]
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	ldr r3, [sp, #0x24]
	ldrb r1, [r3]
	movs r2, #9
	rsbs r2, r2, #0
	mov sb, r2
	mov r0, sb
	ands r0, r1
	adds r4, #0x50
	ands r0, r4
	ands r0, r5
	strb r0, [r3]
	adds r6, r7, #0
	adds r6, #0xc4
	str r6, [sp, #0x1c]
	ldrb r1, [r6]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r6]
	adds r2, r7, #0
	adds r2, #0xc5
	ldrb r1, [r2]
	movs r3, #0x7d
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r1, r0
	movs r0, #0x4c
	orrs r1, r0
	strb r1, [r2]
	ldr r0, [r6]
	ldr r1, _0802C1C8
	ands r0, r1
	str r0, [r6]
	adds r2, #1
	ldrb r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	subs r4, #0x30
	ands r0, r4
	movs r6, #0x7f
	ands r0, r6
	strb r0, [r2]
	mov r0, sl
	ldrb r1, [r0, #1]
	lsls r1, r1, #0x1b
	movs r4, #0xf
	lsrs r1, r1, #0x1c
	lsls r1, r1, #0xf
	ldr r2, [sp, #0x20]
	ldr r0, [r2]
	ldr r2, _0802C1CC
	ands r0, r2
	orrs r0, r1
	ldr r3, [sp, #0x20]
	str r0, [r3]
	mov r6, sl
	ldrh r2, [r6, #4]
	lsls r2, r2, #0x17
	adds r3, r7, #0
	adds r3, #0xc0
	lsrs r2, r2, #0x17
	ldrh r0, [r3]
	ldr r6, _0802C1D0
	adds r1, r6, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3]
	mov r0, sl
	ldr r1, [r0]
	lsls r1, r1, #0xf
	movs r2, #0xbe
	adds r2, r2, r7
	mov ip, r2
	lsrs r1, r1, #0x1c
	lsls r1, r1, #3
	ldrb r0, [r2]
	movs r6, #0x79
	rsbs r6, r6, #0
	adds r2, r6, #0
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	mov r6, sl
	ldr r2, [r6, #4]
	ldr r0, _0802C1D4
	ands r2, r0
	ldr r0, [r3]
	ldr r1, _0802C1D8
	ands r0, r1
	orrs r0, r2
	str r0, [r3]
	ldrb r0, [r6, #2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	lsls r0, r0, #7
	mov r2, ip
	ldrh r1, [r2]
	ldr r3, _0802C1DC
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	mov r6, ip
	strh r1, [r6]
	mov r1, sl
	ldrh r0, [r1, #6]
	adds r3, r7, #0
	adds r3, #0xc2
	ldr r2, _0802C1E0
	ands r2, r0
	ldrh r0, [r3]
	ldr r6, _0802C1E4
	adds r1, r6, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3]
	mov r0, sl
	ldrb r1, [r0, #7]
	lsrs r1, r1, #3
	adds r3, #1
	lsls r1, r1, #3
	ldrb r2, [r3]
	movs r0, #7
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	mov r2, sl
	ldrb r1, [r2, #3]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1f
	adds r6, r7, #0
	adds r6, #0xc9
	movs r3, #1
	ands r1, r3
	ldrb r2, [r6]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6]
	mov r1, sl
	ldrh r0, [r1, #0x14]
	adds r1, r7, #0
	adds r1, #0x96
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x9a
	movs r2, #1
	strh r2, [r0]
	adds r3, r7, #0
	adds r3, #0xc7
	ldrb r1, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3]
	movs r2, #0xca
	adds r2, r2, r7
	mov ip, r2
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r3]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	ldrb r1, [r2]
	mov r0, sb
	ands r0, r1
	strb r0, [r2]
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r2, [sp, #0x18]
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	mov r0, sl
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	ldr r2, [sp, #4]
	ldrb r0, [r2, #1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	orrs r1, r0
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #3
	ldrb r2, [r3]
	mov r0, sb
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r2, [sp, #0x10]
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, [sp, #8]
	ldrb r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	lsls r0, r0, #4
	ldrb r1, [r6]
	movs r2, #0x71
	rsbs r2, r2, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
	ldr r2, [sp, #8]
	ldrb r0, [r2, #1]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	lsls r0, r0, #7
	movs r2, #0x7f
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
	ldr r6, [sp, #8]
	ldrb r1, [r6, #1]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1f
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #5
	ldr r6, [sp, #0x14]
	ldrb r2, [r6]
	adds r0, r5, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6]
	mov r1, r8
	ldrb r0, [r1]
	ands r5, r0
	strb r5, [r1]
	mov r2, ip
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	movs r6, #0x11
	rsbs r6, r6, #0
	ands r0, r6
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r2, [sp, #0x14]
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	adds r6, #0xe
	ands r0, r6
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, sb
	ands r0, r2
	subs r6, #0xe
	ands r0, r6
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	ldr r2, [sp, #0x10]
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	adds r6, #0xc
	ands r0, r6
	mov r1, sb
	ands r0, r1
	movs r2, #0x11
	rsbs r2, r2, #0
	b _0802C1E8
	.align 2, 0
_0802C1C4: .4byte 0x0000FFFF
_0802C1C8: .4byte 0xFFE07FFF
_0802C1CC: .4byte 0xFFF87FFF
_0802C1D0: .4byte 0xFFFFFE00
_0802C1D4: .4byte 0x0003FE00
_0802C1D8: .4byte 0xFFFC01FF
_0802C1DC: .4byte 0xFFFFF87F
_0802C1E0: .4byte 0x000007FC
_0802C1E4: .4byte 0xFFFFF803
_0802C1E8:
	ands r0, r2
	ldr r6, [sp, #0x10]
	strb r0, [r6]
	ldr r1, [sp, #0xc]
	lsls r0, r1, #3
	ldr r2, [sp]
	adds r0, r2, r0
	str r0, [r7, #0x2c]
	movs r6, #0
	str r6, [r7, #0x30]
	str r6, [r7, #0x34]
	ldrb r0, [r3]
	ands r4, r0
	movs r0, #0x80
	orrs r4, r0
	strb r4, [r3]
	str r6, [r7, #0x38]
	str r6, [r7, #0x3c]
	ldr r1, [sp, #8]
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
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0xb2
	strh r6, [r0]
	subs r0, #2
	movs r2, #0
	strh r2, [r0]
	subs r0, #2
	strh r2, [r0]
	ldr r3, [sp, #0x10]
	ldrb r1, [r3]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3]
	ldr r4, [sp, #4]
	ldrb r1, [r4, #8]
	adds r0, r7, #0
	adds r0, #0xb4
	strb r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #4
	movs r1, #3
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	adds r0, #3
	strb r6, [r0]
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
	mov r1, sl
	ldrb r0, [r1, #9]
	lsls r0, r0, #0x1b
	ldr r3, [sp, #0x1c]
	cmp r0, #0
	bge _0802C2AC
	ldr r0, [r1, #8]
	lsls r0, r0, #0xb
	lsrs r0, r0, #0x18
	lsls r0, r0, #2
	ldrh r1, [r3]
	ldr r4, _0802C2A8
	adds r2, r4, #0
	ands r1, r2
	orrs r1, r0
	strh r1, [r3]
	b _0802C2C6
	.align 2, 0
_0802C2A8: .4byte 0xFFFFFC03
_0802C2AC:
	mov r6, sl
	ldrh r0, [r6, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x19
	lsls r0, r0, #2
	ldr r2, [sp, #0x1c]
	ldrh r1, [r2]
	ldr r3, _0802C3EC
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	ldr r4, [sp, #0x1c]
	strh r1, [r4]
_0802C2C6:
	ldr r0, [r7, #0x2c]
	movs r1, #8
	bl memclear
	mov r6, sl
	ldrb r0, [r6, #0x12]
	lsls r0, r0, #4
	adds r0, #8
	lsls r1, r0, #4
	movs r2, #0
	strh r1, [r7]
	ldrb r0, [r6, #0x13]
	lsls r0, r0, #4
	adds r0, #0xf
	lsls r0, r0, #4
	strh r0, [r7, #2]
	ldrb r0, [r6, #3]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0802C2F4
	adds r0, r1, #0
	adds r0, #0x80
	strh r0, [r7]
_0802C2F4:
	mov r1, sl
	ldrb r0, [r1, #3]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802C304
	ldrh r0, [r7, #2]
	adds r0, #0x80
	strh r0, [r7, #2]
_0802C304:
	strh r2, [r7, #4]
	strh r2, [r7, #6]
	ldr r2, [sp, #4]
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x19
	adds r0, #8
	strh r0, [r7, #0x14]
	ldrb r0, [r2]
	lsrs r0, r0, #4
	adds r0, #1
	lsls r0, r0, #3
	strh r0, [r7, #0x16]
	movs r2, #0
	ldr r4, [sp, #0xc]
	adds r4, #1
	mov r5, sl
	adds r5, #0x18
	adds r3, r7, #0
	adds r3, #0x74
	movs r6, #0xff
_0802C32E:
	adds r0, r3, r2
	ldrb r1, [r0]
	orrs r1, r6
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xc
	bls _0802C32E
	adds r0, r7, #0
	bl sub_08036BA4
	adds r0, r7, #0
	bl sub_0802DE5C
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	mov sl, r5
	cmp r0, #0x13
	bhi _0802C362
	ldrb r0, [r5]
_0802C35A:
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802C362
	b _0802BC4C
_0802C362:
	ldr r0, [sp]
	movs r1, #1
	bl sub_0802C8A8
	ldr r0, [sp]
	adds r0, #0xb4
	ldrb r0, [r0]
	str r0, [sp, #0xc]
	cmp r0, #0x13
	bhi _0802C3AE
	movs r3, #2
	rsbs r3, r3, #0
	adds r5, r3, #0
_0802C37C:
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
	movs r4, #3
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, [sp, #0xc]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	cmp r0, #0x13
	bls _0802C37C
_0802C3AE:
	ldr r1, _0802C3F0
	ldr r6, _0802C3F4
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, #0x23
	bne _0802C3DC
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	cmp r0, #4
	bne _0802C3DC
	movs r0, #5
	bl get_obj_direct
	adds r7, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802C3DC
	ldrh r0, [r7]
	subs r0, #0x10
	strh r0, [r7]
_0802C3DC:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C3EC: .4byte 0xFFFFFC03
_0802C3F0: .4byte gGame
_0802C3F4: .4byte 0x000067AC
	.syntax divided
