	.syntax unified
sub_0804DC5C:
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r2, r0, #0
	adds r6, r1, #0
	ldr r4, _0804DC8C
	ldr r1, _0804DC90
	adds r0, r4, r1
	ldrh r5, [r0]
	cmp r5, #0
	beq _0804DC72
	b _0804DDF4
_0804DC72:
	ldrh r1, [r2]
	cmp r1, #1
	bne _0804DCE4
	adds r0, r6, #0
	bl sub_0804F51C
	ldr r2, _0804DC94
	adds r1, r4, r2
	ldrb r0, [r1]
	cmp r0, #9
	bne _0804DC98
	strh r5, [r6, #4]
	b _0804DDF4
	.align 2, 0
_0804DC8C: .4byte gSomeBlend
_0804DC90: .4byte 0x00004ECC
_0804DC94: .4byte 0x00004A30
_0804DC98:
	ldrb r0, [r1]
	cmp r0, #0xe
	bne _0804DCAC
	ldr r3, _0804DCA8
	adds r0, r4, r3
	ldr r0, [r0]
	movs r1, #0x10
	b _0804DCB4
	.align 2, 0
_0804DCA8: .4byte 0x00004DF4
_0804DCAC:
	ldr r1, _0804DCD8
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, #9
_0804DCB4:
	bl sub_08048748
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _0804DCDC
	ldr r2, _0804DCE0
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r1, r0
	beq _0804DCCA
	b _0804DDF4
_0804DCCA:
	ldrh r0, [r6, #4]
	cmp r0, #0x5c
	bgt _0804DD00
	cmp r0, #0x5a
	blt _0804DCD6
	b _0804DDF4
_0804DCD6:
	b _0804DD00
	.align 2, 0
_0804DCD8: .4byte 0x00004DF4
_0804DCDC: .4byte gSomeBlend
_0804DCE0: .4byte 0x00004ECA
_0804DCE4:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804DCF2
	bl sub_08050628
	b _0804DDF4
_0804DCF2:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0804DD06
	movs r0, #0xd2
	bl play_sound
_0804DD00:
	movs r0, #0x67
	strh r0, [r6, #4]
	b _0804DDF4
_0804DD06:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804DD50
	ldr r3, _0804DD3C
	adds r0, r4, r3
	ldrb r0, [r0]
	cmp r0, #0xd
	bhi _0804DDF4
	movs r0, #0xd2
	bl play_sound
	ldr r0, _0804DD40
	adds r3, r4, r0
	ldrh r2, [r3]
	movs r0, #0xf0
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	bne _0804DD48
	ldr r0, _0804DD44
	ands r0, r2
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r3]
	b _0804DDA4
	.align 2, 0
_0804DD3C: .4byte 0x00004A30
_0804DD40: .4byte 0x00004ECE
_0804DD44: .4byte 0xFFFFFE1F
_0804DD48:
	lsls r0, r2, #0x17
	lsrs r0, r0, #0x1c
	subs r0, #1
	b _0804DD96
_0804DD50:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804DDDC
	ldr r2, _0804DD84
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0xd
	bhi _0804DDF4
	movs r0, #0xd2
	bl play_sound
	ldr r0, _0804DD88
	adds r3, r4, r0
	ldrh r2, [r3]
	movs r0, #0xf0
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0x40
	bne _0804DD90
	ldr r0, _0804DD8C
	ands r0, r2
	strh r0, [r3]
	b _0804DDA4
	.align 2, 0
_0804DD84: .4byte 0x00004A30
_0804DD88: .4byte 0x00004ECE
_0804DD8C: .4byte 0xFFFFFE1F
_0804DD90:
	lsls r0, r2, #0x17
	lsrs r0, r0, #0x1c
	adds r0, #1
_0804DD96:
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #5
	ldr r1, _0804DDC8
	ands r1, r2
	orrs r1, r0
	strh r1, [r3]
_0804DDA4:
	bl sub_08055788
	ldr r2, _0804DDCC
	ldr r1, _0804DDD0
	adds r3, r2, r1
	ldrb r0, [r3]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3]
	ldr r3, _0804DDD4
	adds r0, r2, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1c
	ldr r1, _0804DDD8
	adds r2, r2, r1
	strh r0, [r2]
	b _0804DDF4
	.align 2, 0
_0804DDC8: .4byte 0xFFFFFE1F
_0804DDCC: .4byte gSomeBlend
_0804DDD0: .4byte 0x0000C5B4
_0804DDD4: .4byte 0x00004ECE
_0804DDD8: .4byte 0x0000C5BE
_0804DDDC:
	adds r0, r6, #4
	ldr r3, _0804DDFC
	adds r1, r4, r3
	ldrh r1, [r1]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x1c
	str r1, [sp]
	adds r1, r2, #0
	movs r2, #0xf
	movs r3, #0x69
	bl sub_08053C34
_0804DDF4:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804DDFC: .4byte 0x00004ECE
	.syntax divided
