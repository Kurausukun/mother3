	.syntax unified
sub_0800494C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r3, _080049C8
	movs r0, #0
	strh r0, [r3]
	add r6, sp, #4
	ldr r1, _080049CC
	ldrh r0, [r1]
	strh r0, [r6]
	mov r5, sp
	adds r5, #6
	ldr r2, _080049D0
	ldrh r0, [r2]
	strh r0, [r5]
	ldrh r0, [r1]
	movs r4, #1
	orrs r0, r4
	strh r0, [r1]
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	strh r4, [r3]
	ldr r3, _080049D4
	ldrb r0, [r3]
	mov sl, r0
	movs r1, #0
	mov r8, r1
	movs r0, #3
	strb r0, [r3]
	ldr r0, _080049D8
	adds r2, r3, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r7, _080049DC
	ldr r1, _080049E0
	adds r2, r7, r1
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	mov r1, sp
	adds r1, #2
	strh r4, [r1]
	ldr r2, _080049E4
	adds r0, r3, r2
	ldrh r0, [r0]
	adds r4, r1, #0
	cmp r0, #0xd6
	beq _08004A34
	cmp r0, #0xd6
	bgt _080049E8
	cmp r0, #0xcb
	beq _080049EC
	b _08004A5C
	.align 2, 0
_080049C8: .4byte 0x04000208
_080049CC: .4byte 0x04000200
_080049D0: .4byte 0x04000004
_080049D4: .4byte gGame
_080049D8: .4byte 0x000067C4
_080049DC: .4byte gSomeBlend
_080049E0: .4byte 0x00011D16
_080049E4: .4byte 0x000067AC
_080049E8:
	cmp r0, #0xd8
	bgt _08004A5C
_080049EC:
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
	ldr r0, _08004A24
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08004A28
	ldr r3, _08004A2C
	adds r2, r1, r3
	ldrh r0, [r2]
	subs r0, #0x78
	strh r0, [r2]
	ldr r0, _08004A30
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0x9f
	bl sub_08005AD8
	b _08004A82
	.align 2, 0
_08004A24: .4byte 0x000067C4
_08004A28: .4byte gSomeBlend
_08004A2C: .4byte 0x000053A0
_08004A30: .4byte 0x000121BB
_08004A34:
	mov r0, sp
	mov r1, r8
	strh r1, [r0]
	strh r1, [r4]
	ldr r2, _08004A54
	adds r1, r7, r2
	ldrh r0, [r1]
	adds r0, #0xb4
	strh r0, [r1]
	ldr r3, _08004A58
	adds r2, r7, r3
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	b _08004A82
	.align 2, 0
_08004A54: .4byte 0x000053A0
_08004A58: .4byte 0x000121BB
_08004A5C:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08004B74
	ldr r0, _08004B78
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r0, #0xb4
	strh r0, [r2]
	ldr r2, _08004B7C
	adds r1, r1, r2
	ldrb r2, [r1]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0x9f
	bl sub_08005AD8
_08004A82:
	ldrh r0, [r4]
	cmp r0, #0
	beq _08004A8C
	bl sub_08005BFC
_08004A8C:
	movs r5, #0
	ldr r0, _08004B74
	ldr r3, _08004B78
	adds r0, r0, r3
	ldrh r1, [r0]
	cmp r5, r1
	bhs _08004B08
	mov sb, r0
	ldr r4, _08004B80
	ldr r2, _08004B84
	adds r2, r2, r4
	mov r8, r2
	ldr r3, _08004B88
	adds r7, r4, r3
	ldr r6, _08004B8C
_08004AAA:
	bl sub_08004FB4
	bl sub_08001960
	bl sub_08005C4C
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08004AFA
	mov r1, sb
	ldrh r0, [r1]
	subs r0, #0x1e
	cmp r5, r0
	bne _08004AFA
	ldrb r0, [r7]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r7]
	ldr r2, _08004B90
	adds r0, r4, r2
	strh r6, [r0]
	ldr r3, _08004B94
	adds r0, r4, r3
	strh r6, [r0]
	ldr r1, _08004B98
	adds r0, r4, r1
	strh r6, [r0]
	movs r0, #0xa
	movs r1, #0x1e
	movs r2, #0
	bl sub_080272F4
	mov r2, r8
	ldrb r0, [r2]
	movs r3, #3
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
_08004AFA:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, sb
	ldrh r0, [r0]
	cmp r5, r0
	blo _08004AAA
_08004B08:
	ldr r0, _08004B9C
	movs r1, #0x80
	lsls r1, r1, #8
	bl memclear
	ldr r0, _08004BA0
	movs r1, #0x80
	lsls r1, r1, #4
	bl memclear
	ldr r0, _08004B80
	movs r4, #0
	mov r1, sl
	strb r1, [r0]
	ldr r0, _08004B74
	ldr r2, _08004BA4
	adds r3, r0, r2
	ldrb r2, [r3]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r3]
	ldr r3, _08004BA8
	adds r0, r0, r3
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	bl sub_080062F0
	bl sub_08005B68
	bl sub_08005C14
	ldr r2, _08004BAC
	strh r4, [r2]
	ldr r1, _08004BB0
	mov r3, sp
	ldrh r0, [r3, #4]
	strh r0, [r1]
	ldr r1, _08004BB4
	ldrh r0, [r3, #6]
	strh r0, [r1]
	movs r0, #1
	strh r0, [r2]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004B74: .4byte gSomeBlend
_08004B78: .4byte 0x000053A0
_08004B7C: .4byte 0x000121BB
_08004B80: .4byte gGame
_08004B84: .4byte 0x000083B0
_08004B88: .4byte 0x000067C4
_08004B8C: .4byte 0x0000FFE1
_08004B90: .4byte 0x000083AC
_08004B94: .4byte 0x000083AA
_08004B98: .4byte 0x000083A8
_08004B9C: .4byte 0x06008000
_08004BA0: .4byte 0x06006000
_08004BA4: .4byte 0x00011D16
_08004BA8: .4byte 0x000121B8
_08004BAC: .4byte 0x04000208
_08004BB0: .4byte 0x04000200
_08004BB4: .4byte 0x04000004
	.syntax divided
