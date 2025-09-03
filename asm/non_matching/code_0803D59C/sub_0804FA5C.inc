	.syntax unified
sub_0804FA5C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r5, _0804FAB8
	ldr r0, _0804FABC
	adds r0, r0, r5
	mov r8, r0
	ldrb r1, [r0]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, r8
	strb r0, [r1]
	movs r2, #0xb8
	lsls r2, r2, #6
	adds r7, r5, r2
	ldrh r0, [r7, #0xa]
	bl sub_08054FE0
	mov sl, r0
	ldrh r0, [r7, #0xa]
	bl sub_08054FF0
	str r0, [sp]
	movs r0, #0xd2
	bl play_sound
	ldr r3, _0804FAC0
	ldrb r0, [r3]
	cmp r0, #3
	beq _0804FAA2
	b _0804FC52
_0804FAA2:
	ldr r1, _0804FAC4
	adds r0, r5, r1
	ldrh r0, [r0]
	cmp r0, #1
	bne _0804FAAE
	b _0804FC14
_0804FAAE:
	cmp r0, #1
	bgt _0804FAC8
	cmp r0, #0
	beq _0804FAD0
	b _0804FCA0
	.align 2, 0
_0804FAB8: .4byte gSomeBlend
_0804FABC: .4byte 0x000041DA
_0804FAC0: .4byte gUnknown_0201A1FB
_0804FAC4: .4byte 0x000041CA
_0804FAC8:
	cmp r0, #2
	bne _0804FACE
	b _0804FC48
_0804FACE:
	b _0804FCA0
_0804FAD0:
	ldr r3, _0804FB3C
	adds r2, r5, r3
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r0, _0804FB40
	adds r0, r0, r5
	mov sb, r0
	ldrb r1, [r0]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, sb
	strb r0, [r2]
	mov r0, sl
	bl sub_08055038
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804FB4C
	movs r0, #0xd6
	bl play_sound
	mov r3, sb
	ldrb r0, [r3]
	movs r2, #1
	orrs r0, r2
	strb r0, [r3]
	ldrh r1, [r7, #0xa]
	ldr r3, _0804FB44
	adds r0, r5, r3
	strh r1, [r0]
	mov r1, r8
	ldrb r0, [r1]
	orrs r0, r2
	movs r2, #3
	rsbs r2, r2, #0
	ands r0, r2
	strb r0, [r1]
	ldr r0, _0804FB48
	bl sub_0803DF94
	mov r3, r8
	ldrb r1, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	b _0804FCA0
	.align 2, 0
_0804FB3C: .4byte 0x000044F2
_0804FB40: .4byte 0x000044F3
_0804FB44: .4byte 0x000044EC
_0804FB48: .4byte 0x0000FFFF
_0804FB4C:
	ldr r0, _0804FB74
	adds r6, r5, r0
	ldrb r0, [r6]
	cmp r0, #0xb8
	bne _0804FB78
	movs r0, #0xd2
	bl play_sound
	mov r1, r8
	ldrb r0, [r1]
	movs r1, #1
	orrs r0, r1
	mov r2, r8
	strb r0, [r2]
	bl sub_08055D3C
	movs r0, #1
	bl sub_080506CC
	b _0804FCA0
	.align 2, 0
_0804FB74: .4byte 0x000041D5
_0804FB78:
	ldrb r0, [r6]
	bl sub_0805438C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804FBE4
	movs r0, #0xd2
	bl play_sound
	ldrb r2, [r6]
	ldr r3, _0804FBDC
	adds r0, r5, r3
	ldrb r3, [r0]
	mov r0, sl
	ldr r1, [sp]
	bl sub_08054360
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804FBAC
	mov r0, sl
	bl sub_080524EC
	bl sub_08046D90
_0804FBAC:
	mov r1, sb
	ldrb r0, [r1]
	movs r1, #2
	orrs r0, r1
	mov r2, sb
	strb r0, [r2]
	mov r3, r8
	ldrb r0, [r3]
	movs r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3]
	ldr r0, _0804FBE0
	bl sub_0803DF94
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _0804FCA0
	.align 2, 0
_0804FBDC: .4byte 0x000041D7
_0804FBE0: .4byte 0x0000FFFF
_0804FBE4:
	adds r0, r7, #0
	movs r1, #7
	bl sub_08053EEC
	ldr r3, _0804FC04
	adds r0, r5, r3
	ldrh r0, [r0]
	ldr r1, _0804FC08
	strb r0, [r1]
	ldr r2, _0804FC0C
	adds r0, r5, r2
	strh r4, [r0]
	ldr r3, _0804FC10
	adds r0, r5, r3
	strh r4, [r0]
	b _0804FCA0
	.align 2, 0
_0804FC04: .4byte 0x00002DFC
_0804FC08: .4byte gUnknown_0201A1FB
_0804FC0C: .4byte 0x000041D0
_0804FC10: .4byte 0x000044EC
_0804FC14:
	adds r0, r7, #0
	movs r1, #8
	bl sub_08053EEC
	ldr r1, _0804FC38
	adds r0, r5, r1
	ldrh r0, [r0]
	movs r1, #0
	ldr r2, _0804FC3C
	strb r0, [r2]
	ldr r3, _0804FC40
	adds r0, r5, r3
	strh r1, [r0]
	ldr r2, _0804FC44
	adds r0, r5, r2
	strh r1, [r0]
	b _0804FCA0
	.align 2, 0
_0804FC38: .4byte 0x00002DFC
_0804FC3C: .4byte gUnknown_0201A1FB
_0804FC40: .4byte 0x000041D0
_0804FC44: .4byte 0x000044EC
_0804FC48:
	adds r0, r7, #0
	movs r1, #9
	bl sub_08053EEC
	b _0804FCA0
_0804FC52:
	ldr r3, _0804FC64
	adds r0, r5, r3
	ldrh r4, [r0]
	cmp r4, #0
	beq _0804FC68
	cmp r4, #1
	beq _0804FC98
	b _0804FCA0
	.align 2, 0
_0804FC64: .4byte 0x000041CA
_0804FC68:
	adds r0, r7, #0
	movs r1, #8
	bl sub_08053EEC
	ldr r1, _0804FC88
	adds r0, r5, r1
	ldrh r0, [r0]
	ldr r2, _0804FC8C
	strb r0, [r2]
	ldr r3, _0804FC90
	adds r0, r5, r3
	strh r4, [r0]
	ldr r1, _0804FC94
	adds r0, r5, r1
	strh r4, [r0]
	b _0804FCA0
	.align 2, 0
_0804FC88: .4byte 0x00002DFC
_0804FC8C: .4byte gUnknown_0201A1FB
_0804FC90: .4byte 0x000041D0
_0804FC94: .4byte 0x000044EC
_0804FC98:
	adds r0, r7, #0
	movs r1, #9
	bl sub_08053EEC
_0804FCA0:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
