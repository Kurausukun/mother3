.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_08021920
sub_08021920: @ 0x08021920
	lsls r0, r0, #0x10
	ldr r1, _0802192C @ =gUnknown_08D2D658
	lsrs r0, r0, #0xe
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0802192C: .4byte gUnknown_08D2D658

	thumb_func_start sub_08021930
sub_08021930: @ 0x08021930
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	ldr r5, _080219A0 @ =gSomeBlend
	ldr r0, _080219A4 @ =0x00004B18
	adds r2, r5, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	movs r1, #0x96
	lsls r1, r1, #7
	adds r0, r5, r1
	movs r4, #0
	strh r4, [r0]
	ldr r2, _080219A8 @ =0x00004B02
	adds r0, r5, r2
	strh r4, [r0]
	ldr r7, _080219AC @ =0x00003688
	adds r1, r5, r7
	ldr r2, _080219B0 @ =0x0000368C
	adds r0, r5, r2
	mov r7, sb
	str r7, [r0]
	str r7, [r1]
	ldr r1, _080219B4 @ =0x00005778
	adds r0, r5, r1
	movs r1, #0
	bl sub_0800A0A4
	ldr r2, _080219B8 @ =0x00011C90
	adds r0, r5, r2
	strh r4, [r0]
	ldr r7, _080219BC @ =0x00004B19
	adds r0, r5, r7
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _080219C8
	ldr r1, _080219C0 @ =0x00004ACC
	adds r0, r5, r1
	movs r1, #1
	strh r1, [r0]
	ldr r2, _080219C4 @ =0x00004AC8
	adds r0, r5, r2
	strh r1, [r0]
	b _080219DA
	.align 2, 0
_080219A0: .4byte gSomeBlend
_080219A4: .4byte 0x00004B18
_080219A8: .4byte 0x00004B02
_080219AC: .4byte 0x00003688
_080219B0: .4byte 0x0000368C
_080219B4: .4byte 0x00005778
_080219B8: .4byte 0x00011C90
_080219BC: .4byte 0x00004B19
_080219C0: .4byte 0x00004ACC
_080219C4: .4byte 0x00004AC8
_080219C8:
	ldr r7, _08021A7C @ =0x00004AC8
	adds r0, r5, r7
	movs r1, #1
	strh r1, [r0]
	strh r3, [r0, #2]
	ldr r2, _08021A80 @ =0x00004ACC
	adds r0, r5, r2
	strh r1, [r0]
	strh r3, [r0, #2]
_080219DA:
	ldr r2, _08021A84 @ =gSomeBlend
	ldr r7, _08021A88 @ =0x00004B18
	adds r4, r2, r7
	ldrb r1, [r4]
	movs r3, #5
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r1
	movs r5, #9
	rsbs r5, r5, #0
	ands r0, r5
	movs r1, #0x11
	rsbs r1, r1, #0
	mov r8, r1
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r4]
	adds r7, #1
	adds r7, r7, r2
	mov ip, r7
	ldrb r0, [r7]
	ands r3, r0
	ands r3, r5
	ldr r0, _08021A8C @ =0x00004AFC
	adds r1, r2, r0
	movs r4, #0
	movs r0, #0xf
	strb r0, [r1]
	ldr r1, _08021A90 @ =0x00004AFD
	adds r5, r2, r1
	movs r6, #1
	strb r6, [r5]
	ldr r7, _08021A94 @ =0x00004AF0
	adds r0, r2, r7
	movs r1, #0
	strh r4, [r0]
	adds r7, #0xe
	adds r0, r2, r7
	strb r1, [r0]
	ldr r1, _08021A98 @ =0x00004B04
	adds r0, r2, r1
	strh r4, [r0]
	adds r7, #8
	adds r0, r2, r7
	strh r4, [r0]
	adds r1, #4
	adds r0, r2, r1
	strh r4, [r0]
	adds r7, #4
	adds r0, r2, r7
	strh r4, [r0]
	ldr r0, _08021A9C @ =0x00004AF2
	adds r1, r2, r0
	ldr r0, _08021AA0 @ =0x0000FFFF
	strh r0, [r1]
	subs r7, #0x16
	adds r1, r2, r7
	movs r7, #5
	strh r7, [r1]
	ldr r0, _08021AA4 @ =0x00004AF8
	adds r2, r2, r0
	str r4, [r2]
	mov r2, r8
	ands r3, r2
	mov r0, ip
	strb r3, [r0]
	ldr r0, _08021AA8 @ =gGame
	ldrb r0, [r0, #8]
	lsrs r0, r0, #6
	cmp r0, #1
	beq _08021ABA
	cmp r0, #1
	bgt _08021AAC
	cmp r0, #0
	beq _08021AB2
	b _08021AC6
	.align 2, 0
_08021A7C: .4byte 0x00004AC8
_08021A80: .4byte 0x00004ACC
_08021A84: .4byte gSomeBlend
_08021A88: .4byte 0x00004B18
_08021A8C: .4byte 0x00004AFC
_08021A90: .4byte 0x00004AFD
_08021A94: .4byte 0x00004AF0
_08021A98: .4byte 0x00004B04
_08021A9C: .4byte 0x00004AF2
_08021AA0: .4byte 0x0000FFFF
_08021AA4: .4byte 0x00004AF8
_08021AA8: .4byte gGame
_08021AAC:
	cmp r0, #2
	beq _08021AC0
	b _08021AC6
_08021AB2:
	movs r0, #2
	strb r0, [r5]
	movs r0, #3
	b _08021AC4
_08021ABA:
	strb r6, [r5]
	strh r7, [r1]
	b _08021AC6
_08021AC0:
	strb r6, [r5]
	movs r0, #0xa
_08021AC4:
	strh r0, [r1]
_08021AC6:
	ldr r4, _08021AF0 @ =gUnknown_0201AAE4
	adds r0, r4, #0
	bl sub_080376EC
	ldr r0, _08021AF4 @ =gUnknown_09AF3790
	movs r1, #0xc
	bl sub_0800289C
	str r0, [r4]
	ldr r1, _08021AF8 @ =0xFFFFEBCC
	adds r4, r4, r1
	adds r0, r4, #0
	mov r1, sb
	bl sub_08021AFC
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021AF0: .4byte gUnknown_0201AAE4
_08021AF4: .4byte gUnknown_09AF3790
_08021AF8: .4byte 0xFFFFEBCC

	thumb_func_start sub_08021AFC
sub_08021AFC: @ 0x08021AFC
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	ldr r1, _08021B44 @ =0x0000040C
	adds r4, r0, r1
	str r4, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r4, #0
	bl sub_08001B54
	ldrh r0, [r5]
	ldr r1, _08021B48 @ =0x0000FFFF
	cmp r0, r1
	beq _08021B5C
	ldr r7, _08021B4C @ =0x0000FEFF
	adds r6, r1, #0
_08021B20:
	ldrh r0, [r5]
	cmp r0, r7
	bls _08021B50
	ldrh r0, [r5]
	adds r1, r5, #2
	adds r2, r4, #0
	bl sub_08021B64
	adds r4, r0, #0
	ldrh r0, [r5]
	bl sub_08022ED0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #2
	adds r5, r5, r0
	b _08021B56
	.align 2, 0
_08021B44: .4byte 0x0000040C
_08021B48: .4byte 0x0000FFFF
_08021B4C: .4byte 0x0000FEFF
_08021B50:
	strh r0, [r4]
	adds r5, #2
	adds r4, #2
_08021B56:
	ldrh r0, [r5]
	cmp r0, r6
	bne _08021B20
_08021B5C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08021B64
sub_08021B64: @ 0x08021B64
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r4, r3, #0
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r3, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bhi _08021B82
	adds r0, r3, #0
	bl sub_08021BDC
	b _08021BD6
_08021B82:
	adds r0, r3, #0
	adds r0, #0xe0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bhi _08021B96
	adds r0, r3, #0
	bl sub_08021DC4
	b _08021BD6
_08021B96:
	adds r0, r3, #0
	adds r0, #0xc0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bhi _08021BAA
	adds r0, r3, #0
	bl sub_08021F40
	b _08021BD6
_08021BAA:
	adds r0, r3, #0
	adds r0, #0x80
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bhi _08021BBE
	adds r0, r3, #0
	bl sub_08022024
	b _08021BD6
_08021BBE:
	adds r0, r3, #0
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08021BD0
	adds r2, #2
	adds r0, r2, #0
	b _08021BD6
_08021BD0:
	adds r0, r4, #0
	bl sub_080220EC
_08021BD6:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08021BDC
sub_08021BDC: @ 0x08021BDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	adds r7, r1, #0
	adds r6, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r0, _08021C00 @ =0x0000FF09
	cmp sb, r0
	beq _08021C04
	adds r0, #1
	cmp sb, r0
	beq _08021CC0
	b _08021D88
	.align 2, 0
_08021C00: .4byte 0x0000FF09
_08021C04:
	movs r2, #1
	rsbs r2, r2, #0
	mov r0, sp
	movs r1, #0x44
	bl sub_08001B54
	adds r4, r7, #0
	mov r5, sp
	movs r0, #0x42
	add r0, sp
	mov r8, r0
	movs r1, #0xff
	lsls r1, r1, #8
	mov sl, r1
_08021C20:
	ldrh r2, [r4]
	adds r1, r2, #0
	ldr r3, _08021C5C @ =0x0000FFFF
	cmp r1, r3
	beq _08021C6C
	cmp r1, sl
	beq _08021C6C
	ldr r0, _08021C60 @ =0x0000FF01
	cmp r1, r0
	beq _08021C6C
	adds r0, #2
	cmp r1, r0
	beq _08021C6C
	subs r0, #4
	cmp r1, r0
	bls _08021C64
	ldrh r0, [r4]
	adds r1, r4, #2
	adds r2, r5, #0
	bl sub_08021B64
	adds r5, r0, #0
	ldrh r0, [r4]
	bl sub_08022ED0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #2
	adds r4, r4, r0
	b _08021C20
	.align 2, 0
_08021C5C: .4byte 0x0000FFFF
_08021C60: .4byte 0x0000FF01
_08021C64:
	strh r2, [r5]
	adds r4, #2
	adds r5, #2
	b _08021C20
_08021C6C:
	mov r0, sp
	mov r1, r8
	bl sub_08023054
	lsls r1, r0, #0x10
	ldr r0, _08021CB0 @ =gGame
	ldrb r0, [r0]
	cmp r0, #4
	beq _08021C80
	b _08021D88
_08021C80:
	lsrs r1, r1, #0x11
	movs r0, #0x78
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r3, _08021CB4 @ =gSomeBlend
	ldr r4, _08021CB8 @ =0x00005398
	adds r0, r3, r4
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x10
	cmp r2, r0
	bls _08021CA6
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08021CA6:
	rsbs r1, r2, #0
	ldr r2, _08021CBC @ =0x000053A6
	adds r0, r3, r2
	strh r1, [r0]
	b _08021D88
	.align 2, 0
_08021CB0: .4byte gGame
_08021CB4: .4byte gSomeBlend
_08021CB8: .4byte 0x00005398
_08021CBC: .4byte 0x000053A6
_08021CC0:
	movs r2, #1
	rsbs r2, r2, #0
	mov r0, sp
	movs r1, #0x44
	bl sub_08001B54
	adds r4, r7, #0
	mov r5, sp
	movs r3, #0x42
	add r3, sp
	mov r8, r3
	movs r0, #0xff
	lsls r0, r0, #8
	mov sl, r0
_08021CDC:
	ldrh r2, [r4]
	adds r1, r2, #0
	ldr r3, _08021D18 @ =0x0000FFFF
	cmp r1, r3
	beq _08021D28
	cmp r1, sl
	beq _08021D28
	ldr r0, _08021D1C @ =0x0000FF01
	cmp r1, r0
	beq _08021D28
	adds r0, #2
	cmp r1, r0
	beq _08021D28
	subs r0, #4
	cmp r1, r0
	bls _08021D20
	ldrh r0, [r4]
	adds r1, r4, #2
	adds r2, r5, #0
	bl sub_08021B64
	adds r5, r0, #0
	ldrh r0, [r4]
	bl sub_08022ED0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #2
	adds r4, r4, r0
	b _08021CDC
	.align 2, 0
_08021D18: .4byte 0x0000FFFF
_08021D1C: .4byte 0x0000FF01
_08021D20:
	strh r2, [r5]
	adds r4, #2
	adds r5, #2
	b _08021CDC
_08021D28:
	mov r0, sp
	mov r1, r8
	bl sub_08023054
	lsls r1, r0, #0x10
	ldr r0, _08021D7C @ =gGame
	ldrb r0, [r0]
	cmp r0, #4
	bne _08021D88
	lsrs r1, r1, #0x11
	movs r0, #0x78
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _08021D80 @ =gSomeBlend
	ldr r4, _08021D84 @ =0x00005398
	adds r0, r0, r4
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x12
	movs r4, #0xa0
	lsls r4, r4, #0xc
	adds r0, r0, r4
	lsrs r0, r0, #0x10
	cmp r2, r0
	bls _08021D66
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08021D66:
	cmp r2, #0
	beq _08021DB0
	movs r1, #0xfe
	lsls r1, r1, #4
	adds r0, r1, #0
	strh r0, [r6]
	adds r6, #2
	strh r2, [r6]
	adds r6, #2
	b _08021DB0
	.align 2, 0
_08021D7C: .4byte gGame
_08021D80: .4byte gSomeBlend
_08021D84: .4byte 0x00005398
_08021D88:
	mov r2, sb
	strh r2, [r6]
	adds r6, #2
	mov r0, sb
	bl sub_08022ED0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r1, #0
	cmp r1, r2
	bhs _08021DB0
_08021D9E:
	ldrh r0, [r7]
	strh r0, [r6]
	adds r7, #2
	adds r6, #2
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	blo _08021D9E
_08021DB0:
	adds r0, r6, #0
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08021DC4
sub_08021DC4: @ 0x08021DC4
	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0
	adds r6, r2, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r7, #0
	movs r1, #0
	bl sub_08022E50
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08021DEC @ =0x0000FF26
	cmp r5, r0
	bne _08021E5E
	movs r5, #8
	cmp r4, #8
	bne _08021DF4
	ldr r4, _08021DF0 @ =gUnknown_02004EE2
	b _08021E44
	.align 2, 0
_08021DEC: .4byte 0x0000FF26
_08021DF0: .4byte gUnknown_02004EE2
_08021DF4:
	subs r0, r4, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _08021E08
	ldr r4, _08021E04 @ =gUnknown_02004EF2
	b _08021E44
	.align 2, 0
_08021E04: .4byte gUnknown_02004EF2
_08021E08:
	adds r0, r4, #0
	bl sub_08001D70
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08021E30
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	muls r1, r0, r1
	ldr r0, _08021E2C @ =gUnknown_02004112
	adds r4, r1, r0
	b _08021E44
	.align 2, 0
_08021E2C: .4byte gUnknown_02004112
_08021E30:
	movs r0, #5
	adds r1, r4, #0
	bl get_misctext_msg
	adds r4, r0, #0
	movs r0, #5
	bl get_misctext_len
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08021E44:
	adds r0, r7, #0
	movs r1, #1
	bl sub_08022E50
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08022194
	b _08021F3A
_08021E5E:
	ldr r1, _08021E70 @ =0xFFFF00E0
	adds r0, r5, r1
	cmp r0, #5
	bhi _08021F2C
	lsls r0, r0, #2
	ldr r1, _08021E74 @ =_08021E78
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08021E70: .4byte 0xFFFF00E0
_08021E74: .4byte _08021E78
_08021E78: @ jump table
	.4byte _08021F2C @ case 0
	.4byte _08021E90 @ case 1
	.4byte _08021E9E @ case 2
	.4byte _08021EF6 @ case 3
	.4byte _08021F08 @ case 4
	.4byte _08021F16 @ case 5
_08021E90:
	movs r0, #2
	adds r1, r4, #0
	bl get_misctext_msg
	adds r4, r0, #0
	movs r0, #2
	b _08021F22
_08021E9E:
	movs r5, #8
	cmp r4, #8
	bne _08021EAC
	ldr r4, _08021EA8 @ =gUnknown_02004EE2
	b _08021F30
	.align 2, 0
_08021EA8: .4byte gUnknown_02004EE2
_08021EAC:
	subs r0, r4, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _08021EC0
	ldr r4, _08021EBC @ =gUnknown_02004EF2
	b _08021F30
	.align 2, 0
_08021EBC: .4byte gUnknown_02004EF2
_08021EC0:
	adds r0, r4, #0
	bl sub_08001D70
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08021EE8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	muls r1, r0, r1
	ldr r0, _08021EE4 @ =gUnknown_02004112
	adds r4, r1, r0
	b _08021F30
	.align 2, 0
_08021EE4: .4byte gUnknown_02004112
_08021EE8:
	movs r0, #5
	adds r1, r4, #0
	bl get_misctext_msg
	adds r4, r0, #0
	movs r0, #5
	b _08021F22
_08021EF6:
	movs r0, #0x6c
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, _08021F04 @ =gUnknown_02004112
	adds r4, r1, r0
	movs r0, #6
	b _08021F22
	.align 2, 0
_08021F04: .4byte gUnknown_02004112
_08021F08:
	movs r0, #7
	adds r1, r4, #0
	bl get_misctext_msg
	adds r4, r0, #0
	movs r0, #7
	b _08021F22
_08021F16:
	movs r0, #8
	adds r1, r4, #0
	bl get_misctext_msg
	adds r4, r0, #0
	movs r0, #8
_08021F22:
	bl get_misctext_len
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	b _08021F30
_08021F2C:
	adds r0, r6, #0
	b _08021F3A
_08021F30:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080222C0
_08021F3A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08021F40
sub_08021F40: @ 0x08021F40
	push {r4, r5, lr}
	adds r3, r1, #0
	adds r5, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08021F5C @ =0xFFFF00C0
	adds r0, r0, r1
	cmp r0, #8
	bhi _0802201C
	lsls r0, r0, #2
	ldr r1, _08021F60 @ =_08021F64
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08021F5C: .4byte 0xFFFF00C0
_08021F60: .4byte _08021F64
_08021F64: @ jump table
	.4byte _08021F88 @ case 0
	.4byte _0802201C @ case 1
	.4byte _08021FAC @ case 2
	.4byte _0802201C @ case 3
	.4byte _08021FE4 @ case 4
	.4byte _08021FEC @ case 5
	.4byte _08021FF4 @ case 6
	.4byte _08021FFC @ case 7
	.4byte _0802200C @ case 8
_08021F88:
	ldr r0, _08021FA0 @ =gSave
	ldr r1, [r0, #8]
	ldr r0, _08021FA4 @ =gSomeBlend
	ldr r2, _08021FA8 @ =0x00011C80
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r5, #0
	movs r3, #0xa
	bl sub_08022120
	b _0802201E
	.align 2, 0
_08021FA0: .4byte gSave
_08021FA4: .4byte gSomeBlend
_08021FA8: .4byte 0x00011C80
_08021FAC:
	adds r0, r3, #0
	movs r1, #0
	bl sub_08022E50
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r0, #0x86
	ldrb r1, [r0]
	movs r0, #0x6c
	adds r4, r1, #0
	muls r4, r0, r4
	ldr r0, _08021FE0 @ =gUnknown_02004112
	adds r4, r4, r0
	movs r0, #6
	bl get_misctext_len
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080222C0
	b _0802201E
	.align 2, 0
_08021FE0: .4byte gUnknown_02004112
_08021FE4:
	ldr r1, _08021FE8 @ =gUnknown_02004EE2
	b _08021FFE
	.align 2, 0
_08021FE8: .4byte gUnknown_02004EE2
_08021FEC:
	ldr r1, _08021FF0 @ =gUnknown_02004F02
	b _08021FFE
	.align 2, 0
_08021FF0: .4byte gUnknown_02004F02
_08021FF4:
	ldr r1, _08021FF8 @ =gUnknown_02004F14
	b _08021FFE
	.align 2, 0
_08021FF8: .4byte gUnknown_02004F14
_08021FFC:
	ldr r1, _08022008 @ =gUnknown_02004F26
_08021FFE:
	adds r0, r5, #0
	movs r2, #9
	bl sub_080222C0
	b _0802201E
	.align 2, 0
_08022008: .4byte gUnknown_02004F26
_0802200C:
	ldr r1, _08022018 @ =gUnknown_02004F38
	adds r0, r5, #0
	movs r2, #0x10
	bl sub_080222C0
	b _0802201E
	.align 2, 0
_08022018: .4byte gUnknown_02004F38
_0802201C:
	adds r0, r5, #0
_0802201E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08022024
sub_08022024: @ 0x08022024
	push {r4, r5, lr}
	adds r3, r1, #0
	adds r5, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08022040 @ =0xFFFF0080
	adds r0, r0, r1
	cmp r0, #4
	bhi _080220E4
	lsls r0, r0, #2
	ldr r1, _08022044 @ =_08022048
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08022040: .4byte 0xFFFF0080
_08022044: .4byte _08022048
_08022048: @ jump table
	.4byte _0802205C @ case 0
	.4byte _08022068 @ case 1
	.4byte _08022098 @ case 2
	.4byte _080220A8 @ case 3
	.4byte _080220B8 @ case 4
_0802205C:
	adds r0, r3, #0
	movs r1, #0
	bl sub_08022E8C
	adds r1, r0, #0
	b _080220C0
_08022068:
	ldr r0, _08022090 @ =gGame
	ldr r1, _08022094 @ =0x00008466
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #2
	bl get_misctext_msg
	adds r4, r0, #0
	movs r0, #2
	bl get_misctext_len
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080222C0
	b _080220E6
	.align 2, 0
_08022090: .4byte gGame
_08022094: .4byte 0x00008466
_08022098:
	ldr r0, _080220A0 @ =gGame
	ldr r2, _080220A4 @ =0x0000846C
	adds r0, r0, r2
	b _080220BE
	.align 2, 0
_080220A0: .4byte gGame
_080220A4: .4byte 0x0000846C
_080220A8:
	ldr r0, _080220B0 @ =gGame
	ldr r1, _080220B4 @ =0x00008468
	b _080220BC
	.align 2, 0
_080220B0: .4byte gGame
_080220B4: .4byte 0x00008468
_080220B8:
	ldr r0, _080220D4 @ =gGame
	ldr r1, _080220D8 @ =0x0000846A
_080220BC:
	adds r0, r0, r1
_080220BE:
	ldrh r1, [r0]
_080220C0:
	ldr r0, _080220DC @ =gSomeBlend
	ldr r2, _080220E0 @ =0x00011C80
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r5, #0
	movs r3, #0xa
	bl sub_08022120
	b _080220E6
	.align 2, 0
_080220D4: .4byte gGame
_080220D8: .4byte 0x0000846A
_080220DC: .4byte gSomeBlend
_080220E0: .4byte 0x00011C80
_080220E4:
	adds r0, r5, #0
_080220E6:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080220EC
sub_080220EC: @ 0x080220EC
	push {r4, r5, lr}
	adds r5, r2, #0
	lsls r0, r0, #0x10
	ldr r1, _080220FC @ =0xFFE00000
	cmp r0, r1
	beq _08022100
	adds r0, r5, #0
	b _08022116
	.align 2, 0
_080220FC: .4byte 0xFFE00000
_08022100:
	ldr r4, _0802211C @ =gUnknown_020041EA
	movs r0, #6
	bl get_misctext_len
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080222C0
_08022116:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802211C: .4byte gUnknown_020041EA

	thumb_func_start sub_08022120
sub_08022120: @ 0x08022120
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r5, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	add r4, sp, #4
	ldr r0, _0802218C @ =gSomeBlend
	ldr r2, _08022190 @ =0x00011C80
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r4, #0
	adds r3, r6, #0
	bl sub_08002634
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	movs r2, #0
	cmp r2, r6
	bhs _0802217E
	mov r3, sp
	subs r7, r6, #1
	movs r0, #1
	mov ip, r0
_0802215A:
	ldrh r0, [r3]
	ldrh r1, [r4]
	cmp r0, #0
	bne _0802216A
	cmp r2, r7
	beq _0802216A
	cmp r1, r8
	beq _08022172
_0802216A:
	strh r1, [r5]
	adds r5, #2
	mov r0, ip
	strh r0, [r3]
_08022172:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r4, #2
	cmp r2, r6
	blo _0802215A
_0802217E:
	adds r0, r5, #0
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802218C: .4byte gSomeBlend
_08022190: .4byte 0x00011C80

	thumb_func_start sub_08022194
sub_08022194: @ 0x08022194
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r1, r2, #0
	lsls r1, r1, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsrs r7, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_08022F6C
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r0, #0x1b
	mov r8, r0
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
	movs r1, #0
	cmp r1, r3
	bhs _08022200
	ldrh r2, [r5]
	movs r0, #0xe5
	lsls r0, r0, #1
	cmp r2, r0
	beq _080221DC
	subs r0, #0x5e
	cmp r2, r0
	beq _080221DC
	mov r0, sp
	strh r1, [r0]
	b _08022200
_080221DC:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r3
	bhs _08022200
	lsls r0, r1, #1
	adds r0, r0, r5
	ldrh r2, [r0]
	movs r0, #0xe5
	lsls r0, r0, #1
	cmp r2, r0
	beq _080221DC
	subs r0, #0x5e
	cmp r2, r0
	beq _080221DC
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
_08022200:
	lsls r0, r3, #1
	adds r0, r0, r5
	subs r0, #2
	ldrh r1, [r0]
	movs r0, #0xe5
	lsls r0, r0, #1
	cmp r1, r0
	bne _08022242
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _08022252
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_080222C0
	adds r4, r0, #0
	subs r4, #2
	movs r1, #0
	cmp r1, r6
	bhs _0802223C
_0802222C:
	mov r0, r8
	strh r0, [r4]
	adds r4, #2
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r6
	blo _0802222C
_0802223C:
	movs r1, #0xe5
	lsls r1, r1, #1
	b _08022288
_08022242:
	movs r0, #0xb6
	lsls r0, r0, #1
	cmp r1, r0
	bne _08022290
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08022260
_08022252:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_080222C0
	adds r4, r0, #0
	b _080222B2
_08022260:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_080222C0
	adds r4, r0, #0
	subs r4, #2
	movs r1, #0
	cmp r1, r6
	bhs _08022284
_08022274:
	mov r0, r8
	strh r0, [r4]
	adds r4, #2
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r6
	blo _08022274
_08022284:
	movs r1, #0xb6
	lsls r1, r1, #1
_08022288:
	adds r0, r1, #0
	strh r0, [r4]
	adds r4, #2
	b _080222B2
_08022290:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_080222C0
	adds r4, r0, #0
	movs r1, #0
	cmp r1, r6
	bhs _080222B2
_080222A2:
	mov r0, r8
	strh r0, [r4]
	adds r4, #2
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r6
	blo _080222A2
_080222B2:
	adds r0, r4, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080222C0
sub_080222C0: @ 0x080222C0
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	movs r2, #0
	cmp r2, r5
	bhs _080222EC
	ldrh r0, [r1]
	ldr r4, _080222F4 @ =0x0000FFFF
	cmp r0, r4
	beq _080222EC
_080222D6:
	strh r0, [r3]
	adds r1, #2
	adds r3, #2
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r5
	bhs _080222EC
	ldrh r0, [r1]
	cmp r0, r4
	bne _080222D6
_080222EC:
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080222F4: .4byte 0x0000FFFF

	thumb_func_start sub_080222F8
sub_080222F8: @ 0x080222F8
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, r0, #0
	cmp r0, #8
	bne _0802230C
	ldr r0, _08022308 @ =gUnknown_02004EE2
	b _0802234A
	.align 2, 0
_08022308: .4byte gUnknown_02004EE2
_0802230C:
	subs r0, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _08022320
	ldr r0, _0802231C @ =gUnknown_02004EF2
	b _0802234A
	.align 2, 0
_0802231C: .4byte gUnknown_02004EF2
_08022320:
	adds r0, r4, #0
	bl sub_08001D70
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0802233E
	movs r0, #5
	adds r1, r4, #0
	bl get_misctext_msg
	b _0802234A
_0802233E:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	muls r0, r1, r0
	ldr r1, _08022350 @ =gUnknown_02004112
	adds r0, r0, r1
_0802234A:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08022350: .4byte gUnknown_02004112

	thumb_func_start sub_08022354
sub_08022354: @ 0x08022354
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x6c
	muls r0, r1, r0
	ldr r1, _08022364 @ =gUnknown_02004112
	adds r0, r0, r1
	bx lr
	.align 2, 0
_08022364: .4byte gUnknown_02004112

	thumb_func_start sub_08022368
sub_08022368: @ 0x08022368
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _080223E8
	str r5, [r4, #0x10]
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r5, #0
	movs r1, #0x30
	bl sub_08001B54
	ldr r4, [r4, #0xc]
	movs r6, #0
	ldr r0, _08022398 @ =0x0000FFFF
	mov sb, r0
	adds r7, r0, #0
	subs r0, #0xfe
	mov r8, r0
	b _080223DA
	.align 2, 0
_08022398: .4byte 0x0000FFFF
_0802239C:
	ldr r0, _080223C0 @ =0x0000FEFF
	cmp r1, r0
	bls _080223C4
	ldrh r0, [r4]
	adds r1, r4, #2
	adds r2, r5, #0
	bl sub_08021B64
	adds r5, r0, #0
	ldrh r0, [r4]
	bl sub_08022ED0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #2
	adds r4, r4, r0
	b _080223CA
	.align 2, 0
_080223C0: .4byte 0x0000FEFF
_080223C4:
	strh r2, [r5]
	adds r4, #2
	adds r5, #2
_080223CA:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x16
	bls _080223DA
	mov r0, sb
	strh r0, [r5]
	b _080223E8
_080223DA:
	ldrh r2, [r4]
	adds r1, r2, #0
	cmp r1, r7
	beq _080223E6
	cmp r1, r8
	bne _0802239C
_080223E6:
	strh r7, [r5]
_080223E8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080223F4
sub_080223F4: @ 0x080223F4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r4, #4
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_08001B54
	movs r6, #0
	ldrh r0, [r5]
	ldr r1, _08022444 @ =0x0000FFFF
	cmp r0, r1
	beq _08022468
	ldr r0, _08022448 @ =0x0000FEFF
	mov r8, r0
	mov sb, r1
	adds r7, r1, #0
_08022420:
	ldrh r0, [r5]
	cmp r0, r8
	bls _0802244C
	ldrh r0, [r5]
	adds r1, r5, #2
	adds r2, r4, #0
	bl sub_08021B64
	adds r4, r0, #0
	ldrh r0, [r5]
	bl sub_08022ED0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #2
	adds r5, r5, r0
	b _08022452
	.align 2, 0
_08022444: .4byte 0x0000FFFF
_08022448: .4byte 0x0000FEFF
_0802244C:
	strh r0, [r4]
	adds r5, #2
	adds r4, #2
_08022452:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0xc
	bls _08022462
	mov r0, sb
	strh r0, [r4]
	b _08022468
_08022462:
	ldrh r0, [r5]
	cmp r0, r7
	bne _08022420
_08022468:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08022474
sub_08022474: @ 0x08022474
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [sp, #0x14]
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _080224D8 @ =gSomeBlend
	ldr r2, _080224DC @ =0x00011960
	adds r7, r0, r2
	ldr r2, [r7]
	ldrb r0, [r2, #9]
	cmp r0, #0xf
	bhi _080224D2
	lsls r0, r0, #4
	ldr r2, [r2]
	adds r2, r2, r0
	str r4, [r2]
	strh r3, [r2, #0xc]
	movs r0, #0xf
	ands r1, r0
	ldrb r3, [r2, #0xe]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	movs r1, #0x31
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2, #0xe]
	strh r6, [r2, #8]
	strh r5, [r2, #0xa]
	ldr r1, [r7]
	ldrb r0, [r1, #9]
	adds r0, #1
	strb r0, [r1, #9]
_080224D2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080224D8: .4byte gSomeBlend
_080224DC: .4byte 0x00011960

	thumb_func_start draw_ui_text
draw_ui_text: @ 0x080224E0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [sp, #0x14]
	ldr r4, [sp, #0x18]
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r2, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _08022554 @ =gSomeBlend
	ldr r3, _08022558 @ =0x0001197C
	adds r3, r3, r0
	mov ip, r3
	ldr r3, [r3]
	ldrb r0, [r3, #9]
	cmp r0, #0xf
	bhi _0802254E
	lsls r0, r0, #4
	ldr r3, [r3]
	adds r3, r3, r0
	str r5, [r3]
	strh r2, [r3, #0xc]
	movs r0, #0xf
	ands r1, r0
	ldrb r2, [r3, #0xe]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	movs r2, #3
	adds r1, r4, #0
	ands r1, r2
	lsls r1, r1, #4
	movs r2, #0x31
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r3, #0xe]
	strh r7, [r3, #8]
	strh r6, [r3, #0xa]
	mov r0, ip
	ldr r1, [r0]
	ldrb r0, [r1, #9]
	adds r0, #1
	strb r0, [r1, #9]
_0802254E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022554: .4byte gSomeBlend
_08022558: .4byte 0x0001197C

	thumb_func_start sub_0802255C
sub_0802255C: @ 0x0802255C
	push {r4, lr}
	sub sp, #4
	mov r2, sp
	strh r0, [r2]
	mov r4, sp
	adds r4, #2
	strh r1, [r4]
	ldr r0, _080225AC @ =gSomeBlend
	ldr r1, _080225B0 @ =0x00011960
	adds r0, r0, r1
	ldr r3, [r0]
	ldrb r0, [r3, #9]
	cmp r0, #0
	beq _080225A2
	lsls r0, r0, #4
	subs r0, #0x10
	ldr r3, [r3]
	adds r3, r3, r0
	mov r0, sp
	ldrh r0, [r0]
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3, #0xe]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xe]
	ldrh r1, [r4]
	lsls r1, r1, #7
	movs r2, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xe]
_080225A2:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080225AC: .4byte gSomeBlend
_080225B0: .4byte 0x00011960

	thumb_func_start sub_080225B4
sub_080225B4: @ 0x080225B4
	push {r4, lr}
	sub sp, #4
	mov r2, sp
	strh r0, [r2]
	mov r4, sp
	adds r4, #2
	strh r1, [r4]
	ldr r0, _08022604 @ =gSomeBlend
	ldr r1, _08022608 @ =0x0001197C
	adds r0, r0, r1
	ldr r3, [r0]
	ldrb r0, [r3, #9]
	cmp r0, #0
	beq _080225FA
	lsls r0, r0, #4
	subs r0, #0x10
	ldr r3, [r3]
	adds r3, r3, r0
	mov r0, sp
	ldrh r0, [r0]
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3, #0xe]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xe]
	ldrh r1, [r4]
	lsls r1, r1, #7
	movs r2, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xe]
_080225FA:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08022604: .4byte gSomeBlend
_08022608: .4byte 0x0001197C

	thumb_func_start sub_0802260C
sub_0802260C: @ 0x0802260C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [sp, #0x20]
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsrs r1, r1, #0xa
	ldr r0, _0802268C @ =gUnknown_0201955E
	adds r6, r1, r0
	cmp r2, #0
	beq _08022640
	adds r0, r5, #0
	adds r1, r2, #0
	bl sub_0800255C
	adds r5, r0, #0
	cmp r5, #0
	beq _0802267E
_08022640:
	adds r0, r5, #0
	bl sub_080025D8
	adds r4, r0, #0
	subs r4, r4, r5
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08001B18
	lsrs r4, r4, #0x11
	lsls r4, r4, #1
	adds r4, r4, r6
	ldr r0, _08022690 @ =0x0000FFFF
	adds r1, r0, #0
	strh r1, [r4]
	ldrh r0, [r6]
	cmp r0, r1
	beq _0802267E
	movs r3, #1
	rsbs r3, r3, #0
	movs r0, #0xf
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	mov r1, r8
	adds r2, r7, #0
	bl draw_ui_text
_0802267E:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802268C: .4byte gUnknown_0201955E
_08022690: .4byte 0x0000FFFF

	thumb_func_start sub_08022694
sub_08022694: @ 0x08022694
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r4, _080226F4 @ =gUnknown_0201B7A0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009E38
	ldr r0, _080226F8 @ =0xFFFFF31C
	adds r6, r4, r0
	ldr r2, _080226FC @ =0x00AC00AC
	adds r0, r6, #0
	movs r1, #0x28
	bl sub_08001B54
	ldr r0, _08022700 @ =0xFFFFF342
	adds r1, r4, r0
	ldr r0, _08022704 @ =0x0000FFFF
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_080025D8
	adds r2, r0, #0
	subs r2, r2, r5
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08001B18
	ldr r1, _08022708 @ =0xFFFFF354
	adds r0, r4, r1
	ldrh r1, [r0]
	ldr r0, _0802270C @ =0xFFFFF356
	adds r4, r4, r0
	ldrh r2, [r4]
	movs r3, #1
	rsbs r3, r3, #0
	movs r0, #0xf
	str r0, [sp]
	adds r0, r6, #0
	bl sub_08039A18
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080226F4: .4byte gUnknown_0201B7A0
_080226F8: .4byte 0xFFFFF31C
_080226FC: .4byte 0x00AC00AC
_08022700: .4byte 0xFFFFF342
_08022704: .4byte 0x0000FFFF
_08022708: .4byte 0xFFFFF354
_0802270C: .4byte 0xFFFFF356

	thumb_func_start sub_08022710
sub_08022710: @ 0x08022710
	push {r4, lr}
	ldr r4, _0802272C @ =gSomeBlend
	ldr r1, _08022730 @ =0x00004B18
	adds r0, r4, r1
	ldrb r0, [r0]
	movs r2, #9
	ands r2, r0
	cmp r2, #1
	beq _08022738
	ldr r2, _08022734 @ =0x00004AF8
	adds r1, r4, r2
	movs r0, #0
	b _080227AA
	.align 2, 0
_0802272C: .4byte gSomeBlend
_08022730: .4byte 0x00004B18
_08022734: .4byte 0x00004AF8
_08022738:
	ldr r0, _08022750 @ =0x00004AF0
	adds r3, r4, r0
	ldrh r0, [r3]
	cmp r0, #0
	beq _08022758
	subs r0, #1
	movs r1, #0
	strh r0, [r3]
	ldr r2, _08022754 @ =0x00004AF8
	adds r0, r4, r2
	str r1, [r0]
	b _080227AC
	.align 2, 0
_08022750: .4byte 0x00004AF0
_08022754: .4byte 0x00004AF8
_08022758:
	ldr r0, _08022790 @ =gGame
	ldrb r1, [r0, #8]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0x80
	bne _08022770
	ldr r1, _08022794 @ =0x00004AF8
	adds r0, r4, r1
	ldr r0, [r0]
	ands r0, r2
	cmp r0, #0
	bne _080227A0
_08022770:
	ldr r2, _08022798 @ =0x00003688
	adds r0, r4, r2
	bl sub_080227BC
	ldr r0, _0802279C @ =0x00004B19
	adds r1, r4, r0
	ldrb r2, [r1]
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080227A0
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	b _080227AC
	.align 2, 0
_08022790: .4byte gGame
_08022794: .4byte 0x00004AF8
_08022798: .4byte 0x00003688
_0802279C: .4byte 0x00004B19
_080227A0:
	ldr r1, _080227B4 @ =gSomeBlend
	ldr r2, _080227B8 @ =0x00004AF8
	adds r1, r1, r2
	ldr r0, [r1]
	adds r0, #1
_080227AA:
	str r0, [r1]
_080227AC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080227B4: .4byte gSomeBlend
_080227B8: .4byte 0x00004AF8

	thumb_func_start sub_080227BC
sub_080227BC: @ 0x080227BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r1, _08022820 @ =0x00001444
	adds r0, r6, r1
	ldrh r0, [r0]
	mov r8, r0
	ldr r2, _08022824 @ =0x00001446
	adds r0, r6, r2
	ldrh r7, [r0]
	ldr r5, [r6, #8]
	movs r0, #0
	mov sl, r0
	adds r1, #0x31
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp sl, r0
	blo _080227EA
	b _080229C4
_080227EA:
	ldr r2, _08022828 @ =gSomeBlend
	ldr r1, _0802282C @ =0x00011C92
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080227FC
	b _080229C4
_080227FC:
	ldr r0, _08022820 @ =0x00001444
	adds r0, r0, r6
	mov sb, r0
_08022802:
	ldrh r1, [r5]
	ldr r2, _08022830 @ =0xFFFF0000
	lsrs r0, r2, #0x10
	cmp r1, r0
	bne _08022838
	ldr r1, _08022834 @ =0x00001490
	adds r0, r6, r1
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
	movs r0, #0
	bl sub_0802400C
	b _080229C4
	.align 2, 0
_08022820: .4byte 0x00001444
_08022824: .4byte 0x00001446
_08022828: .4byte gSomeBlend
_0802282C: .4byte 0x00011C92
_08022830: .4byte 0xFFFF0000
_08022834: .4byte 0x00001490
_08022838:
	movs r0, #0xfe
	lsls r0, r0, #4
	cmp r1, r0
	bne _08022850
	ldrh r0, [r5]
	ldrh r3, [r5, #2]
	mov r1, r8
	adds r2, r7, #0
	bl sub_080088AC
	adds r5, #2
	b _0802299E
_08022850:
	ldr r0, _08022894 @ =0x0000FEFF
	cmp r1, r0
	bls _0802289C
	mov r0, r8
	mov r2, sb
	strh r0, [r2]
	strh r7, [r2, #2]
	ldrh r1, [r5]
	adds r2, r5, #2
	adds r0, r6, #0
	bl sub_080229F0
	mov r1, sp
	strh r0, [r1]
	ldrh r0, [r5]
	bl sub_08022ED0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #2
	adds r5, r5, r0
	mov r1, sb
	ldrh r1, [r1]
	mov r8, r1
	ldr r2, _08022898 @ =0x00001446
	adds r0, r6, r2
	ldrh r7, [r0]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08022890
	b _080229C4
_08022890:
	b _0802299E
	.align 2, 0
_08022894: .4byte 0x0000FEFF
_08022898: .4byte 0x00001446
_0802289C:
	ldr r1, _080228B0 @ =0x00001490
	adds r0, r6, r1
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080228B4
	adds r5, #2
	b _0802299E
	.align 2, 0
_080228B0: .4byte 0x00001490
_080228B4:
	ldr r2, _080228E4 @ =0x0000146A
	adds r4, r6, r2
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	beq _080228F4
	bl sub_08023FA8
	ldr r2, _080228E8 @ =gSomeBlend
	ldr r1, _080228EC @ =0x00004AF8
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r2, _080228F0 @ =gUnknown_0201AB1C
	ldrh r1, [r2]
	bl sub_08002FD4
	cmp r0, #0
	bne _080228FC
	ldrh r0, [r4]
	bl play_sound
	b _080228FC
	.align 2, 0
_080228E4: .4byte 0x0000146A
_080228E8: .4byte gSomeBlend
_080228EC: .4byte 0x00004AF8
_080228F0: .4byte gUnknown_0201AB1C
_080228F4:
	movs r1, #0
	ldrsh r0, [r4, r1]
	bl sub_08023FA8
_080228FC:
	ldrh r0, [r5]
	ldr r2, _0802297C @ =0x00001474
	adds r1, r6, r2
	ldrb r3, [r1]
	mov r1, r8
	adds r2, r7, #0
	bl sub_080088AC
	adds r5, #2
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r4, _08022980 @ =gSomeBlend
	ldr r1, _08022984 @ =0x00011C8A
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r8, r0
	blo _0802299E
	movs r2, #0xa2
	lsls r2, r2, #5
	adds r0, r6, r2
	ldrh r0, [r0]
	mov r8, r0
	ldr r0, _08022988 @ =0x00004AFE
	adds r3, r4, r0
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0
	mov ip, r1
	strb r0, [r3]
	adds r2, #0x36
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #1
	bls _0802295C
	ldr r1, _0802298C @ =0x00004B18
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	mov r2, ip
	strb r2, [r3]
	movs r0, #0
	bl sub_0802400C
_0802295C:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #1
	bls _0802299E
	ldr r0, _0802298C @ =0x00004B18
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08022990
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r2]
	b _0802299C
	.align 2, 0
_0802297C: .4byte 0x00001474
_08022980: .4byte gSomeBlend
_08022984: .4byte 0x00011C8A
_08022988: .4byte 0x00004AFE
_0802298C: .4byte 0x00004B18
_08022990:
	ldr r1, _080229E0 @ =0x00011C92
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
_0802299C:
	movs r7, #1
_0802299E:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r2, _080229E4 @ =0x00001475
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp sl, r0
	bhs _080229C4
	ldr r1, _080229E8 @ =gSomeBlend
	ldr r2, _080229E0 @ =0x00011C92
	adds r0, r1, r2
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080229C4
	b _08022802
_080229C4:
	ldr r1, _080229EC @ =0x00001444
	adds r0, r6, r1
	mov r2, r8
	strh r2, [r0]
	strh r7, [r0, #2]
	str r5, [r6, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080229E0: .4byte 0x00011C92
_080229E4: .4byte 0x00001475
_080229E8: .4byte gSomeBlend
_080229EC: .4byte 0x00001444

	thumb_func_start sub_080229F0
sub_080229F0: @ 0x080229F0
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	movs r4, #0x80
	lsls r4, r4, #0x11
	adds r1, r1, r4
	lsrs r1, r1, #0x10
	cmp r1, #0x1f
	bls _08022A06
	movs r0, #0
	b _08022A10
_08022A06:
	adds r1, r3, #0
	bl sub_08022A18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_08022A10:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08022A18
sub_08022A18: @ 0x08022A18
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r2, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _08022A38 @ =0xFFFF0100
	adds r0, r1, r2
	cmp r0, #0xc
	bls _08022A2C
	b _08022E3E
_08022A2C:
	lsls r0, r0, #2
	ldr r1, _08022A3C @ =_08022A40
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08022A38: .4byte 0xFFFF0100
_08022A3C: .4byte _08022A40
_08022A40: @ jump table
	.4byte _08022A74 @ case 0
	.4byte _08022AF0 @ case 1
	.4byte _08022C34 @ case 2
	.4byte _08022CA0 @ case 3
	.4byte _08022CC4 @ case 4
	.4byte _08022CDC @ case 5
	.4byte _08022D38 @ case 6
	.4byte _08022D74 @ case 7
	.4byte _08022D84 @ case 8
	.4byte _08022E3E @ case 9
	.4byte _08022E3E @ case 10
	.4byte _08022DF4 @ case 11
	.4byte _08022E24 @ case 12
_08022A74:
	movs r3, #0xa2
	lsls r3, r3, #5
	adds r0, r4, r3
	ldrh r1, [r0]
	ldr r2, _08022AB4 @ =0x00001444
	adds r0, r4, r2
	movs r2, #0
	strh r1, [r0]
	ldr r3, _08022AB8 @ =gSomeBlend
	ldr r1, _08022ABC @ =0x00004AFE
	adds r0, r3, r1
	strb r2, [r0]
	ldr r2, _08022AC0 @ =0x00001446
	adds r1, r4, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08022ADC
	ldr r0, _08022AC4 @ =0x00004B18
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08022AC8
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r2]
	b _08022AD4
	.align 2, 0
_08022AB4: .4byte 0x00001444
_08022AB8: .4byte gSomeBlend
_08022ABC: .4byte 0x00004AFE
_08022AC0: .4byte 0x00001446
_08022AC4: .4byte 0x00004B18
_08022AC8:
	ldr r1, _08022AE4 @ =0x00011C92
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
_08022AD4:
	ldr r2, _08022AE8 @ =0x00001446
	adds r1, r4, r2
	movs r0, #1
	strh r0, [r1]
_08022ADC:
	ldr r0, _08022AEC @ =0x00011C90
	adds r1, r3, r0
	movs r0, #0
	b _08022E3C
	.align 2, 0
_08022AE4: .4byte 0x00011C92
_08022AE8: .4byte 0x00001446
_08022AEC: .4byte 0x00011C90
_08022AF0:
	ldr r1, _08022B24 @ =0x00001490
	adds r3, r4, r1
	ldrb r2, [r3]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08022B88
	ldr r1, _08022B28 @ =gSomeBlend
	ldr r0, _08022B2C @ =0x00004B06
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r1, _08022B30 @ =0x00001491
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _08022B1A
	b _08022E3E
_08022B1A:
	cmp r0, #1
	bgt _08022B34
	cmp r0, #0
	beq _08022B3A
	b _08022B88
	.align 2, 0
_08022B24: .4byte 0x00001490
_08022B28: .4byte gSomeBlend
_08022B2C: .4byte 0x00004B06
_08022B30: .4byte 0x00001491
_08022B34:
	cmp r0, #2
	beq _08022B54
	b _08022B88
_08022B3A:
	ldr r2, _08022B4C @ =0x0000147E
	adds r0, r4, r2
	ldr r3, _08022B50 @ =0x0000147C
	adds r1, r4, r3
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08022B88
	b _08022E3E
	.align 2, 0
_08022B4C: .4byte 0x0000147E
_08022B50: .4byte 0x0000147C
_08022B54:
	movs r0, #0x20
	orrs r0, r2
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3]
	movs r1, #0xa2
	lsls r1, r1, #5
	adds r0, r4, r1
	ldrh r1, [r0]
	ldr r2, _08022B80 @ =0x00001444
	adds r0, r4, r2
	strh r1, [r0]
	ldr r3, _08022B84 @ =0x0000147E
	adds r0, r4, r3
	ldrh r1, [r0]
	lsls r1, r1, #2
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r0, r1
	str r5, [r0]
	b _08022E3E
	.align 2, 0
_08022B80: .4byte 0x00001444
_08022B84: .4byte 0x0000147E
_08022B88:
	movs r1, #0xa2
	lsls r1, r1, #5
	adds r0, r4, r1
	ldrh r1, [r0]
	ldr r2, _08022BEC @ =0x00001444
	adds r0, r4, r2
	strh r1, [r0]
	ldr r5, _08022BF0 @ =gSomeBlend
	ldr r0, _08022BF4 @ =0x00004AFE
	adds r3, r5, r0
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldr r1, _08022BF8 @ =0x00001476
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	bls _08022BC2
	ldr r0, _08022BFC @ =0x00004B18
	adds r2, r5, r0
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	strb r0, [r3]
	movs r0, #0
	bl sub_0802400C
_08022BC2:
	ldr r2, _08022C00 @ =0x00001446
	adds r1, r4, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08022C18
	ldr r3, _08022BFC @ =0x00004B18
	adds r2, r5, r3
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08022C04
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r2]
	b _08022C10
	.align 2, 0
_08022BEC: .4byte 0x00001444
_08022BF0: .4byte gSomeBlend
_08022BF4: .4byte 0x00004AFE
_08022BF8: .4byte 0x00001476
_08022BFC: .4byte 0x00004B18
_08022C00: .4byte 0x00001446
_08022C04:
	ldr r1, _08022C24 @ =0x00011C92
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
_08022C10:
	ldr r2, _08022C28 @ =0x00001446
	adds r1, r4, r2
	movs r0, #1
	strh r0, [r1]
_08022C18:
	ldr r0, _08022C2C @ =gSomeBlend
	ldr r3, _08022C30 @ =0x00011C90
	adds r0, r0, r3
	movs r1, #0
	strh r1, [r0]
	b _08022E3E
	.align 2, 0
_08022C24: .4byte 0x00011C92
_08022C28: .4byte 0x00001446
_08022C2C: .4byte gSomeBlend
_08022C30: .4byte 0x00011C90
_08022C34:
	ldr r0, _08022C84 @ =0x00001490
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08022C44
	b _08022E3E
_08022C44:
	movs r0, #0x20
	orrs r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08022C88 @ =gSomeBlend
	ldr r2, _08022C8C @ =0x00004ACE
	adds r1, r0, r2
	ldr r3, _08022C90 @ =0x00004ACA
	adds r0, r0, r3
	ldrh r1, [r1]
	ldrh r0, [r0]
	subs r2, r1, r0
	ldr r0, _08022C94 @ =0x00001482
	adds r3, r4, r0
	strh r2, [r3]
	ldr r1, _08022C98 @ =0x00001491
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08022C74
	b _08022E3E
_08022C74:
	adds r0, r2, #1
	ldr r2, _08022C9C @ =0x0000147C
	adds r1, r4, r2
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r3]
	b _08022E3E
	.align 2, 0
_08022C84: .4byte 0x00001490
_08022C88: .4byte gSomeBlend
_08022C8C: .4byte 0x00004ACE
_08022C90: .4byte 0x00004ACA
_08022C94: .4byte 0x00001482
_08022C98: .4byte 0x00001491
_08022C9C: .4byte 0x0000147C
_08022CA0:
	ldr r2, _08022CBC @ =gSomeBlend
	ldr r3, _08022CC0 @ =0x00004B18
	adds r2, r2, r3
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0
	bl sub_0802400C
	b _08022E3E
	.align 2, 0
_08022CBC: .4byte gSomeBlend
_08022CC0: .4byte 0x00004B18
_08022CC4:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08022E50
	ldr r1, _08022CD4 @ =gSomeBlend
	ldr r2, _08022CD8 @ =0x00004AF0
	adds r1, r1, r2
	b _08022E3C
	.align 2, 0
_08022CD4: .4byte gSomeBlend
_08022CD8: .4byte 0x00004AF0
_08022CDC:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08022E50
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #2
	beq _08022D08
	cmp r3, #2
	bgt _08022CF6
	cmp r3, #1
	beq _08022CFC
	b _08022D28
_08022CF6:
	cmp r3, #3
	beq _08022D18
	b _08022D28
_08022CFC:
	ldr r1, _08022D04 @ =0x00001474
	adds r0, r4, r1
	strb r3, [r0]
	b _08022E3E
	.align 2, 0
_08022D04: .4byte 0x00001474
_08022D08:
	ldr r2, _08022D14 @ =0x00001474
	adds r1, r4, r2
	movs r0, #3
	strb r0, [r1]
	b _08022E3E
	.align 2, 0
_08022D14: .4byte 0x00001474
_08022D18:
	ldr r3, _08022D24 @ =0x00001474
	adds r1, r4, r3
	movs r0, #8
	strb r0, [r1]
	b _08022E3E
	.align 2, 0
_08022D24: .4byte 0x00001474
_08022D28:
	ldr r0, _08022D34 @ =0x00001474
	adds r1, r4, r0
	movs r0, #0xf
	strb r0, [r1]
	b _08022E3E
	.align 2, 0
_08022D34: .4byte 0x00001474
_08022D38:
	ldr r1, _08022D68 @ =0x00001490
	adds r2, r4, r1
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	movs r1, #0
	bl sub_08022E50
	ldr r2, _08022D6C @ =0x0000147C
	adds r1, r4, r2
	movs r2, #0
	strh r0, [r1]
	ldr r3, _08022D70 @ =0x0000147E
	adds r0, r4, r3
	strh r2, [r0]
	movs r1, #0xa4
	lsls r1, r1, #5
	adds r0, r4, r1
	strh r2, [r0]
	adds r0, r5, #2
	str r0, [r4, #0xc]
	b _08022E3E
	.align 2, 0
_08022D68: .4byte 0x00001490
_08022D6C: .4byte 0x0000147C
_08022D70: .4byte 0x0000147E
_08022D74:
	ldr r2, _08022D80 @ =0x00001491
	adds r0, r4, r2
	ldrb r1, [r0]
	movs r2, #4
	b _08022E10
	.align 2, 0
_08022D80: .4byte 0x00001491
_08022D84:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08022E50
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #3
	beq _08022DC4
	cmp r0, #3
	bls _08022DB0
	ldr r2, _08022DA8 @ =gSomeBlend
	adds r1, #0xe9
	ldr r3, _08022DAC @ =0x00004AF2
	adds r0, r2, r3
	strh r1, [r0]
	b _08022DCE
	.align 2, 0
_08022DA8: .4byte gSomeBlend
_08022DAC: .4byte 0x00004AF2
_08022DB0:
	ldr r2, _08022DBC @ =gSomeBlend
	adds r1, #0xe1
	ldr r3, _08022DC0 @ =0x00004AF2
	adds r0, r2, r3
	strh r1, [r0]
	b _08022DCE
	.align 2, 0
_08022DBC: .4byte gSomeBlend
_08022DC0: .4byte 0x00004AF2
_08022DC4:
	ldr r2, _08022DE0 @ =gSomeBlend
	ldr r0, _08022DE4 @ =0x00004AF2
	adds r1, r2, r0
	ldr r0, _08022DE8 @ =0x0000FFFF
	strh r0, [r1]
_08022DCE:
	adds r3, r2, #0
	ldr r1, _08022DEC @ =0x00004AF8
	adds r0, r3, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08022E3E
	ldr r2, _08022DF0 @ =0x00004B19
	adds r0, r3, r2
	b _08022E0C
	.align 2, 0
_08022DE0: .4byte gSomeBlend
_08022DE4: .4byte 0x00004AF2
_08022DE8: .4byte 0x0000FFFF
_08022DEC: .4byte 0x00004AF8
_08022DF0: .4byte 0x00004B19
_08022DF4:
	ldr r4, _08022E18 @ =gUnknown_0201B7A0
	adds r0, r4, #0
	movs r1, #2
	bl sub_0800A0A4
	ldr r3, _08022E1C @ =0xFFFFF380
	adds r0, r4, r3
	ldr r0, [r0]
	cmp r0, #0
	bne _08022E3E
	ldr r1, _08022E20 @ =0xFFFFF3A1
	adds r0, r4, r1
_08022E0C:
	ldrb r1, [r0]
	movs r2, #0x10
_08022E10:
	orrs r1, r2
	strb r1, [r0]
	b _08022E3E
	.align 2, 0
_08022E18: .4byte gUnknown_0201B7A0
_08022E1C: .4byte 0xFFFFF380
_08022E20: .4byte 0xFFFFF3A1
_08022E24:
	ldr r3, _08022E48 @ =0x00001490
	adds r2, r4, r3
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	movs r1, #0
	bl sub_08022E50
	ldr r2, _08022E4C @ =0x00001478
	adds r1, r4, r2
_08022E3C:
	strh r0, [r1]
_08022E3E:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08022E48: .4byte 0x00001490
_08022E4C: .4byte 0x00001478

	thumb_func_start sub_08022E50
sub_08022E50: @ 0x08022E50
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xf
	adds r1, r1, r0
	ldrh r2, [r1]
	ldr r0, _08022E70 @ =0x0000FFEF
	cmp r2, r0
	bls _08022E7E
	adds r0, r2, #0
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #7
	bls _08022E74
	movs r0, #0
	b _08022E80
	.align 2, 0
_08022E70: .4byte 0x0000FFEF
_08022E74:
	ldr r0, _08022E84 @ =gSomeBlend
	lsls r1, r1, #2
	ldr r2, _08022E88 @ =0x00004AD0
	adds r0, r0, r2
	adds r1, r1, r0
_08022E7E:
	ldrh r0, [r1]
_08022E80:
	pop {r1}
	bx r1
	.align 2, 0
_08022E84: .4byte gSomeBlend
_08022E88: .4byte 0x00004AD0

	thumb_func_start sub_08022E8C
sub_08022E8C: @ 0x08022E8C
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xf
	adds r1, r1, r0
	ldrh r2, [r1]
	ldr r0, _08022EB8 @ =0x0000FFEF
	cmp r2, r0
	bls _08022EC8
	adds r0, r2, #0
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #7
	bhi _08022EC4
	ldr r0, _08022EBC @ =gSomeBlend
	lsls r1, r1, #2
	ldr r2, _08022EC0 @ =0x00004AD0
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r0, [r1]
	b _08022ECA
	.align 2, 0
_08022EB8: .4byte 0x0000FFEF
_08022EBC: .4byte gSomeBlend
_08022EC0: .4byte 0x00004AD0
_08022EC4:
	movs r0, #0
	b _08022ECA
_08022EC8:
	ldrh r0, [r1]
_08022ECA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08022ED0
sub_08022ED0: @ 0x08022ED0
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r1, #0
	ldr r0, _08022F0C @ =gUnknown_08D2DE58
	ldrh r2, [r0, #2]
	ldr r4, _08022F10 @ =0x0000FFFF
	adds r6, r0, #0
	cmp r2, r4
	beq _08022F00
	cmp r2, r3
	beq _08022F00
	adds r5, r6, #0
	adds r2, r4, #0
_08022EEC:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r0, r1, #2
	adds r0, r0, r5
	ldrh r0, [r0, #2]
	cmp r0, r2
	beq _08022F00
	cmp r0, r3
	bne _08022EEC
_08022F00:
	lsls r0, r1, #2
	adds r0, r0, r6
	ldrh r0, [r0]
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08022F0C: .4byte gUnknown_08D2DE58
_08022F10: .4byte 0x0000FFFF

	thumb_func_start sub_08022F14
sub_08022F14: @ 0x08022F14
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r3, #0
	lsls r1, r1, #0x10
	ldr r4, _08022F2C @ =0xFFFF0000
	asrs r5, r1, #0x10
	cmp r1, r4
	bne _08022F40
	ldrh r0, [r2]
	lsrs r1, r4, #0x10
	b _08022F38
	.align 2, 0
_08022F2C: .4byte 0xFFFF0000
_08022F30:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r2]
_08022F38:
	adds r2, #2
	cmp r0, r1
	bne _08022F30
	b _08022F64
_08022F40:
	movs r1, #0
	cmp r3, r5
	bge _08022F64
	ldrh r0, [r2]
	lsrs r4, r4, #0x10
	b _08022F5E
_08022F4C:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r5
	bge _08022F64
	ldrh r0, [r2]
_08022F5E:
	adds r2, #2
	cmp r0, r4
	bne _08022F4C
_08022F64:
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08022F6C
sub_08022F6C: @ 0x08022F6C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r5, #0
	lsls r1, r1, #0x10
	ldr r3, _08022FA8 @ =0xFFFF0000
	asrs r6, r1, #0x10
	cmp r1, r3
	bne _08022FB0
	ldrh r0, [r4]
	lsrs r1, r3, #0x10
	cmp r0, r1
	beq _08022FDA
	ldr r7, _08022FAC @ =0x0000FEFF
	adds r6, r1, #0
_08022F88:
	cmp r0, r7
	bls _08022F98
	ldrh r0, [r4]
	bl sub_08022ED0
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
_08022F98:
	adds r4, #2
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4]
	cmp r0, r6
	bne _08022F88
	b _08022FDA
	.align 2, 0
_08022FA8: .4byte 0xFFFF0000
_08022FAC: .4byte 0x0000FEFF
_08022FB0:
	movs r2, #0
	cmp r5, r6
	bge _08022FDA
	ldrh r0, [r4]
	lsrs r3, r3, #0x10
	adds r4, #2
	cmp r0, r3
	beq _08022FDA
	adds r1, r6, #0
_08022FC2:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r2, r1
	bge _08022FDA
	ldrh r0, [r4]
	adds r4, #2
	cmp r0, r3
	bne _08022FC2
_08022FDA:
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08022FE4
sub_08022FE4: @ 0x08022FE4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r7, #0
	subs r1, r1, r4
	lsls r1, r1, #0xf
	lsrs r5, r1, #0x10
	movs r6, #0
	cmp r7, r5
	bhs _08023044
	ldrh r0, [r4]
	ldr r1, _08023024 @ =0x0000FFFF
	cmp r0, r1
	beq _08023044
	ldr r2, _08023028 @ =0x0000FEFF
	mov sb, r2
	mov r8, r1
_0802300A:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, sb
	bls _0802302C
	ldrh r0, [r4]
	bl sub_08022ED0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #2
	adds r4, r4, r0
	b _08023034
	.align 2, 0
_08023024: .4byte 0x0000FFFF
_08023028: .4byte 0x0000FEFF
_0802302C:
	adds r4, #2
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08023034:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, r5
	bhs _08023044
	ldrh r0, [r4]
	cmp r0, r8
	bne _0802300A
_08023044:
	adds r0, r7, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08023054
sub_08023054: @ 0x08023054
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r7, #0
	subs r1, r1, r4
	lsls r1, r1, #0xf
	lsrs r5, r1, #0x10
	movs r6, #0
	cmp r7, r5
	bhs _080230BA
	ldrh r0, [r4]
	ldr r1, _08023094 @ =0x0000FFFF
	cmp r0, r1
	beq _080230BA
	ldr r2, _08023098 @ =0x0000FEFF
	mov sb, r2
	mov r8, r1
_0802307A:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, sb
	bls _0802309C
	ldrh r0, [r4]
	bl sub_08022ED0
	ldrh r1, [r4]
	adds r1, #1
	adds r0, r0, r1
	strh r0, [r4]
	b _080230AA
	.align 2, 0
_08023094: .4byte 0x0000FFFF
_08023098: .4byte 0x0000FEFF
_0802309C:
	ldrh r0, [r4]
	bl sub_08009DDC
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r4, #2
_080230AA:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, r5
	bhs _080230BA
	ldrh r0, [r4]
	cmp r0, r8
	bne _0802307A
_080230BA:
	adds r0, r7, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080230C8
sub_080230C8: @ 0x080230C8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrh r0, [r4]
	ldr r2, _080230D8 @ =0x0000FFFF
	cmp r0, r2
	bne _080230DC
_080230D4:
	movs r0, #0
	b _08023108
	.align 2, 0
_080230D8: .4byte 0x0000FFFF
_080230DC:
	ldr r1, _08023110 @ =0x0000FF01
	cmp r0, r1
	beq _08023104
	adds r7, r2, #0
	adds r6, r1, #0
	ldr r5, _08023114 @ =0x0000FEFF
_080230E8:
	ldrh r0, [r4]
	cmp r0, r7
	beq _080230D4
	cmp r0, r5
	bls _080230FC
	bl sub_08022ED0
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
_080230FC:
	adds r4, #2
	ldrh r0, [r4]
	cmp r0, r6
	bne _080230E8
_08023104:
	adds r4, #2
	adds r0, r4, #0
_08023108:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08023110: .4byte 0x0000FF01
_08023114: .4byte 0x0000FEFF

	thumb_func_start sub_08023118
sub_08023118: @ 0x08023118
	push {lr}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r1, sp, #4
	mov r2, sp
	bl sub_08027E0C
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0802313C
	mov r0, sp
	ldrh r1, [r0]
	adds r0, r2, #0
	bl sub_0801B574
	bl sub_0801B7D8
_0802313C:
	movs r0, #0
	bl sub_080052E4
	add sp, #8
	pop {r0}
	bx r0

	thumb_func_start sub_08023148
sub_08023148: @ 0x08023148
	push {r4, r5, r6, r7, lr}
	ldr r0, _08023160 @ =gSomeBlend
	ldr r1, _08023164 @ =0x0000566C
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08023168
	bl sub_0802337C
	b _08023366
	.align 2, 0
_08023160: .4byte gSomeBlend
_08023164: .4byte 0x0000566C
_08023168:
	bl sub_0802ABCC
	ldr r4, _08023218 @ =gGame
	ldr r2, _0802321C @ =0x00008495
	adds r5, r4, r2
	ldrb r1, [r5]
	lsls r0, r1, #0x1c
	cmp r0, #0
	bge _080231B8
	lsls r0, r1, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq _08023198
	ldr r3, _08023220 @ =0x000083C8
	adds r0, r4, r3
	ldrh r0, [r0]
	ldr r7, _08023224 @ =0x000083C4
	adds r1, r4, r7
	ldrh r1, [r1]
	subs r3, #2
	adds r2, r4, r3
	ldrh r2, [r2]
	bl sub_080187C4
_08023198:
	ldrb r0, [r5]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _080231B8
	ldr r7, _08023220 @ =0x000083C8
	adds r0, r4, r7
	ldrh r0, [r0]
	ldr r2, _08023224 @ =0x000083C4
	adds r1, r4, r2
	ldrh r1, [r1]
	ldr r3, _08023228 @ =0x000083C6
	adds r2, r4, r3
	ldrh r2, [r2]
	bl sub_08036904
_080231B8:
	ldr r5, _08023218 @ =gGame
	ldr r7, _0802321C @ =0x00008495
	adds r6, r5, r7
	ldrb r0, [r6]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _08023200
	ldr r1, _0802322C @ =0x000083CA
	adds r0, r5, r1
	ldrh r0, [r0]
	ldr r2, _08023230 @ =0x000083CC
	adds r4, r5, r2
	ldrh r1, [r4]
	ldr r3, _08023234 @ =0x000083D0
	adds r2, r5, r3
	ldrh r2, [r2]
	subs r7, #0xc3
	adds r3, r5, r7
	ldrh r3, [r3]
	bl sub_08018880
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	ldr r2, _08023238 @ =0x000083CE
	adds r1, r5, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	cmp r0, r1
	blo _08023200
	ldrb r1, [r6]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6]
_08023200:
	ldr r1, _08023218 @ =gGame
	ldrb r0, [r1]
	subs r0, #3
	adds r6, r1, #0
	cmp r0, #0xc
	bhi _080232A8
	lsls r0, r0, #2
	ldr r1, _0802323C @ =_08023240
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08023218: .4byte gGame
_0802321C: .4byte 0x00008495
_08023220: .4byte 0x000083C8
_08023224: .4byte 0x000083C4
_08023228: .4byte 0x000083C6
_0802322C: .4byte 0x000083CA
_08023230: .4byte 0x000083CC
_08023234: .4byte 0x000083D0
_08023238: .4byte 0x000083CE
_0802323C: .4byte _08023240
_08023240: @ jump table
	.4byte _08023366 @ case 0
	.4byte _08023366 @ case 1
	.4byte _08023366 @ case 2
	.4byte _08023274 @ case 3
	.4byte _08023274 @ case 4
	.4byte _08023366 @ case 5
	.4byte _0802329C @ case 6
	.4byte _08023280 @ case 7
	.4byte _08023366 @ case 8
	.4byte _08023366 @ case 9
	.4byte _080232A8 @ case 10
	.4byte _08023280 @ case 11
	.4byte _08023280 @ case 12
_08023274:
	ldr r0, _0802327C @ =gUnknown_0200DEBC
	bl sub_0802D618
	b _08023366
	.align 2, 0
_0802327C: .4byte gUnknown_0200DEBC
_08023280:
	ldr r4, _08023298 @ =gUnknown_0200DEBC
	adds r0, r4, #0
	bl sub_0802D618
	movs r3, #0xe6
	lsls r3, r3, #1
	adds r4, r4, r3
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	b _08023366
	.align 2, 0
_08023298: .4byte gUnknown_0200DEBC
_0802329C:
	ldr r0, _080232A4 @ =gUnknown_0200DEBC
	bl sub_0802D458
	b _08023366
	.align 2, 0
_080232A4: .4byte gUnknown_0200DEBC
_080232A8:
	adds r5, r6, #0
	ldr r0, [r5]
	ldr r1, _080232E8 @ =0x00103000
	ands r0, r1
	cmp r0, #0
	beq _080232B8
	bl sub_0802406C
_080232B8:
	ldr r7, _080232EC @ =0x00008494
	adds r4, r5, r7
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08023314
	bl sub_0800AE2C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080232F8
	ldr r1, _080232F0 @ =0x0000829B
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080232DC
	cmp r0, #6
	bne _08023366
_080232DC:
	ldr r2, _080232F4 @ =0x000082BC
	adds r0, r6, r2
	bl sub_0802D5D0
	b _08023366
	.align 2, 0
_080232E8: .4byte 0x00103000
_080232EC: .4byte 0x00008494
_080232F0: .4byte 0x0000829B
_080232F4: .4byte 0x000082BC
_080232F8:
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08023304
	bl sub_08023414
_08023304:
	ldrb r0, [r4]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0802331E
	movs r0, #0
	bl sub_0801B5E8
	b _0802331E
_08023314:
	bl sub_0800AE2C
	movs r0, #0
	bl sub_0801B5E8
_0802331E:
	ldr r1, _08023334 @ =gGame
	ldr r3, _08023338 @ =0x0000829B
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #4
	bne _08023340
	ldr r7, _0802333C @ =0x000082BC
	adds r0, r1, r7
	bl sub_0802D5D0
	b _08023348
	.align 2, 0
_08023334: .4byte gGame
_08023338: .4byte 0x0000829B
_0802333C: .4byte 0x000082BC
_08023340:
	ldr r2, _0802336C @ =0x000082BC
	adds r0, r1, r2
	bl sub_0802D458
_08023348:
	bl sub_0802454C
	ldr r1, _08023370 @ =gGame
	ldr r7, _08023374 @ =0x00008495
	adds r3, r1, r7
	ldrb r2, [r3]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r3]
	ldr r0, _08023378 @ =0x00008488
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08023366:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802336C: .4byte 0x000082BC
_08023370: .4byte gGame
_08023374: .4byte 0x00008495
_08023378: .4byte 0x00008488

	thumb_func_start sub_0802337C
sub_0802337C: @ 0x0802337C
	push {r4, lr}
	ldr r0, _080233B4 @ =gGame
	ldr r1, _080233B8 @ =0x00008494
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _08023396
	lsls r0, r1, #0x1e
	cmp r0, #0
	blt _08023396
	bl sub_08023414
_08023396:
	ldr r4, _080233BC @ =gUnknown_0200DEBC
	adds r0, r4, #0
	bl sub_0802D660
	bl sub_0802454C
	movs r0, #0xe6
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080233B4: .4byte gGame
_080233B8: .4byte 0x00008494
_080233BC: .4byte gUnknown_0200DEBC

	thumb_func_start sub_080233C0
sub_080233C0: @ 0x080233C0
	push {r4, lr}
	ldr r4, _08023404 @ =gGame
	ldr r1, _08023408 @ =0x000067AC
	adds r0, r4, r1
	ldrh r0, [r0]
	ldr r2, _0802340C @ =0x0000845C
	adds r1, r4, r2
	ldrh r1, [r1]
	adds r1, #5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #8
	bl sub_08027EF8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080233FE
	ldr r0, _08023410 @ =0x00009480
	adds r4, r4, r0
	ldrb r0, [r4]
	movs r1, #8
	orrs r0, r1
	strb r0, [r4]
	bl sub_08023414
	ldrb r1, [r4]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
_080233FE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08023404: .4byte gGame
_08023408: .4byte 0x000067AC
_0802340C: .4byte 0x0000845C
_08023410: .4byte 0x00009480

	thumb_func_start sub_08023414
sub_08023414: @ 0x08023414
	push {lr}
	ldr r0, _0802342C @ =gGame
	ldr r1, _08023430 @ =0x0000845A
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #9
	bhi _08023474
	lsls r0, r0, #2
	ldr r1, _08023434 @ =_08023438
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802342C: .4byte gGame
_08023430: .4byte 0x0000845A
_08023434: .4byte _08023438
_08023438: @ jump table
	.4byte _08023474 @ case 0
	.4byte _08023474 @ case 1
	.4byte _08023474 @ case 2
	.4byte _08023474 @ case 3
	.4byte _08023474 @ case 4
	.4byte _08023460 @ case 5
	.4byte _08023474 @ case 6
	.4byte _08023474 @ case 7
	.4byte _08023474 @ case 8
	.4byte _08023460 @ case 9
_08023460:
	bl sub_08023490
	ldr r0, _08023484 @ =gGame
	ldr r1, _08023488 @ =0x00009480
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08023480
_08023474:
	ldr r1, _08023484 @ =gGame
	ldr r0, _0802348C @ =0x00008484
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08023480:
	pop {r0}
	bx r0
	.align 2, 0
_08023484: .4byte gGame
_08023488: .4byte 0x00009480
_0802348C: .4byte 0x00008484

	thumb_func_start sub_08023490
sub_08023490: @ 0x08023490
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r1, _080234C8 @ =gGame
	ldr r2, _080234CC @ =0x00008484
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _08023500
	subs r2, #0x2a
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #5
	bne _080234D8
	ldr r2, _080234D0 @ =0x000067AC
	adds r0, r1, r2
	ldrh r0, [r0]
	ldr r2, _080234D4 @ =0x0000845C
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r1, #5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	add r2, sp, #4
	mov r3, sp
	bl sub_08027E74
	b _080234E6
	.align 2, 0
_080234C8: .4byte gGame
_080234CC: .4byte 0x00008484
_080234D0: .4byte 0x000067AC
_080234D4: .4byte 0x0000845C
_080234D8:
	ldr r2, _080234F8 @ =0x0000845C
	adds r0, r1, r2
	ldrh r0, [r0]
	add r1, sp, #4
	mov r2, sp
	bl sub_08027E0C
_080234E6:
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _080234FC
	mov r0, sp
	ldrh r1, [r0]
	adds r0, r2, #0
	bl sub_0801B574
	b _08023500
	.align 2, 0
_080234F8: .4byte 0x0000845C
_080234FC:
	bl sub_08023EF8
_08023500:
	ldr r5, _08023538 @ =gSomeBlend
	ldr r0, _0802353C @ =0x00004B18
	adds r6, r5, r0
	ldrb r1, [r6]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08023568
	bl sub_08022710
	ldr r1, _08023540 @ =0x00002CA0
	adds r0, r5, r1
	bl sub_08023588
	ldrb r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802354C
	ldr r0, _08023544 @ =gGame
	ldr r2, _08023548 @ =0x0000947A
	adds r0, r0, r2
	movs r1, #0
	strh r1, [r0]
	bl sub_0801B7D8
	b _08023574
	.align 2, 0
_08023538: .4byte gSomeBlend
_0802353C: .4byte 0x00004B18
_08023540: .4byte 0x00002CA0
_08023544: .4byte gGame
_08023548: .4byte 0x0000947A
_0802354C:
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08023574
	ldr r0, _08023560 @ =gGame
	ldr r1, _08023564 @ =0x0000947A
	adds r0, r0, r1
	strh r4, [r0]
	b _08023574
	.align 2, 0
_08023560: .4byte gGame
_08023564: .4byte 0x0000947A
_08023568:
	ldr r0, _08023584 @ =gGame
	ldrb r0, [r0]
	cmp r0, #1
	bne _08023574
	bl sub_0801B7D8
_08023574:
	movs r0, #4
	movs r1, #0x72
	bl sub_08023948
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08023584: .4byte gGame

	thumb_func_start sub_08023588
sub_08023588: @ 0x08023588
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r4, _080235E4 @ =gSomeBlend
	ldr r0, _080235E8 @ =0x00004B18
	adds r6, r4, r0
	ldrb r2, [r6]
	lsls r0, r2, #0x1a
	lsrs r0, r0, #0x1f
	lsrs r1, r2, #7
	orrs r0, r1
	cmp r0, #0
	bne _080235A4
	b _08023774
_080235A4:
	movs r6, #0x20
	adds r0, r6, #0
	ands r0, r2
	cmp r0, #0
	bne _080235B0
	b _08023738
_080235B0:
	ldrb r1, [r5, #0xe]
	movs r7, #1
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _080235BE
	b _08023738
_080235BE:
	ldrh r1, [r5]
	ldr r0, _080235EC @ =0x00000201
	ands r0, r1
	cmp r0, #0
	beq _0802360C
	ldr r1, _080235F0 @ =0x00004B04
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #2
	bne _08023600
	ldr r2, _080235F4 @ =0x00004B08
	adds r0, r4, r2
	ldrh r0, [r0]
	cmp r0, #0
	bne _080235F8
	movs r0, #0xdc
	bl play_sound
	b _08023606
	.align 2, 0
_080235E4: .4byte gSomeBlend
_080235E8: .4byte 0x00004B18
_080235EC: .4byte 0x00000201
_080235F0: .4byte 0x00004B04
_080235F4: .4byte 0x00004B08
_080235F8:
	movs r0, #0xdd
	bl play_sound
	b _08023606
_08023600:
	movs r0, #0xd2
	bl play_sound
_08023606:
	bl sub_08023E44
	b _08023738
_0802360C:
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08023658
	ldr r3, _0802364C @ =0x00004B19
	adds r0, r4, r3
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	beq _08023628
	b _08023738
_08023628:
	ldr r0, _08023650 @ =0x00004B08
	adds r5, r4, r0
	ldrh r1, [r5]
	ldr r2, _08023654 @ =0x00004B04
	adds r4, r4, r2
	ldrh r0, [r4]
	subs r0, #1
	cmp r1, r0
	bne _0802363C
	b _08023738
_0802363C:
	movs r0, #0xd3
	bl play_sound
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r5]
	b _08023738
	.align 2, 0
_0802364C: .4byte 0x00004B19
_08023650: .4byte 0x00004B08
_08023654: .4byte 0x00004B04
_08023658:
	ldr r3, _08023670 @ =0x00004B19
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _0802369C
	cmp r0, #1
	bgt _08023674
	cmp r0, #0
	beq _0802367A
	b _08023738
	.align 2, 0
_08023670: .4byte 0x00004B19
_08023674:
	cmp r0, #2
	beq _080236C8
	b _08023738
_0802367A:
	ldr r1, _08023694 @ =0x00004B08
	adds r0, r4, r1
	ldr r3, _08023698 @ =0x00004B04
	adds r1, r4, r3
	ldrh r3, [r1]
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0x80
	str r1, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	b _080236B2
	.align 2, 0
_08023694: .4byte 0x00004B08
_08023698: .4byte 0x00004B04
_0802369C:
	ldr r1, _080236C0 @ =0x00004B08
	adds r0, r4, r1
	ldr r3, _080236C4 @ =0x00004B04
	adds r1, r4, r3
	ldrh r3, [r1]
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0x10
	str r1, [sp]
	str r6, [sp, #4]
_080236B2:
	str r2, [sp, #8]
	adds r1, r5, #0
	movs r2, #0
	bl sub_08039544
	b _08023738
	.align 2, 0
_080236C0: .4byte 0x00004B08
_080236C4: .4byte 0x00004B04
_080236C8:
	add r0, sp, #0xc
	strh r2, [r0]
	ldr r1, _080236F0 @ =0x00004B04
	adds r0, r4, r1
	ldr r3, _080236F4 @ =0x00004B06
	adds r1, r4, r3
	ldrh r3, [r0]
	ldrh r1, [r1]
	cmp r3, r1
	bne _080236FC
	ldr r1, _080236F8 @ =0x00004B08
	adds r0, r4, r1
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0x10
	str r1, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	b _0802370E
	.align 2, 0
_080236F0: .4byte 0x00004B04
_080236F4: .4byte 0x00004B06
_080236F8: .4byte 0x00004B08
_080236FC:
	ldr r3, _08023760 @ =0x00004B08
	adds r0, r4, r3
	subs r3, r1, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0x10
	str r1, [sp]
	str r6, [sp, #4]
	str r2, [sp, #8]
_0802370E:
	adds r1, r5, #0
	movs r2, #0
	bl sub_08039544
	add r1, sp, #0xc
	strh r0, [r1]
	add r0, sp, #0xc
	ldrh r0, [r0]
	cmp r0, #0
	beq _08023738
	ldr r1, _08023764 @ =gSomeBlend
	ldr r2, _08023760 @ =0x00004B08
	adds r0, r1, r2
	ldrh r0, [r0]
	lsls r0, r0, #2
	ldr r3, _08023768 @ =0x00003694
	adds r1, r1, r3
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08022694
_08023738:
	ldr r2, _08023764 @ =gSomeBlend
	ldr r1, _0802376C @ =0x00004B18
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x21
	ands r0, r1
	cmp r0, #0x21
	beq _0802374A
	b _0802386E
_0802374A:
	ldr r3, _08023770 @ =0x00004B19
	adds r0, r2, r3
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #2
	bne _0802375A
	b _0802386E
_0802375A:
	bl sub_08023890
	b _0802386E
	.align 2, 0
_08023760: .4byte 0x00004B08
_08023764: .4byte gSomeBlend
_08023768: .4byte 0x00003694
_0802376C: .4byte 0x00004B18
_08023770: .4byte 0x00004B19
_08023774:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08023808
	ldrh r0, [r5]
	ldr r5, _080237B0 @ =0x00000203
	ands r5, r0
	cmp r5, #0
	beq _080237B8
	movs r0, #0xda
	bl play_sound
	ldrb r0, [r6]
	movs r1, #9
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r6]
	lsls r1, r1, #0x19
	ldr r0, _080237B4 @ =0x00011C92
	adds r3, r4, r0
	lsrs r1, r1, #0x1f
	lsls r1, r1, #5
	ldrb r2, [r3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	b _0802386E
	.align 2, 0
_080237B0: .4byte 0x00000203
_080237B4: .4byte 0x00011C92
_080237B8:
	ldr r0, _080237F4 @ =gUnknown_080C1C70
	ldr r3, _080237F8 @ =gUnknown_080C2048
	ldr r1, _080237FC @ =gGame
	ldr r2, _08023800 @ =0x00009D10
	adds r1, r1, r2
	ldr r1, [r1]
	lsrs r1, r1, #3
	movs r2, #7
	ands r1, r2
	adds r1, r1, r3
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r2, #0x8e
	ldr r3, _08023804 @ =0x0001ED10
	adds r1, r4, r3
	ldrb r3, [r1]
	lsls r3, r3, #0x1a
	lsrs r3, r3, #0x1f
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #5
	subs r2, r2, r1
	str r5, [sp]
	str r5, [sp, #4]
	movs r1, #0xdc
	movs r3, #0x20
	bl sub_0803D678
	b _0802386E
	.align 2, 0
_080237F4: .4byte gUnknown_080C1C70
_080237F8: .4byte gUnknown_080C2048
_080237FC: .4byte gGame
_08023800: .4byte 0x00009D10
_08023804: .4byte 0x0001ED10
_08023808:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0802386E
	movs r0, #0x96
	lsls r0, r0, #7
	adds r1, r4, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802382C
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802386E
_08023826:
	bl sub_08023E44
	b _0802386E
_0802382C:
	ldrh r0, [r5]
	ldr r5, _08023878 @ =0x00000203
	ands r5, r0
	cmp r5, #0
	bne _08023826
	ldr r0, _0802387C @ =gUnknown_080C1C70
	ldr r3, _08023880 @ =gUnknown_080C2048
	ldr r1, _08023884 @ =gGame
	ldr r2, _08023888 @ =0x00009D10
	adds r1, r1, r2
	ldr r1, [r1]
	lsrs r1, r1, #3
	movs r2, #7
	ands r1, r2
	adds r1, r1, r3
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r2, #0x8e
	ldr r3, _0802388C @ =0x0001ED10
	adds r1, r4, r3
	ldrb r3, [r1]
	lsls r3, r3, #0x1a
	lsrs r3, r3, #0x1f
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #5
	subs r2, r2, r1
	str r5, [sp]
	str r5, [sp, #4]
	movs r1, #0xdc
	movs r3, #0x20
	bl sub_0803D678
_0802386E:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023878: .4byte 0x00000203
_0802387C: .4byte gUnknown_080C1C70
_08023880: .4byte gUnknown_080C2048
_08023884: .4byte gGame
_08023888: .4byte 0x00009D10
_0802388C: .4byte 0x0001ED10

	thumb_func_start sub_08023890
sub_08023890: @ 0x08023890
	push {r4, r5, r6, lr}
	ldr r5, _0802391C @ =gSomeBlend
	ldr r0, _08023920 @ =0x00004AC6
	adds r2, r5, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #0xf
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08023924 @ =0x00004AC0
	adds r3, r5, r1
	ldr r4, _08023928 @ =0x00004B10
	adds r0, r5, r4
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	strh r0, [r3, #2]
	ldr r6, _0802392C @ =0x00004B08
	adds r4, r5, r6
	ldrh r2, [r4]
	adds r6, #0xc
	adds r0, r5, r6
	movs r6, #0
	ldrsh r0, [r0, r6]
	muls r0, r2, r0
	adds r1, r1, r0
	strh r1, [r3]
	ldr r0, _08023930 @ =0x00004AC2
	adds r3, r5, r0
	ldr r1, _08023934 @ =0x00004B0A
	adds r0, r5, r1
	ldrh r1, [r0]
	lsls r1, r1, #4
	ldrh r2, [r4]
	ldr r4, _08023938 @ =0x00004B16
	adds r0, r5, r4
	movs r6, #0
	ldrsh r0, [r0, r6]
	muls r0, r2, r0
	adds r0, #0xe
	adds r1, r1, r0
	ldrh r0, [r3]
	adds r2, r1, r0
	strh r2, [r3]
	ldr r1, _0802393C @ =0x00011C92
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #0xe
	ands r0, r1
	cmp r0, #4
	bne _080238FC
	adds r0, r2, #2
	strh r0, [r3]
_080238FC:
	ldr r4, _08023940 @ =0x0001ED10
	adds r0, r5, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0802390E
	ldrh r0, [r3]
	subs r0, #0x60
	strh r0, [r3]
_0802390E:
	ldr r6, _08023944 @ =0x00004ABC
	adds r0, r5, r6
	bl sub_080393D8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802391C: .4byte gSomeBlend
_08023920: .4byte 0x00004AC6
_08023924: .4byte 0x00004AC0
_08023928: .4byte 0x00004B10
_0802392C: .4byte 0x00004B08
_08023930: .4byte 0x00004AC2
_08023934: .4byte 0x00004B0A
_08023938: .4byte 0x00004B16
_0802393C: .4byte 0x00011C92
_08023940: .4byte 0x0001ED10
_08023944: .4byte 0x00004ABC

	thumb_func_start sub_08023948
sub_08023948: @ 0x08023948
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x5c
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r0, _080239C4 @ =gGame
	ldr r1, _080239C8 @ =0x00008494
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0802396C
	b _08023E26
_0802396C:
	ldr r2, _080239CC @ =gSomeBlend
	ldr r3, _080239D0 @ =0x00004B19
	adds r0, r2, r3
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802399A
	ldr r1, _080239D4 @ =0x00004B18
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0802399A
	subs r3, #0x17
	adds r1, r2, r3
	ldrh r0, [r1]
	cmp r0, #0
	bne _08023996
	b _08023E26
_08023996:
	subs r0, #1
	strh r0, [r1]
_0802399A:
	movs r0, #0xa
	bl get_progression_flag
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _080239EC
	ldr r2, _080239C4 @ =gGame
	ldr r0, _080239D8 @ =0x00008452
	adds r1, r2, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	blt _080239DC
	ldrh r0, [r1]
	bl get_obj_direct
	adds r0, #0x88
	ldrh r1, [r0]
	b _080239EC
	.align 2, 0
_080239C4: .4byte gGame
_080239C8: .4byte 0x00008494
_080239CC: .4byte gSomeBlend
_080239D0: .4byte 0x00004B19
_080239D4: .4byte 0x00004B18
_080239D8: .4byte 0x00008452
_080239DC:
	ldr r0, _08023AF4 @ =0x00008454
	adds r1, r2, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _080239EA
	b _08023E26
_080239EA:
	ldrh r1, [r1]
_080239EC:
	movs r3, #0
	str r3, [sp, #8]
	cmp r1, #0xff
	bls _080239F6
	b _08023B08
_080239F6:
	adds r0, r1, #0
	bl sub_080222F8
	str r0, [sp, #8]
	movs r0, #5
	bl get_misctext_len
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp, #8]
	bl sub_08022F6C
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #6
	bhi _08023A1A
	b _08023C30
_08023A1A:
	lsls r4, r4, #0x10
	str r4, [sp, #0xc]
	asrs r4, r4, #0x10
	ldr r0, [sp, #0xc]
	ldr r2, _08023AF8 @ =0xFFFC0000
	adds r1, r0, r2
	asrs r1, r1, #0x10
	lsls r5, r5, #0x10
	str r5, [sp, #0x10]
	asrs r5, r5, #0x10
	mov sb, r5
	ldr r0, _08023AFC @ =0xFFFA0000
	ldr r3, [sp, #0x10]
	adds r0, r3, r0
	str r0, [sp, #0x18]
	asrs r2, r0, #0x10
	str r2, [sp, #0x14]
	movs r6, #1
	str r6, [sp]
	movs r5, #0
	str r5, [sp, #4]
	ldr r0, _08023B00 @ =gUnknown_080C1BC8
	movs r3, #0x20
	bl sub_0803D678
	ldr r0, _08023B00 @ =gUnknown_080C1BC8
	adds r0, #0x48
	subs r7, #5
	mov r8, r7
	mov r3, r8
	lsls r1, r3, #1
	add r1, r8
	lsls r1, r1, #2
	adds r1, #0x1c
	adds r4, r4, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r6, [sp]
	str r5, [sp, #4]
	adds r1, r4, #0
	ldr r2, [sp, #0x14]
	movs r3, #0x20
	bl sub_0803D678
	ldr r0, _08023B00 @ =gUnknown_080C1BC8
	adds r0, #0x60
	movs r1, #2
	add sb, r1
	mov r2, sb
	lsls r2, r2, #0x10
	mov sl, r2
	asrs r2, r2, #0x10
	str r6, [sp]
	str r5, [sp, #4]
	adds r1, r4, #0
	movs r3, #0x20
	bl sub_0803D678
	ldr r7, [sp, #0xc]
	ldr r3, [sp, #0x10]
	str r3, [sp, #0x58]
	mov r6, r8
	cmp r5, r6
	blt _08023A9C
	b _08023DB2
_08023A9C:
	movs r0, #1
	mov sb, r0
	mov r8, r5
	mov r1, sl
	str r1, [sp, #0x1c]
	ldr r2, [sp, #0x18]
	mov sl, r2
_08023AAA:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, #0x1c
	asrs r4, r7, #0x10
	adds r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r3, sb
	str r3, [sp]
	mov r0, r8
	str r0, [sp, #4]
	ldr r0, _08023B04 @ =gUnknown_080C1BE0
	adds r1, r4, #0
	mov r3, sl
	asrs r2, r3, #0x10
	movs r3, #0x20
	bl sub_0803D678
	mov r0, sb
	str r0, [sp]
	mov r1, r8
	str r1, [sp, #4]
	ldr r0, _08023B04 @ =gUnknown_080C1BE0
	adds r0, #0x18
	adds r1, r4, #0
	ldr r3, [sp, #0x1c]
	asrs r2, r3, #0x10
	movs r3, #0x20
	bl sub_0803D678
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r6
	blt _08023AAA
	b _08023DB2
	.align 2, 0
_08023AF4: .4byte 0x00008454
_08023AF8: .4byte 0xFFFC0000
_08023AFC: .4byte 0xFFFA0000
_08023B00: .4byte gUnknown_080C1BC8
_08023B04: .4byte gUnknown_080C1BE0
_08023B08:
	ldr r0, _08023C1C @ =0x0000026B
	cmp r1, r0
	bls _08023B10
	b _08023C60
_08023B10:
	ldr r0, _08023C20 @ =0xFFFFFF00
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #7
	bl get_misctext_msg
	str r0, [sp, #8]
	movs r0, #7
	bl get_misctext_len
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp, #8]
	bl sub_08022F6C
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #6
	bls _08023C30
	lsls r4, r4, #0x10
	str r4, [sp, #0x20]
	asrs r4, r4, #0x10
	ldr r2, [sp, #0x20]
	ldr r3, _08023C24 @ =0xFFFC0000
	adds r1, r2, r3
	asrs r1, r1, #0x10
	lsls r5, r5, #0x10
	str r5, [sp, #0x24]
	asrs r5, r5, #0x10
	mov sb, r5
	ldr r2, _08023C28 @ =0xFFFA0000
	ldr r0, [sp, #0x24]
	adds r2, r0, r2
	str r2, [sp, #0x2c]
	asrs r3, r2, #0x10
	str r3, [sp, #0x28]
	movs r6, #1
	str r6, [sp]
	movs r5, #0
	str r5, [sp, #4]
	ldr r0, _08023C2C @ =gUnknown_080C1BC8
	adds r2, r3, #0
	movs r3, #0x20
	bl sub_0803D678
	ldr r0, _08023C2C @ =gUnknown_080C1BC8
	adds r0, #0x48
	subs r7, #5
	mov r8, r7
	mov r2, r8
	lsls r1, r2, #1
	add r1, r8
	lsls r1, r1, #2
	adds r1, #0x1c
	adds r4, r4, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r6, [sp]
	str r5, [sp, #4]
	adds r1, r4, #0
	ldr r2, [sp, #0x28]
	movs r3, #0x20
	bl sub_0803D678
	ldr r0, _08023C2C @ =gUnknown_080C1BC8
	adds r0, #0x60
	movs r3, #2
	add sb, r3
	mov r1, sb
	lsls r1, r1, #0x10
	str r1, [sp, #0x30]
	asrs r2, r1, #0x10
	str r6, [sp]
	str r5, [sp, #4]
	adds r1, r4, #0
	movs r3, #0x20
	bl sub_0803D678
	ldr r7, [sp, #0x20]
	ldr r2, [sp, #0x24]
	str r2, [sp, #0x58]
	mov r6, r8
	cmp r5, r6
	blt _08023BBE
	b _08023DB2
_08023BBE:
	ldr r3, _08023C2C @ =gUnknown_080C1BC8
	adds r3, #0x18
	mov sl, r3
	movs r0, #1
	mov sb, r0
	mov r8, r5
	ldr r1, [sp, #0x30]
	str r1, [sp, #0x38]
	ldr r2, [sp, #0x2c]
	str r2, [sp, #0x34]
_08023BD2:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, #0x1c
	asrs r4, r7, #0x10
	adds r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r3, sb
	str r3, [sp]
	mov r0, r8
	str r0, [sp, #4]
	mov r0, sl
	adds r1, r4, #0
	ldr r3, [sp, #0x34]
	asrs r2, r3, #0x10
	movs r3, #0x20
	bl sub_0803D678
	mov r0, sb
	str r0, [sp]
	mov r1, r8
	str r1, [sp, #4]
	mov r0, sl
	adds r0, #0x18
	adds r1, r4, #0
	ldr r3, [sp, #0x38]
	asrs r2, r3, #0x10
	movs r3, #0x20
	bl sub_0803D678
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r6
	blt _08023BD2
	b _08023DB2
	.align 2, 0
_08023C1C: .4byte 0x0000026B
_08023C20: .4byte 0xFFFFFF00
_08023C24: .4byte 0xFFFC0000
_08023C28: .4byte 0xFFFA0000
_08023C2C: .4byte gUnknown_080C1BC8
_08023C30:
	ldr r0, _08023C54 @ =gUnknown_080C1BB0
	lsls r1, r4, #0x10
	ldr r2, _08023C58 @ =0xFFFC0000
	adds r1, r1, r2
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	ldr r3, _08023C5C @ =0xFFFA0000
	adds r2, r2, r3
	asrs r2, r2, #0x10
	movs r3, #1
	str r3, [sp]
	movs r3, #0
	str r3, [sp, #4]
	movs r3, #0x20
	bl sub_0803D678
	b _08023E04
	.align 2, 0
_08023C54: .4byte gUnknown_080C1BB0
_08023C58: .4byte 0xFFFC0000
_08023C5C: .4byte 0xFFFA0000
_08023C60:
	ldr r0, _08023C7C @ =0x000002BB
	cmp r1, r0
	bls _08023C68
	b _08023E04
_08023C68:
	subs r0, #0x32
	cmp r1, r0
	beq _08023C94
	cmp r1, r0
	bgt _08023C80
	subs r0, #2
	cmp r1, r0
	beq _08023C8C
	b _08023CAC
	.align 2, 0
_08023C7C: .4byte 0x000002BB
_08023C80:
	ldr r0, _08023C88 @ =0x0000028A
	cmp r1, r0
	beq _08023CA0
	b _08023CAC
	.align 2, 0
_08023C88: .4byte 0x0000028A
_08023C8C:
	ldr r0, _08023C90 @ =gUnknown_020042C2
	b _08023CB8
	.align 2, 0
_08023C90: .4byte gUnknown_020042C2
_08023C94:
	ldr r1, _08023C9C @ =gUnknown_020041EA
	str r1, [sp, #8]
	b _08023CBA
	.align 2, 0
_08023C9C: .4byte gUnknown_020041EA
_08023CA0:
	ldr r2, _08023CA8 @ =gUnknown_0200417E
	str r2, [sp, #8]
	b _08023CBA
	.align 2, 0
_08023CA8: .4byte gUnknown_0200417E
_08023CAC:
	ldr r3, _08023DD4 @ =0x0000FE94
	adds r0, r1, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080222F8
_08023CB8:
	str r0, [sp, #8]
_08023CBA:
	movs r0, #5
	bl get_misctext_len
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp, #8]
	bl sub_08022F6C
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #6
	bhi _08023CD6
	b _08023DE4
_08023CD6:
	lsls r4, r4, #0x10
	str r4, [sp, #0x3c]
	asrs r4, r4, #0x10
	ldr r0, [sp, #0x3c]
	ldr r2, _08023DD8 @ =0xFFFC0000
	adds r1, r0, r2
	asrs r1, r1, #0x10
	lsls r5, r5, #0x10
	str r5, [sp, #0x40]
	asrs r5, r5, #0x10
	mov sb, r5
	ldr r0, _08023DDC @ =0xFFFA0000
	ldr r3, [sp, #0x40]
	adds r0, r3, r0
	str r0, [sp, #0x48]
	asrs r2, r0, #0x10
	str r2, [sp, #0x44]
	movs r6, #1
	str r6, [sp]
	movs r5, #0
	str r5, [sp, #4]
	ldr r0, _08023DE0 @ =gUnknown_080C1BC8
	movs r3, #0x20
	bl sub_0803D678
	ldr r0, _08023DE0 @ =gUnknown_080C1BC8
	adds r0, #0x48
	subs r7, #5
	mov r8, r7
	mov r3, r8
	lsls r1, r3, #1
	add r1, r8
	lsls r1, r1, #2
	adds r1, #0x1c
	adds r4, r4, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r6, [sp]
	str r5, [sp, #4]
	adds r1, r4, #0
	ldr r2, [sp, #0x44]
	movs r3, #0x20
	bl sub_0803D678
	ldr r0, _08023DE0 @ =gUnknown_080C1BC8
	adds r0, #0x60
	movs r1, #2
	add sb, r1
	mov r2, sb
	lsls r2, r2, #0x10
	str r2, [sp, #0x4c]
	asrs r2, r2, #0x10
	str r6, [sp]
	str r5, [sp, #4]
	adds r1, r4, #0
	movs r3, #0x20
	bl sub_0803D678
	ldr r7, [sp, #0x3c]
	ldr r3, [sp, #0x40]
	str r3, [sp, #0x58]
	mov r6, r8
	cmp r5, r6
	bge _08023DB2
	ldr r0, _08023DE0 @ =gUnknown_080C1BC8
	adds r0, #0x18
	mov sl, r0
	movs r1, #1
	mov sb, r1
	mov r8, r5
	ldr r2, [sp, #0x4c]
	str r2, [sp, #0x54]
	ldr r3, [sp, #0x48]
	str r3, [sp, #0x50]
_08023D6A:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, #0x1c
	asrs r4, r7, #0x10
	adds r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, sb
	str r0, [sp]
	mov r1, r8
	str r1, [sp, #4]
	mov r0, sl
	adds r1, r4, #0
	ldr r3, [sp, #0x50]
	asrs r2, r3, #0x10
	movs r3, #0x20
	bl sub_0803D678
	mov r0, sb
	str r0, [sp]
	mov r1, r8
	str r1, [sp, #4]
	mov r0, sl
	adds r0, #0x18
	adds r1, r4, #0
	ldr r3, [sp, #0x54]
	asrs r2, r3, #0x10
	movs r3, #0x20
	bl sub_0803D678
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r6
	blt _08023D6A
_08023DB2:
	lsrs r1, r7, #0x10
	ldr r0, [sp, #0x58]
	lsrs r2, r0, #0x10
	movs r3, #1
	rsbs r3, r3, #0
	movs r0, #0xf
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	bl draw_ui_text
	movs r0, #1
	movs r1, #0
	bl sub_080225B4
	b _08023E26
	.align 2, 0
_08023DD4: .4byte 0x0000FE94
_08023DD8: .4byte 0xFFFC0000
_08023DDC: .4byte 0xFFFA0000
_08023DE0: .4byte gUnknown_080C1BC8
_08023DE4:
	ldr r0, _08023E38 @ =gUnknown_080C1BB0
	lsls r1, r4, #0x10
	ldr r2, _08023E3C @ =0xFFFC0000
	adds r1, r1, r2
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	ldr r3, _08023E40 @ =0xFFFA0000
	adds r2, r2, r3
	asrs r2, r2, #0x10
	movs r3, #1
	str r3, [sp]
	movs r3, #0
	str r3, [sp, #4]
	movs r3, #0x20
	bl sub_0803D678
_08023E04:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _08023E26
	adds r1, r4, #0
	adds r2, r5, #0
	movs r0, #0xf
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	movs r3, #9
	bl draw_ui_text
	movs r0, #1
	movs r1, #0
	bl sub_080225B4
_08023E26:
	add sp, #0x5c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023E38: .4byte gUnknown_080C1BB0
_08023E3C: .4byte 0xFFFC0000
_08023E40: .4byte 0xFFFA0000

	thumb_func_start sub_08023E44
sub_08023E44: @ 0x08023E44
	push {r4, r5, r6, lr}
	ldr r5, _08023ED4 @ =gSomeBlend
	ldr r0, _08023ED8 @ =0x00004B19
	adds r6, r5, r0
	ldrb r1, [r6]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08023E62
	ldr r1, _08023EDC @ =0x00011C92
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
_08023E62:
	ldr r0, _08023EE0 @ =0x00004B18
	adds r4, r5, r0
	ldrb r1, [r4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r4]
	movs r1, #0x96
	lsls r1, r1, #7
	adds r0, r5, r1
	movs r3, #0
	movs r2, #0
	strh r2, [r0]
	ldr r0, _08023EE4 @ =0x00004B02
	adds r1, r5, r0
	movs r0, #2
	strh r0, [r1]
	ldr r0, _08023EE8 @ =0x00004B10
	adds r1, r5, r0
	movs r0, #0x22
	strh r0, [r1]
	movs r0, #0x72
	strh r0, [r1, #2]
	ldr r0, _08023EEC @ =0x00004B14
	adds r1, r5, r0
	movs r0, #0x32
	strh r0, [r1]
	strh r2, [r1, #2]
	ldr r1, _08023EF0 @ =0x00011C8B
	adds r0, r5, r1
	strb r3, [r0]
	ldr r1, _08023EF4 @ =0x00005778
	adds r0, r5, r1
	movs r1, #0
	bl sub_0800A0A4
	ldrh r1, [r4]
	movs r0, #0xe4
	lsls r0, r0, #3
	ands r0, r1
	movs r1, #0xa4
	lsls r1, r1, #3
	cmp r0, r1
	bne _08023EC8
	ldrb r0, [r6]
	movs r1, #8
	orrs r0, r1
	strb r0, [r6]
_08023EC8:
	movs r0, #1
	bl sub_0802400C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08023ED4: .4byte gSomeBlend
_08023ED8: .4byte 0x00004B19
_08023EDC: .4byte 0x00011C92
_08023EE0: .4byte 0x00004B18
_08023EE4: .4byte 0x00004B02
_08023EE8: .4byte 0x00004B10
_08023EEC: .4byte 0x00004B14
_08023EF0: .4byte 0x00011C8B
_08023EF4: .4byte 0x00005778

	thumb_func_start sub_08023EF8
sub_08023EF8: @ 0x08023EF8
	push {r4, lr}
	bl sub_08023F4C
	ldr r4, _08023F30 @ =gGame
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08023F40
	movs r0, #0
	bl sub_0802610C
	movs r0, #4
	bl sub_080052E4
	ldr r1, _08023F34 @ =0x0000595C
	adds r0, r4, r1
	movs r1, #1
	strb r1, [r0]
	ldr r2, _08023F38 @ =0x0000595B
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, _08023F3C @ =0x0000598C
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	b _08023F46
	.align 2, 0
_08023F30: .4byte gGame
_08023F34: .4byte 0x0000595C
_08023F38: .4byte 0x0000595B
_08023F3C: .4byte 0x0000598C
_08023F40:
	movs r0, #0
	bl sub_0802610C
_08023F46:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08023F4C
sub_08023F4C: @ 0x08023F4C
	push {r4, r5, lr}
	ldr r5, _08023F9C @ =gGame
	ldr r0, _08023FA0 @ =0x00008450
	adds r4, r5, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08023F94
	ldrh r0, [r4]
	bl get_obj_direct
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xbf
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08023FA4 @ =0x00008494
	adds r5, r5, r0
	ldrb r0, [r5]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08023F94
	adds r0, r3, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033414
	ldrh r0, [r4]
	ldrh r1, [r5]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x1c
	bl sub_08036A1C
_08023F94:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023F9C: .4byte gGame
_08023FA0: .4byte 0x00008450
_08023FA4: .4byte 0x00008494

	thumb_func_start sub_08023FA8
sub_08023FA8: @ 0x08023FA8
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08024004 @ =gGame
	ldr r2, _08024008 @ =0x00008452
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	blt _08023FFC
	ldrh r0, [r1]
	bl get_obj_direct
	adds r2, r0, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08023FDA
	adds r0, r2, #0
	adds r0, #0x88
	ldrh r0, [r0]
	cmp r0, #0x5e
	bne _08023FFC
_08023FDA:
	adds r0, r2, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _08023FFC
	adds r0, r2, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r2, #0
	adds r1, #0x8b
	ldrb r1, [r1]
	movs r2, #7
	ands r2, r1
	movs r1, #2
	bl sub_080332AC
_08023FFC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024004: .4byte gGame
_08024008: .4byte 0x00008452

	thumb_func_start sub_0802400C
sub_0802400C: @ 0x0802400C
	push {r4, lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	ldr r0, _08024050 @ =gGame
	ldr r1, _08024054 @ =0x00008452
	adds r4, r0, r1
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08024064
	ldrh r0, [r4]
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _08024064
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _08024048
	adds r0, r1, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _08024058
_08024048:
	ldrh r0, [r4]
	bl sub_08033414
	b _08024064
	.align 2, 0
_08024050: .4byte gGame
_08024054: .4byte 0x00008452
_08024058:
	adds r0, r1, #0
	adds r0, #0xcc
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08024064:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0802406C
sub_0802406C: @ 0x0802406C
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r6, _080240B8 @ =gGame
	ldr r1, _080240BC @ =0x00009D14
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08024126
	ldr r2, _080240C0 @ =gSomeBlend
	ldr r0, _080240C4 @ =0x0001ED10
	adds r3, r2, r0
	ldrb r0, [r3]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3]
	ldrh r1, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	ldrh r3, [r2, #8]
	orrs r0, r1
	strh r0, [r2, #8]
	ldrb r1, [r6, #1]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _080240CC
	ldrb r0, [r6]
	cmp r0, #1
	beq _08024126
	ldr r1, _080240C8 @ =0x00005964
	adds r0, r6, r1
	movs r1, #0x90
	movs r2, #0x60
	bl sub_080195B0
	b _08024126
	.align 2, 0
_080240B8: .4byte gGame
_080240BC: .4byte 0x00009D14
_080240C0: .4byte gSomeBlend
_080240C4: .4byte 0x0001ED10
_080240C8: .4byte 0x00005964
_080240CC:
	ldr r2, _08024130 @ =0x0000595B
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #0x19
	beq _08024126
	ldr r3, _08024134 @ =0x0000598C
	adds r0, r6, r3
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08024116
	mov r5, sp
	mov r0, sp
	bl sub_0801A530
	ldr r1, _08024138 @ =0x0000595D
	adds r0, r6, r1
	ldrb r0, [r0]
	add r4, sp, #4
	adds r1, r4, #0
	bl sub_08036C00
	ldrh r1, [r4]
	mov r0, sp
	ldrh r0, [r0]
	subs r1, r1, r0
	ldr r2, _0802413C @ =0x00005964
	adds r0, r6, r2
	strh r1, [r0]
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	subs r0, #0x10
	ldr r3, _08024140 @ =0x00005966
	adds r1, r6, r3
	strh r0, [r1]
_08024116:
	ldr r1, _0802413C @ =0x00005964
	adds r0, r6, r1
	ldr r2, _08024144 @ =0x00005968
	adds r1, r6, r2
	ldrh r1, [r1]
	movs r2, #1
	bl sub_08019408
_08024126:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08024130: .4byte 0x0000595B
_08024134: .4byte 0x0000598C
_08024138: .4byte 0x0000595D
_0802413C: .4byte 0x00005964
_08024140: .4byte 0x00005966
_08024144: .4byte 0x00005968

	thumb_func_start sub_08024148
sub_08024148: @ 0x08024148
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r4, _08024170 @ =gUnknown_0201AB44
	movs r6, #0
	movs r1, #0x88
	lsls r1, r1, #4
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r6, r0
	bhs _080241F6
	ldr r2, _08024174 @ =0x00000898
	adds r7, r4, r2
_08024160:
	ldrh r0, [r4]
	cmp r0, #1
	beq _080241E2
	cmp r0, #1
	bgt _08024178
	cmp r0, #0
	beq _0802417E
	b _080241E2
	.align 2, 0
_08024170: .4byte gUnknown_0201AB44
_08024174: .4byte 0x00000898
_08024178:
	cmp r0, #2
	beq _08024196
	b _080241E2
_0802417E:
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080241E2
	movs r0, #1
	strh r0, [r4]
	ldr r0, [r4, #0x10]
	bl sub_08024510
	b _080241E2
_08024196:
	ldr r5, _08024290 @ =gSomeBlend
	ldr r0, _08024294 @ =0x0000539E
	adds r1, r5, r0
	ldrh r0, [r4, #2]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080241E2
	bl sub_080244D4
	adds r1, r0, #0
	cmp r1, #0
	beq _080241E2
	adds r0, r4, #0
	bl sub_08022368
	ldr r0, [r4, #0x10]
	ldr r2, _08024298 @ =0x00005398
	adds r1, r5, r2
	ldrh r1, [r1]
	ldrh r2, [r4, #4]
	movs r3, #0xf
	str r3, [sp]
	subs r3, #0x10
	bl sub_08022474
	movs r0, #0
	strh r0, [r4]
	ldr r0, _0802429C @ =0x000053B0
	adds r1, r5, r0
	ldr r0, [r4, #8]
	str r0, [r1]
	ldr r1, _080242A0 @ =0x06006000
	str r1, [r7]
	movs r2, #4
	ldrsh r0, [r4, r2]
	lsls r0, r0, #6
	adds r0, r0, r1
	str r0, [r7]
_080241E2:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r4, #0x14
	ldr r0, _08024290 @ =gSomeBlend
	ldr r1, _080242A4 @ =0x0000539C
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r6, r0
	blo _08024160
_080241F6:
	ldr r5, _08024290 @ =gSomeBlend
	ldr r2, _08024294 @ =0x0000539E
	adds r3, r5, r2
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	ldrh r2, [r3]
	ldr r0, _080242A4 @ =0x0000539C
	adds r7, r5, r0
	ldrh r1, [r7]
	adds r0, #6
	adds r6, r5, r0
	ldrh r0, [r6]
	lsls r0, r0, #4
	muls r0, r1, r0
	cmp r2, r0
	blt _08024258
	ldr r1, _080242A8 @ =0x00005548
	adds r2, r5, r1
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _080242AC @ =0x000053A4
	adds r0, r5, r2
	ldrh r4, [r0]
	adds r4, #2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldrh r0, [r3]
	ldrh r3, [r7]
	ldrh r1, [r6]
	lsls r2, r1, #4
	muls r2, r3, r2
	subs r0, r0, r2
	lsls r1, r1, #3
	bl __divsi3
	adds r4, r4, r0
	lsls r4, r4, #0x10
	movs r0, #0xf8
	lsls r0, r0, #0xd
	ands r0, r4
	ldr r1, _080242B0 @ =0x000053B4
	adds r2, r5, r1
	ldr r1, _080242A0 @ =0x06006000
	lsrs r0, r0, #0xa
	adds r0, r0, r1
	str r0, [r2]
_08024258:
	ldr r0, _080242B4 @ =gGame
	ldr r2, _080242B8 @ =0x00009D10
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r1, [r6]
	bl sub_08002FD4
	cmp r0, #0
	bne _08024274
	ldr r0, _080242BC @ =0x000053A8
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_08024274:
	ldr r1, _080242C0 @ =0x000053A6
	adds r0, r5, r1
	ldrh r0, [r0]
	ldrh r1, [r5, #0x12]
	strh r0, [r5, #0x12]
	ldr r2, _080242BC @ =0x000053A8
	adds r0, r5, r2
	ldrh r0, [r0]
	ldrh r1, [r5, #0x1a]
	strh r0, [r5, #0x1a]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024290: .4byte gSomeBlend
_08024294: .4byte 0x0000539E
_08024298: .4byte 0x00005398
_0802429C: .4byte 0x000053B0
_080242A0: .4byte 0x06006000
_080242A4: .4byte 0x0000539C
_080242A8: .4byte 0x00005548
_080242AC: .4byte 0x000053A4
_080242B0: .4byte 0x000053B4
_080242B4: .4byte gGame
_080242B8: .4byte 0x00009D10
_080242BC: .4byte 0x000053A8
_080242C0: .4byte 0x000053A6

	thumb_func_start sub_080242C4
sub_080242C4: @ 0x080242C4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _080242F4 @ =gSomeBlend
	ldr r1, _080242F8 @ =0x000053AA
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r2, _080242FC @ =0x00004B1C
	adds r4, r0, r2
	movs r6, #0
	ldr r1, _08024300 @ =0x0000539C
	adds r0, r0, r1
	ldrh r2, [r0]
	cmp r6, r2
	bhs _08024372
	adds r7, r0, #0
_080242E4:
	ldrh r0, [r4]
	cmp r0, #1
	beq _08024364
	cmp r0, #1
	bgt _08024304
	cmp r0, #0
	beq _0802430A
	b _08024364
	.align 2, 0
_080242F4: .4byte gSomeBlend
_080242F8: .4byte 0x000053AA
_080242FC: .4byte 0x00004B1C
_08024300: .4byte 0x0000539C
_08024304:
	cmp r0, #2
	beq _08024322
	b _08024364
_0802430A:
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08024364
	movs r0, #1
	strh r0, [r4]
	ldr r0, [r4, #0x10]
	bl sub_08024510
	b _08024364
_08024322:
	ldr r5, _080243B4 @ =gSomeBlend
	ldr r0, _080243B8 @ =0x0000539E
	adds r1, r5, r0
	ldrh r0, [r4, #2]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08024364
	bl sub_080244D4
	adds r1, r0, #0
	cmp r1, #0
	beq _0802435A
	adds r0, r4, #0
	bl sub_08022368
	ldr r0, [r4, #0x10]
	ldr r2, _080243BC @ =0x00005398
	adds r1, r5, r2
	ldrh r1, [r1]
	movs r2, #0xf
	str r2, [sp]
	movs r2, #0
	movs r3, #1
	rsbs r3, r3, #0
	bl sub_08022474
	movs r0, #0
	strh r0, [r4]
_0802435A:
	ldr r0, _080243C0 @ =0x000053AA
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_08024364:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r4, #0x14
	ldrh r1, [r7]
	cmp r6, r1
	blo _080242E4
_08024372:
	ldr r3, _080243B4 @ =gSomeBlend
	ldr r2, _080243C0 @ =0x000053AA
	adds r0, r3, r2
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802438A
	ldr r1, _080243C4 @ =0x00005548
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
_0802438A:
	ldr r2, _080243B8 @ =0x0000539E
	adds r0, r3, r2
	ldrh r0, [r0]
	movs r1, #0xf0
	bl sub_08002FD4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x1f
	bhi _080243C8
	movs r0, #0
	movs r1, #0x10
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #0x10
	movs r1, #0
	b _080243E6
	.align 2, 0
_080243B4: .4byte gSomeBlend
_080243B8: .4byte 0x0000539E
_080243BC: .4byte 0x00005398
_080243C0: .4byte 0x000053AA
_080243C4: .4byte 0x00005548
_080243C8:
	cmp r4, #0xcf
	bls _080243F4
	subs r4, #0xd0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x10
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #0
	movs r1, #0x10
_080243E6:
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _080243F8
_080243F4:
	movs r5, #0x10
	movs r3, #0
_080243F8:
	ldr r1, _0802442C @ =gSomeBlend
	ldrh r0, [r1]
	movs r2, #0
	ldr r0, _08024430 @ =0x00001E41
	strh r0, [r1]
	lsls r0, r3, #8
	orrs r5, r0
	ldrh r0, [r1, #2]
	strh r5, [r1, #2]
	ldrh r0, [r1, #4]
	strh r2, [r1, #4]
	ldr r0, _08024434 @ =0x0000539E
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldr r2, _08024438 @ =0x000053A6
	adds r0, r1, r2
	ldrh r0, [r0]
	ldrh r2, [r1, #0x12]
	strh r0, [r1, #0x12]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802442C: .4byte gSomeBlend
_08024430: .4byte 0x00001E41
_08024434: .4byte 0x0000539E
_08024438: .4byte 0x000053A6

	thumb_func_start sub_0802443C
sub_0802443C: @ 0x0802443C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _080244BC @ =gSomeBlend
	ldr r1, _080244C0 @ =0x000053AA
	adds r3, r0, r1
	movs r1, #0
	strh r1, [r3]
	ldr r2, _080244C4 @ =0x00004B1C
	adds r4, r0, r2
	movs r5, #0
	ldr r2, _080244C8 @ =0x0000539C
	adds r1, r0, r2
	adds r2, r0, #0
	ldrh r1, [r1]
	cmp r5, r1
	bhs _080244AA
	ldr r0, _080244CC @ =0x00005398
	adds r7, r2, r0
	adds r6, r3, #0
_08024462:
	ldrh r0, [r4]
	cmp r0, #0
	beq _08024498
	cmp r0, #2
	bne _08024498
	bl sub_080244D4
	adds r1, r0, #0
	cmp r1, #0
	beq _08024490
	adds r0, r4, #0
	bl sub_08022368
	ldr r0, [r4, #0x10]
	ldrh r1, [r7]
	ldrh r2, [r4, #4]
	movs r3, #0xf
	str r3, [sp]
	subs r3, #0x10
	bl sub_08022474
	movs r0, #0
	strh r0, [r4]
_08024490:
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	ldr r2, _080244BC @ =gSomeBlend
_08024498:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #0x14
	ldr r1, _080244C8 @ =0x0000539C
	adds r0, r2, r1
	ldrh r0, [r0]
	cmp r5, r0
	blo _08024462
_080244AA:
	ldr r0, _080244D0 @ =0x0000539E
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080244BC: .4byte gSomeBlend
_080244C0: .4byte 0x000053AA
_080244C4: .4byte 0x00004B1C
_080244C8: .4byte 0x0000539C
_080244CC: .4byte 0x00005398
_080244D0: .4byte 0x0000539E

	thumb_func_start sub_080244D4
sub_080244D4: @ 0x080244D4
	push {r4, r5, r6, lr}
	ldr r3, _080244F8 @ =gUnknown_0201B184
	movs r4, #0
	movs r6, #1
	movs r5, #1
_080244DE:
	adds r2, r3, #0
	adds r2, #0x30
	ldrb r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _080244FC
	adds r0, r1, #0
	orrs r0, r6
	strb r0, [r2]
	adds r0, r3, #0
	b _0802450A
	.align 2, 0
_080244F8: .4byte gUnknown_0201B184
_080244FC:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r3, #0x34
	cmp r4, #0xa
	bls _080244DE
	movs r0, #0
_0802450A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08024510
sub_08024510: @ 0x08024510
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r3, _08024548 @ =gUnknown_0201B184
	movs r4, #0
	movs r7, #1
	movs r6, #2
	rsbs r6, r6, #0
_0802451E:
	adds r2, r3, #0
	adds r2, #0x30
	ldrb r1, [r2]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08024536
	cmp r3, r5
	bne _08024536
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r2]
_08024536:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r3, #0x34
	cmp r4, #0xa
	bls _0802451E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024548: .4byte gUnknown_0201B184

	thumb_func_start sub_0802454C
sub_0802454C: @ 0x0802454C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	ldr r2, _08024614 @ =gSomeBlend
	ldr r1, _08024618 @ =0x0000566C
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08024606
	add r1, sp, #8
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0802461C @ =gGame
	ldr r1, _08024620 @ =0x00009D10
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08024580
	add r0, sp, #8
	strh r3, [r0]
_08024580:
	ldr r0, _08024624 @ =0x0000554C
	adds r5, r2, r0
	movs r6, #0
	movs r1, #0x10
	rsbs r1, r1, #0
	mov r8, r1
	adds r0, #4
	adds r4, r2, r0
	adds r1, #0xe
	adds r7, r1, #0
_08024594:
	ldrb r1, [r4, #0x1e]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080245F8
	ldrb r0, [r5, #2]
	cmp r0, #0x9f
	bhi _080245B8
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	movs r0, #0xf
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r3, #0xd
	bl draw_ui_text
_080245B8:
	ldrb r1, [r4, #0x1e]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080245CA
	movs r0, #0
	movs r1, #1
	bl sub_080225B4
_080245CA:
	add r0, sp, #8
	ldrh r0, [r0]
	cmp r0, #0
	beq _080245D8
	ldrh r0, [r5, #2]
	subs r0, #1
	strh r0, [r5, #2]
_080245D8:
	movs r1, #2
	ldrsh r0, [r5, r1]
	cmp r0, r8
	bge _080245E6
	ldrb r0, [r4, #0x1e]
	ands r0, r7
	strb r0, [r4, #0x1e]
_080245E6:
	ldrh r0, [r4, #0x1c]
	subs r0, #1
	strh r0, [r4, #0x1c]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080245F8
	ldrb r0, [r4, #0x1e]
	ands r0, r7
	strb r0, [r4, #0x1e]
_080245F8:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r4, #0x24
	adds r5, #0x24
	cmp r6, #7
	bls _08024594
_08024606:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024614: .4byte gSomeBlend
_08024618: .4byte 0x0000566C
_0802461C: .4byte gGame
_08024620: .4byte 0x00009D10
_08024624: .4byte 0x0000554C

	thumb_func_start nullsub_6
nullsub_6: @ 0x08024628
	bx lr
	.align 2, 0

	thumb_func_start sub_0802462C
sub_0802462C: @ 0x0802462C
	push {r4, r5, r6, r7, lr}
	ldr r4, _080246D4 @ =gUnknown_0201B6A4
	adds r0, r4, #0
	bl sub_08024B40
	ldr r0, _080246D8 @ =0xFFFFE00C
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_08024A74
	ldr r4, _080246DC @ =gGame
	ldr r1, _080246E0 @ =0x00008495
	adds r7, r4, r1
	ldrb r0, [r7]
	movs r2, #0x7f
	ands r2, r0
	strb r2, [r7]
	ldr r0, _080246E4 @ =0x00008494
	adds r0, r0, r4
	mov ip, r0
	ldrb r5, [r0]
	lsls r0, r5, #0x1f
	cmp r0, #0
	beq _08024708
	movs r3, #0
	movs r0, #1
	strb r0, [r4]
	movs r1, #3
	rsbs r1, r1, #0
	adds r6, r1, #0
	ands r6, r5
	mov r0, ip
	strb r6, [r0]
	adds r0, r2, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #0x38
	ands r0, r1
	strb r0, [r7]
	ldr r1, _080246E8 @ =0x00008496
	adds r2, r4, r1
	ldrb r1, [r2]
	movs r5, #0x11
	rsbs r5, r5, #0
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _080246EC @ =0x00008488
	adds r0, r4, r1
	str r3, [r0]
	adds r1, #4
	adds r0, r4, r1
	strh r3, [r0]
	ldr r0, _080246F0 @ =0x00008456
	adds r1, r4, r0
	ldr r0, _080246F4 @ =0x0000FFFF
	strh r0, [r1]
	ldr r0, _080246F8 @ =0x0000847A
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r0, _080246FC @ =0x0000847C
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r0, _08024700 @ =gUnknown_02005080
	ldrb r0, [r0]
	cmp r0, #4
	bne _080246C8
	ldr r0, _08024704 @ =gUnknown_02004100
	ldrb r0, [r0]
	cmp r0, #7
	beq _08024726
_080246C8:
	adds r0, r6, #0
	ands r0, r5
	mov r1, ip
	strb r0, [r1]
	b _08024726
	.align 2, 0
_080246D4: .4byte gUnknown_0201B6A4
_080246D8: .4byte 0xFFFFE00C
_080246DC: .4byte gGame
_080246E0: .4byte 0x00008495
_080246E4: .4byte 0x00008494
_080246E8: .4byte 0x00008496
_080246EC: .4byte 0x00008488
_080246F0: .4byte 0x00008456
_080246F4: .4byte 0x0000FFFF
_080246F8: .4byte 0x0000847A
_080246FC: .4byte 0x0000847C
_08024700: .4byte gUnknown_02005080
_08024704: .4byte gUnknown_02004100
_08024708:
	ldr r1, _08024734 @ =0x00008384
	adds r0, r4, r1
	bl sub_080248D4
	ldr r1, _08024738 @ =0x00008498
	adds r0, r4, r1
	bl sub_080249E8
	ldrh r1, [r4, #2]
	ldr r0, _0802473C @ =0xFFFFF87F
	ands r0, r1
	strh r0, [r4, #2]
	movs r0, #1
	bl sub_0801B5E8
_08024726:
	ldr r0, _08024740 @ =gUnknown_0201B574
	bl sub_0802519C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024734: .4byte 0x00008384
_08024738: .4byte 0x00008498
_0802473C: .4byte 0xFFFFF87F
_08024740: .4byte gUnknown_0201B574

	thumb_func_start sub_08024744
sub_08024744: @ 0x08024744
	push {r4, r5, r6, r7, lr}
	ldr r6, _080247D8 @ =gUnknown_0201B6A4
	adds r0, r6, #0
	bl sub_08024B40
	ldr r1, _080247DC @ =0xFFFFE00C
	adds r0, r6, r1
	bl sub_08024A74
	ldr r5, _080247E0 @ =gGame
	ldr r0, _080247E4 @ =0x00008495
	adds r7, r5, r0
	ldrb r1, [r7]
	movs r0, #0x80
	adds r4, r1, #0
	orrs r4, r0
	strb r4, [r7]
	ldr r1, _080247E8 @ =0x00008494
	adds r1, r1, r5
	mov ip, r1
	ldrb r1, [r1]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _08024804
	movs r3, #0
	movs r0, #1
	strb r0, [r5]
	movs r2, #3
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	mov r6, ip
	strb r0, [r6]
	ands r4, r2
	movs r0, #5
	rsbs r0, r0, #0
	ands r4, r0
	subs r0, #4
	ands r4, r0
	subs r0, #0x38
	ands r4, r0
	strb r4, [r7]
	ldr r0, _080247EC @ =0x00008496
	adds r2, r5, r0
	ldrb r0, [r2]
	ands r1, r0
	strb r1, [r2]
	ldr r1, _080247F0 @ =0x0000848C
	adds r0, r5, r1
	strh r3, [r0]
	ldr r6, _080247F4 @ =0x00008456
	adds r1, r5, r6
	ldr r0, _080247F8 @ =0x0000FFFF
	strh r0, [r1]
	ldr r0, _080247FC @ =0x0000847A
	adds r1, r5, r0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	adds r6, #0x26
	adds r1, r5, r6
	strh r0, [r1]
	ldrh r1, [r5, #2]
	ldr r0, _08024800 @ =0xFFFFF87F
	ands r0, r1
	strh r0, [r5, #2]
	movs r0, #1
	bl sub_0801B5E8
	b _0802484E
	.align 2, 0
_080247D8: .4byte gUnknown_0201B6A4
_080247DC: .4byte 0xFFFFE00C
_080247E0: .4byte gGame
_080247E4: .4byte 0x00008495
_080247E8: .4byte 0x00008494
_080247EC: .4byte 0x00008496
_080247F0: .4byte 0x0000848C
_080247F4: .4byte 0x00008456
_080247F8: .4byte 0x0000FFFF
_080247FC: .4byte 0x0000847A
_08024800: .4byte 0xFFFFF87F
_08024804:
	ldr r1, _0802485C @ =0x00008384
	adds r0, r5, r1
	bl sub_080248D4
	ldr r1, _08024860 @ =0x00008498
	adds r0, r5, r1
	bl sub_080249E8
	ldrh r0, [r5, #2]
	ldr r4, _08024864 @ =0xFFFFF87F
	adds r2, r4, #0
	ands r2, r0
	strh r2, [r5, #2]
	ldr r0, _08024868 @ =0xFFFFDFEC
	adds r7, r6, r0
	ldrb r3, [r7]
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _08024848
	ldr r1, _0802486C @ =0xFFFFDF9A
	adds r0, r6, r1
	ldrh r1, [r0]
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #7
	adds r0, r2, #0
	ands r0, r4
	orrs r0, r1
	strh r0, [r5, #2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r3
	strb r0, [r7]
_08024848:
	movs r0, #1
	bl sub_0801B5E8
_0802484E:
	ldr r0, _08024870 @ =gUnknown_0201B574
	bl sub_0802519C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802485C: .4byte 0x00008384
_08024860: .4byte 0x00008498
_08024864: .4byte 0xFFFFF87F
_08024868: .4byte 0xFFFFDFEC
_0802486C: .4byte 0xFFFFDF9A
_08024870: .4byte gUnknown_0201B574

	thumb_func_start sub_08024874
sub_08024874: @ 0x08024874
	push {r4, r5, lr}
	ldr r5, _080248B8 @ =gUnknown_0201B6A4
	adds r0, r5, #0
	bl sub_08024B40
	ldr r1, _080248BC @ =0xFFFFE00C
	adds r0, r5, r1
	bl sub_08024A74
	ldr r4, _080248C0 @ =gGame
	ldr r0, _080248C4 @ =0x00008495
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r1, _080248C8 @ =0x00008384
	adds r0, r4, r1
	bl sub_080248D4
	ldr r0, _080248CC @ =0x00008498
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_080249E8
	ldr r1, _080248D0 @ =0xFFFFFED0
	adds r5, r5, r1
	adds r0, r5, #0
	bl sub_0802519C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080248B8: .4byte gUnknown_0201B6A4
_080248BC: .4byte 0xFFFFE00C
_080248C0: .4byte gGame
_080248C4: .4byte 0x00008495
_080248C8: .4byte 0x00008384
_080248CC: .4byte 0x00008498
_080248D0: .4byte 0xFFFFFED0

	thumb_func_start sub_080248D4
sub_080248D4: @ 0x080248D4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	mov ip, r0
	ldr r2, _080249DC @ =0x00000111
	add r2, ip
	ldrb r1, [r2]
	lsrs r0, r1, #7
	cmp r0, #0
	bne _080248F0
	ldr r0, _080249E0 @ =gUnknown_02005080
	ldrb r0, [r0]
	cmp r0, #3
	beq _080248F8
_080248F0:
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_080248F8:
	movs r5, #0x88
	lsls r5, r5, #1
	add r5, ip
	ldrb r1, [r5]
	movs r4, #2
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r3, #3
	rsbs r3, r3, #0
	ands r0, r3
	movs r1, #5
	rsbs r1, r1, #0
	mov r8, r1
	ands r0, r1
	movs r2, #9
	rsbs r2, r2, #0
	ands r0, r2
	movs r6, #0x11
	rsbs r6, r6, #0
	ands r0, r6
	strb r0, [r5]
	ldr r5, _080249DC @ =0x00000111
	add r5, ip
	ldrb r1, [r5]
	adds r0, r3, #0
	ands r0, r1
	ands r0, r2
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r5]
	movs r5, #0x89
	lsls r5, r5, #1
	add r5, ip
	ldrb r1, [r5]
	adds r0, r4, #0
	ands r0, r1
	ands r0, r3
	mov r1, r8
	ands r0, r1
	ands r0, r2
	ands r0, r6
	strb r0, [r5]
	movs r0, #0x82
	lsls r0, r0, #1
	add r0, ip
	movs r1, #0
	str r1, [r0]
	movs r0, #0x84
	lsls r0, r0, #1
	add r0, ip
	movs r5, #0
	strh r1, [r0]
	mov r0, ip
	adds r0, #0xe2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	mov r2, ip
	adds r2, #0xd2
	ldr r0, _080249E4 @ =0x0000FFFF
	strh r0, [r2]
	adds r2, #0x24
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r2]
	adds r2, #2
	strh r0, [r2]
	mov r3, ip
	adds r3, #0x2c
	ldrb r2, [r3]
	adds r0, r4, #0
	ands r0, r2
	strb r0, [r3]
	mov r0, ip
	str r1, [r0, #0x20]
	strh r1, [r0, #0x24]
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	mov r1, ip
	adds r1, #0x38
	ldrb r0, [r1]
	ands r4, r0
	strb r4, [r1]
	mov r0, ip
	adds r0, #0x34
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	movs r4, #0
	adds r1, #0xb3
	movs r2, #0
_080249C2:
	adds r0, r1, r4
	strb r2, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #9
	bls _080249C2
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080249DC: .4byte 0x00000111
_080249E0: .4byte gUnknown_02005080
_080249E4: .4byte 0x0000FFFF

	thumb_func_start sub_080249E8
sub_080249E8: @ 0x080249E8
	push {r4, lr}
	movs r3, #0
	str r3, [r0, #0x24]
	str r3, [r0, #0x20]
	str r3, [r0, #0x28]
	ldr r2, _08024A64 @ =0x00000FD8
	adds r1, r0, r2
	str r3, [r1]
	adds r2, #4
	adds r1, r0, r2
	strh r3, [r1]
	adds r2, #2
	adds r1, r0, r2
	strh r3, [r1]
	adds r2, #4
	adds r1, r0, r2
	strh r3, [r1]
	ldr r1, _08024A68 @ =0x00000FE8
	adds r4, r0, r1
	ldrb r2, [r4]
	movs r1, #9
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r1, r2
	subs r2, #0x10
	ands r1, r2
	subs r2, #0x20
	ands r1, r2
	movs r2, #0x7f
	ands r1, r2
	strb r1, [r4]
	str r3, [r0, #0x2c]
	str r3, [r0, #0x30]
	ldr r2, _08024A6C @ =0x00000FCC
	adds r1, r0, r2
	strh r3, [r1]
	adds r0, #0x2c
	movs r1, #0xfa
	lsls r1, r1, #4
	bl memclear
	movs r1, #0
	ldr r3, _08024A70 @ =gUnknown_0200E098
	movs r2, #0
	adds r4, r3, #0
	adds r4, #0x14
_08024A48:
	lsls r0, r1, #2
	adds r0, r0, r3
	str r2, [r0]
	lsls r0, r1, #1
	adds r0, r0, r4
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #4
	bls _08024A48
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024A64: .4byte 0x00000FD8
_08024A68: .4byte 0x00000FE8
_08024A6C: .4byte 0x00000FCC
_08024A70: .4byte gUnknown_0200E098

	thumb_func_start sub_08024A74
sub_08024A74: @ 0x08024A74
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	str r5, [r4]
	str r5, [r4, #4]
	str r5, [r4, #8]
	ldr r0, _08024ADC @ =0x00001490
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	movs r3, #9
	rsbs r3, r3, #0
	ands r0, r3
	subs r1, #2
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08024AE0 @ =0x00001491
	adds r2, r4, r0
	ldrb r0, [r2]
	ands r1, r0
	ands r1, r3
	strb r1, [r2]
	ldr r0, _08024AE4 @ =0x0000146A
	adds r1, r4, r0
	ldr r0, _08024AE8 @ =0x0000FFFF
	strh r0, [r1]
	ldrb r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08024AEC @ =0x00001478
	adds r0, r4, r1
	strh r5, [r0]
	ldr r0, _08024AF0 @ =gUnknown_02005080
	ldrb r0, [r0]
	cmp r0, #5
	bgt _08024AF4
	cmp r0, #3
	blt _08024AF4
	adds r1, #2
	adds r0, r4, r1
	strh r5, [r0]
	b _08024AFC
	.align 2, 0
_08024ADC: .4byte 0x00001490
_08024AE0: .4byte 0x00001491
_08024AE4: .4byte 0x0000146A
_08024AE8: .4byte 0x0000FFFF
_08024AEC: .4byte 0x00001478
_08024AF0: .4byte gUnknown_02005080
_08024AF4:
	ldr r0, _08024B30 @ =0x0000147A
	adds r1, r4, r0
	movs r0, #2
	strh r0, [r1]
_08024AFC:
	ldr r0, _08024B34 @ =0x00001488
	adds r1, r4, r0
	movs r2, #0
	movs r0, #0x22
	strh r0, [r1]
	movs r0, #0x72
	strh r0, [r1, #2]
	ldr r0, _08024B38 @ =0x0000148C
	adds r1, r4, r0
	movs r0, #0x32
	strh r0, [r1]
	strh r2, [r1, #2]
	movs r3, #0
	ldr r0, _08024B3C @ =0x00001448
	adds r1, r4, r0
_08024B1A:
	lsls r0, r3, #2
	adds r0, r1, r0
	str r2, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #7
	bls _08024B1A
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08024B30: .4byte 0x0000147A
_08024B34: .4byte 0x00001488
_08024B38: .4byte 0x0000148C
_08024B3C: .4byte 0x00001448

	thumb_func_start sub_08024B40
sub_08024B40: @ 0x08024B40
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r7, #2
	rsbs r7, r7, #0
	movs r6, #0xf
	rsbs r6, r6, #0
	movs r0, #7
	mov ip, r0
_08024B52:
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r5, r1
	ldrb r2, [r1, #8]
	adds r0, r7, #0
	ands r0, r2
	adds r3, r4, #0
	mov r2, ip
	ands r3, r2
	lsls r3, r3, #1
	ands r0, r6
	orrs r0, r3
	strb r0, [r1, #8]
	adds r1, #0x80
	ldrb r2, [r1]
	adds r0, r7, #0
	ands r0, r2
	ands r0, r6
	orrs r0, r3
	strb r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #9
	bls _08024B52
	adds r2, r5, #0
	adds r2, #0xf8
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08024B9C
sub_08024B9C: @ 0x08024B9C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r4, _08024BE0 @ =gSomeBlend
	ldr r1, _08024BE4 @ =0x00011960
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, #0
	strb r1, [r0, #9]
	ldr r2, _08024BE8 @ =0x00011C8E
	adds r0, r4, r2
	strb r1, [r0]
	ldr r3, _08024BEC @ =0x00005778
	adds r0, r4, r3
	bl sub_08009E38
	ldr r1, _08024BF0 @ =0x00004B1C
	adds r0, r4, r1
	bl sub_08024F74
	ldr r0, _08024BF4 @ =gGame
	ldr r2, _08024BF8 @ =0x000067AC
	adds r0, r0, r2
	ldrh r1, [r0]
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, r0
	bne _08024C00
	ldr r3, _08024BFC @ =0x000053A2
	adds r1, r4, r3
	movs r0, #4
	b _08024C06
	.align 2, 0
_08024BE0: .4byte gSomeBlend
_08024BE4: .4byte 0x00011960
_08024BE8: .4byte 0x00011C8E
_08024BEC: .4byte 0x00005778
_08024BF0: .4byte 0x00004B1C
_08024BF4: .4byte gGame
_08024BF8: .4byte 0x000067AC
_08024BFC: .4byte 0x000053A2
_08024C00:
	ldr r0, _08024CA8 @ =0x000053A2
	adds r1, r4, r0
	movs r0, #6
_08024C06:
	strh r0, [r1]
	ldr r5, _08024CAC @ =0x06008800
	ldr r4, _08024CB0 @ =gUnknown_0201AB44
	movs r2, #0x14
	movs r7, #0
	ldr r1, _08024CB4 @ =0x00000886
	adds r1, r1, r4
	mov r8, r1
	movs r0, #0x88
	lsls r0, r0, #4
	adds r3, r4, r0
_08024C1C:
	movs r0, #2
	strh r0, [r4]
	mov r1, r8
	ldrh r0, [r1]
	lsls r0, r0, #4
	muls r0, r7, r0
	strh r0, [r4, #2]
	strh r2, [r4, #4]
	ldrh r1, [r1]
	movs r0, #0xb0
	muls r0, r1, r0
	strh r0, [r4, #6]
	str r5, [r4, #8]
	str r6, [r4, #0xc]
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	adds r0, r6, #0
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_080230C8
	adds r6, r0, #0
	ldr r2, [sp]
	ldr r3, [sp, #4]
	cmp r6, #0
	beq _08024C78
	adds r0, r2, #2
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0xd
	ands r1, r0
	lsrs r2, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #4
	adds r5, r5, r0
	ldr r0, _08024CB8 @ =0x0600FFFF
	cmp r5, r0
	bls _08024C6C
	ldr r5, _08024CAC @ =0x06008800
_08024C6C:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r4, #0x14
	cmp r7, #0x4f
	bls _08024C1C
_08024C78:
	ldr r1, _08024CBC @ =gSomeBlend
	ldr r3, _08024CC0 @ =0x000053A4
	adds r0, r1, r3
	strh r2, [r0]
	ldr r2, _08024CC4 @ =0x0000539C
	adds r0, r1, r2
	ldrh r2, [r0]
	subs r3, #2
	adds r0, r1, r3
	ldrh r0, [r0]
	lsls r0, r0, #4
	muls r0, r2, r0
	movs r2, #0xb4
	lsls r2, r2, #2
	adds r0, r0, r2
	subs r3, #2
	adds r1, r1, r3
	strh r0, [r1]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024CA8: .4byte 0x000053A2
_08024CAC: .4byte 0x06008800
_08024CB0: .4byte gUnknown_0201AB44
_08024CB4: .4byte 0x00000886
_08024CB8: .4byte 0x0600FFFF
_08024CBC: .4byte gSomeBlend
_08024CC0: .4byte 0x000053A4
_08024CC4: .4byte 0x0000539C

	thumb_func_start sub_08024CC8
sub_08024CC8: @ 0x08024CC8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r4, _08024D98 @ =gSomeBlend
	ldr r1, _08024D9C @ =0x00011960
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, #0
	strb r1, [r0, #9]
	ldr r2, _08024DA0 @ =0x00011C8E
	adds r0, r4, r2
	strb r1, [r0]
	ldr r3, _08024DA4 @ =0x00005778
	adds r5, r4, r3
	adds r0, r5, #0
	bl sub_08009E38
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009F10
	ldr r0, _08024DA8 @ =0x00004B1C
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_08024F74
	ldr r1, _08024DAC @ =0x000053B0
	adds r2, r4, r1
	ldr r3, _08024DB0 @ =0x0000539A
	adds r1, r4, r3
	movs r3, #0
	ldrsh r0, [r1, r3]
	lsls r0, r0, #0xa
	ldr r3, _08024DB4 @ =0x06008000
	adds r0, r0, r3
	str r0, [r2]
	ldr r0, _08024DB8 @ =0x000053B4
	adds r2, r4, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	lsls r0, r0, #6
	ldr r1, _08024DBC @ =0x06006000
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	movs r3, #0
	movs r7, #0
	ldr r2, _08024DC0 @ =0x0000539C
	adds r4, r4, r2
	ldr r0, _08024DC4 @ =0x0000FF03
	mov r8, r0
_08024D32:
	movs r0, #2
	strh r0, [r5]
	strh r1, [r5, #2]
	movs r0, #0xf0
	strh r0, [r5, #6]
	str r6, [r5, #0xc]
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	adds r0, r6, #0
	str r1, [sp]
	str r3, [sp, #4]
	bl sub_080230C8
	adds r6, r0, #0
	ldr r1, [sp]
	ldr r3, [sp, #4]
	cmp r6, #0
	beq _08024D7A
	ldrh r0, [r6]
	cmp r0, r8
	bne _08024D6E
	adds r6, #4
	adds r0, r1, #0
	adds r0, #0xf0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08024D6E:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r5, #0x14
	cmp r7, #0x4f
	bls _08024D32
_08024D7A:
	ldr r2, _08024D98 @ =gSomeBlend
	adds r1, r3, #1
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08024DC8 @ =0x000053A0
	adds r2, r2, r1
	strh r0, [r2]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024D98: .4byte gSomeBlend
_08024D9C: .4byte 0x00011960
_08024DA0: .4byte 0x00011C8E
_08024DA4: .4byte 0x00005778
_08024DA8: .4byte 0x00004B1C
_08024DAC: .4byte 0x000053B0
_08024DB0: .4byte 0x0000539A
_08024DB4: .4byte 0x06008000
_08024DB8: .4byte 0x000053B4
_08024DBC: .4byte 0x06006000
_08024DC0: .4byte 0x0000539C
_08024DC4: .4byte 0x0000FF03
_08024DC8: .4byte 0x000053A0

	thumb_func_start sub_08024DCC
sub_08024DCC: @ 0x08024DCC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r6, _08024E34 @ =gSomeBlend
	ldr r1, _08024E38 @ =0x00011960
	adds r0, r6, r1
	ldr r0, [r0]
	movs r1, #0
	strb r1, [r0, #9]
	ldr r2, _08024E3C @ =0x00011C8E
	adds r0, r6, r2
	strb r1, [r0]
	ldr r3, _08024E40 @ =0x00005778
	adds r4, r6, r3
	adds r0, r4, #0
	bl sub_08009E38
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009F10
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08024E58
	ldr r0, _08024E44 @ =0x00004B1C
	adds r4, r6, r0
	adds r0, r4, #0
	bl sub_08024F74
	ldr r2, _08024E48 @ =0x000053B0
	adds r1, r6, r2
	ldr r0, _08024E4C @ =0x06008000
	str r0, [r1]
	ldr r3, _08024E50 @ =0x000053B4
	adds r1, r6, r3
	ldr r0, _08024E54 @ =0x06006000
	str r0, [r1]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08024EEC
	movs r7, #0
	b _08024E60
	.align 2, 0
_08024E34: .4byte gSomeBlend
_08024E38: .4byte 0x00011960
_08024E3C: .4byte 0x00011C8E
_08024E40: .4byte 0x00005778
_08024E44: .4byte 0x00004B1C
_08024E48: .4byte 0x000053B0
_08024E4C: .4byte 0x06008000
_08024E50: .4byte 0x000053B4
_08024E54: .4byte 0x06006000
_08024E58:
	ldr r1, _08024ED4 @ =0x00004B1C
	adds r0, r6, r1
	bl sub_0802503C
_08024E60:
	ldr r2, _08024ED8 @ =gSomeBlend
	lsls r0, r7, #0x10
	asrs r0, r0, #0xe
	ldr r3, _08024EDC @ =0x000053B8
	adds r1, r2, r3
	adds r0, r0, r1
	ldr r5, [r0]
	cmp r5, #0
	beq _08024EC4
	ldr r0, _08024ED4 @ =0x00004B1C
	adds r4, r2, r0
	ldr r1, _08024EE0 @ =0x0000539A
	adds r0, r2, r1
	ldrh r6, [r0]
	movs r7, #0
	movs r3, #0
	mov sb, r3
	ldr r0, _08024EE4 @ =0x0000539C
	adds r1, r2, r0
	ldr r2, _08024EE8 @ =0x0000FF03
	mov r8, r2
_08024E8A:
	movs r0, #2
	strh r0, [r4]
	mov r3, sb
	strh r3, [r4, #2]
	strh r6, [r4, #4]
	str r5, [r4, #0xc]
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r0, r5, #0
	str r1, [sp]
	bl sub_080230C8
	adds r5, r0, #0
	ldr r1, [sp]
	cmp r5, #0
	beq _08024EC4
	ldrh r0, [r5]
	cmp r0, r8
	beq _08024EC4
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r4, #0x14
	cmp r7, #0x4f
	bls _08024E8A
_08024EC4:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024ED4: .4byte 0x00004B1C
_08024ED8: .4byte gSomeBlend
_08024EDC: .4byte 0x000053B8
_08024EE0: .4byte 0x0000539A
_08024EE4: .4byte 0x0000539C
_08024EE8: .4byte 0x0000FF03

	thumb_func_start sub_08024EEC
sub_08024EEC: @ 0x08024EEC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r4, r1, #0
	ldrh r1, [r4]
	ldr r0, _08024F28 @ =0x0000FFFF
	cmp r1, r0
	beq _08024F5E
	ldr r1, _08024F2C @ =0x0000089C
	adds r0, r6, r1
	str r4, [r0]
	movs r5, #1
	ldr r2, _08024F30 @ =0x0000FF03
	mov r8, r2
	ldr r7, _08024F34 @ =0x0000FEFF
_08024F0C:
	ldrh r0, [r4]
	cmp r0, r8
	bne _08024F38
	adds r4, #4
	lsls r0, r5, #2
	ldr r2, _08024F2C @ =0x0000089C
	adds r1, r6, r2
	adds r1, r1, r0
	str r4, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	b _08024F4E
	.align 2, 0
_08024F28: .4byte 0x0000FFFF
_08024F2C: .4byte 0x0000089C
_08024F30: .4byte 0x0000FF03
_08024F34: .4byte 0x0000FEFF
_08024F38:
	cmp r0, r7
	bls _08024F4C
	adds r4, #2
	ldrh r0, [r4]
	bl sub_08022ED0
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	b _08024F4E
_08024F4C:
	adds r4, #2
_08024F4E:
	ldrh r1, [r4]
	ldr r0, _08024F68 @ =0x0000FFFF
	cmp r1, r0
	bne _08024F0C
	ldr r0, _08024F6C @ =gSomeBlend
	ldr r2, _08024F70 @ =0x000053AE
	adds r0, r0, r2
	strh r5, [r0]
_08024F5E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024F68: .4byte 0x0000FFFF
_08024F6C: .4byte gSomeBlend
_08024F70: .4byte 0x000053AE

	thumb_func_start sub_08024F74
sub_08024F74: @ 0x08024F74
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r1, #0x88
	lsls r1, r1, #4
	adds r0, r6, r1
	movs r1, #0
	strh r1, [r0]
	ldr r2, _08025030 @ =0x00000882
	adds r0, r6, r2
	strh r1, [r0]
	adds r2, #2
	adds r0, r6, r2
	strh r1, [r0]
	adds r2, #2
	adds r0, r6, r2
	strh r1, [r0]
	adds r2, #2
	adds r0, r6, r2
	strh r1, [r0]
	adds r2, #2
	adds r0, r6, r2
	strh r1, [r0]
	adds r2, #2
	adds r0, r6, r2
	strh r1, [r0]
	adds r2, #4
	adds r0, r6, r2
	strh r1, [r0]
	adds r2, #2
	adds r0, r6, r2
	strh r1, [r0]
	ldr r0, _08025034 @ =0x00000A2C
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r6, #0
	movs r5, #0
	movs r2, #0
	movs r4, #1
	movs r3, #0xa0
_08024FCA:
	strh r4, [r1]
	strh r3, [r1, #4]
	str r2, [r1, #0xc]
	str r2, [r1, #0x10]
	str r2, [r1, #8]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r1, #0x14
	cmp r5, #0x4f
	bls _08024FCA
	movs r1, #0xc8
	lsls r1, r1, #3
	adds r4, r6, r1
	movs r5, #0
	movs r2, #2
	rsbs r2, r2, #0
	adds r7, r2, #0
_08024FEE:
	adds r0, r4, #0
	movs r1, #0x30
	movs r2, #1
	rsbs r2, r2, #0
	bl sub_08001B54
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r1, [r0]
	ands r1, r7
	strb r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #0x34
	cmp r5, #0xa
	bls _08024FEE
	movs r5, #0
	ldr r0, _08025038 @ =0x0000089C
	adds r2, r6, r0
	movs r1, #0
_08025018:
	lsls r0, r5, #2
	adds r0, r2, r0
	str r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x63
	bls _08025018
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025030: .4byte 0x00000882
_08025034: .4byte 0x00000A2C
_08025038: .4byte 0x0000089C

	thumb_func_start sub_0802503C
sub_0802503C: @ 0x0802503C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r0, #0x88
	lsls r0, r0, #4
	adds r1, r3, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _080250B0 @ =0x00000A2C
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r3, #0
	movs r5, #0
	movs r2, #0
	movs r6, #1
	movs r4, #0xa0
_08025062:
	strh r6, [r1]
	strh r4, [r1, #4]
	str r2, [r1, #0xc]
	str r2, [r1, #0x10]
	str r2, [r1, #8]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r1, #0x14
	cmp r5, #0x4f
	bls _08025062
	movs r0, #0xc8
	lsls r0, r0, #3
	adds r4, r3, r0
	movs r5, #0
	movs r0, #2
	rsbs r0, r0, #0
	adds r6, r0, #0
_08025086:
	adds r0, r4, #0
	movs r1, #0x30
	movs r2, #1
	rsbs r2, r2, #0
	bl sub_08001B54
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r1, [r0]
	ands r1, r6
	strb r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #0x34
	cmp r5, #0xa
	bls _08025086
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080250B0: .4byte 0x00000A2C

	thumb_func_start sub_080250B4
sub_080250B4: @ 0x080250B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	bl sub_08025168
	adds r5, r0, #0
	cmp r5, #0
	beq _0802515A
	ldr r1, _08025120 @ =gSomeBlend
	ldr r0, _08025124 @ =0x0000566C
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	adds r6, r5, #0
	adds r6, #0x22
	ldrb r0, [r6]
	orrs r0, r2
	strb r0, [r6]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #0x20]
	ldrb r1, [r6]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6]
	mov r0, r8
	strh r0, [r5]
	strh r4, [r5, #2]
	adds r4, r5, #4
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r1, #0x1a
	bl sub_08001B54
	ldrh r1, [r7]
	ldr r0, _08025128 @ =0x0000FF23
	cmp r1, r0
	bne _0802512C
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_080223F4
	b _08025146
	.align 2, 0
_08025120: .4byte gSomeBlend
_08025124: .4byte 0x0000566C
_08025128: .4byte 0x0000FF23
_0802512C:
	ldr r0, _08025164 @ =0x0000FF0B
	cmp r1, r0
	bne _0802513C
	ldrb r0, [r6]
	movs r1, #2
	orrs r0, r1
	strb r0, [r6]
	adds r7, #2
_0802513C:
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #0x1a
	bl sub_08001B18
_08025146:
	adds r1, r5, #0
	adds r1, #0x1c
	adds r0, r4, #0
	bl sub_08023054
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x11
	ldrh r1, [r5]
	subs r1, r1, r0
	strh r1, [r5]
_0802515A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025164: .4byte 0x0000FF0B

	thumb_func_start sub_08025168
sub_08025168: @ 0x08025168
	push {r4, lr}
	ldr r2, _08025184 @ =gUnknown_0201B574
	movs r3, #0
	movs r4, #1
_08025170:
	adds r0, r2, #0
	adds r0, #0x22
	ldrb r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _08025188
	adds r0, r2, #0
	b _08025196
	.align 2, 0
_08025184: .4byte gUnknown_0201B574
_08025188:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #0x24
	cmp r3, #7
	bls _08025170
	movs r0, #0
_08025196:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0802519C
sub_0802519C: @ 0x0802519C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0x90
	lsls r1, r1, #1
	adds r3, r5, r1
	ldrb r2, [r3]
	movs r4, #2
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r1, r2
	strb r1, [r3]
	mov ip, r5
	movs r5, #0
_080251B6:
	mov r3, ip
	adds r3, #0x22
	ldrb r1, [r3]
	adds r2, r4, #0
	ands r2, r1
	strb r2, [r3]
	adds r1, r5, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r1, #0x24
	add ip, r1
	cmp r5, #7
	bls _080251B6
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start nullsub_68
nullsub_68: @ 0x080251D8
	bx lr
	.align 2, 0

	thumb_func_start sub_080251DC
sub_080251DC: @ 0x080251DC
	ldrb r2, [r0, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0, #8]
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	bx lr
	.align 2, 0

	thumb_func_start sub_080251F4
sub_080251F4: @ 0x080251F4
	push {r4, r5, r6, r7, lr}
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r3, _0802528C @ =gGame
	ldr r0, _08025290 @ =0x00008494
	adds r0, r0, r3
	mov ip, r0
	ldrb r4, [r0]
	lsls r0, r4, #0x1f
	lsrs r6, r0, #0x1f
	cmp r6, #0
	beq _08025212
	b _08025338
_08025212:
	cmp r5, #9
	bls _08025218
	b _08025338
_08025218:
	ldr r7, _08025294 @ =0x00008450
	adds r1, r3, r7
	ldr r0, _08025298 @ =0x0000FFFF
	strh r0, [r1]
	ldr r0, _0802529C @ =0x00008452
	adds r1, r3, r0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	adds r7, #4
	adds r1, r3, r7
	strh r0, [r1]
	ldr r1, _080252A0 @ =0x000067AC
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r7, #4
	adds r0, r3, r7
	strh r1, [r0]
	ldr r1, _080252A4 @ =0x0000845C
	adds r0, r3, r1
	strh r2, [r0]
	movs r2, #9
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r4
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	mov r7, ip
	strb r0, [r7]
	ldr r0, _080252A8 @ =0x0000845E
	adds r1, r3, r0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _080252AC @ =0x00008484
	adds r0, r3, r1
	str r6, [r0]
	ldr r7, _080252B0 @ =0x00008490
	adds r1, r3, r7
	movs r0, #1
	str r0, [r1]
	ldr r0, _080252B4 @ =0x00008496
	adds r4, r3, r0
	ldrb r1, [r4]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r2
	strb r0, [r4]
	cmp r5, #4
	beq _080252B8
	cmp r5, #4
	blt _080252DE
	cmp r5, #6
	bgt _080252DE
	b _080252D4
	.align 2, 0
_0802528C: .4byte gGame
_08025290: .4byte 0x00008494
_08025294: .4byte 0x00008450
_08025298: .4byte 0x0000FFFF
_0802529C: .4byte 0x00008452
_080252A0: .4byte 0x000067AC
_080252A4: .4byte 0x0000845C
_080252A8: .4byte 0x0000845E
_080252AC: .4byte 0x00008484
_080252B0: .4byte 0x00008490
_080252B4: .4byte 0x00008496
_080252B8:
	ldr r1, _08025308 @ =0x00009485
	adds r5, r3, r1
	ldrb r0, [r5]
	cmp r0, #1
	bne _080252C8
	movs r0, #1
	bl sub_0800ADBC
_080252C8:
	ldrb r0, [r4]
	movs r1, #8
	orrs r0, r1
	strb r0, [r4]
	movs r0, #0
	strb r0, [r5]
_080252D4:
	movs r0, #5
	bl sub_080260C8
	bl sub_080233C0
_080252DE:
	ldr r1, _0802530C @ =gGame
	ldr r2, _08025310 @ =0x00008494
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08025338
	ldr r7, _08025314 @ =0x000067AC
	adds r0, r1, r7
	ldrh r1, [r0]
	movs r0, #0xfd
	lsls r0, r0, #1
	cmp r1, r0
	beq _08025320
	cmp r1, r0
	bgt _08025318
	subs r0, #0x1f
	cmp r1, r0
	beq _08025320
	b _08025332
	.align 2, 0
_08025308: .4byte 0x00009485
_0802530C: .4byte gGame
_08025310: .4byte 0x00008494
_08025314: .4byte 0x000067AC
_08025318:
	movs r0, #0x9e
	lsls r0, r0, #2
	cmp r1, r0
	bne _08025332
_08025320:
	movs r0, #0
	bl sub_08025F98
	movs r1, #2
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08033948
	b _08025338
_08025332:
	movs r0, #1
	bl sub_08025F98
_08025338:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start object_interact
object_interact: @ 0x08025340
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	add r0, sp, #4
	strh r3, [r0]
	ldr r6, _08025478 @ =gGame
	ldr r0, _0802547C @ =0x00008494
	adds r0, r0, r6
	mov r8, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08025370
	b _0802560E
_08025370:
	adds r0, r7, #0
	adds r0, #0xca
	ldrb r0, [r0]
	movs r2, #5
	mov ip, r2
	ands r2, r0
	mov ip, r2
	cmp r2, #0
	beq _08025384
	b _0802560E
_08025384:
	cmp r1, #0
	bne _0802538A
	b _0802560E
_0802538A:
	cmp r1, #0xa
	bls _08025390
	b _0802560E
_08025390:
	adds r0, r7, #0
	adds r0, #0xbc
	ldrb r1, [r0]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0
	beq _080253A2
	add r0, sp, #4
	strh r2, [r0]
_080253A2:
	adds r5, r7, #0
	adds r5, #0x85
	ldrb r1, [r5]
	ldr r2, _08025480 @ =0x00008450
	adds r0, r6, r2
	strh r1, [r0]
	ldr r0, _08025484 @ =0x00008452
	adds r1, r6, r0
	ldr r0, _08025488 @ =0x0000FFFF
	strh r0, [r1]
	adds r2, #4
	adds r1, r6, r2
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _0802548C @ =0x000067AC
	adds r0, r6, r1
	ldrh r1, [r0]
	adds r2, #4
	adds r0, r6, r2
	strh r1, [r0]
	ldr r1, _08025490 @ =0x0000845C
	adds r0, r6, r1
	mov r2, sb
	strh r2, [r0]
	ldrb r1, [r6, #2]
	lsls r1, r1, #0x1a
	movs r2, #1
	lsrs r1, r1, #0x1f
	lsls r1, r1, #3
	mov r0, r8
	ldrb r3, [r0]
	movs r4, #9
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r3
	orrs r0, r1
	add r1, sp, #4
	ldrh r1, [r1]
	ands r2, r1
	lsls r2, r2, #4
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	orrs r0, r2
	mov r1, r8
	strb r0, [r1]
	ldr r2, _08025494 @ =0x0000845E
	adds r1, r6, r2
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _08025498 @ =0x00008484
	adds r0, r6, r1
	mov r2, ip
	str r2, [r0]
	ldr r0, _0802549C @ =0x00008490
	adds r1, r6, r0
	movs r0, #1
	str r0, [r1]
	ldr r1, _080254A0 @ =0x00008496
	adds r2, r6, r1
	ldrb r1, [r2]
	subs r0, #6
	ands r0, r1
	ands r0, r4
	strb r0, [r2]
	add r0, sp, #4
	ldrh r0, [r0]
	cmp r0, #0
	beq _08025458
	ldrb r0, [r5]
	bl sub_08036C68
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #5
	mov r1, r8
	ldrh r2, [r1]
	ldr r1, _080254A4 @ =0xFFFFFE1F
	ands r1, r2
	orrs r1, r0
	mov r2, r8
	strh r1, [r2]
	ldrb r0, [r5]
	movs r1, #0
	movs r2, #0
	bl sub_08033868
_08025458:
	adds r2, r7, #0
	adds r2, #0xbf
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	mov r0, sl
	subs r0, #4
	cmp r0, #6
	bls _0802546E
	b _08025588
_0802546E:
	lsls r0, r0, #2
	ldr r1, _080254A8 @ =_080254AC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08025478: .4byte gGame
_0802547C: .4byte 0x00008494
_08025480: .4byte 0x00008450
_08025484: .4byte 0x00008452
_08025488: .4byte 0x0000FFFF
_0802548C: .4byte 0x000067AC
_08025490: .4byte 0x0000845C
_08025494: .4byte 0x0000845E
_08025498: .4byte 0x00008484
_0802549C: .4byte 0x00008490
_080254A0: .4byte 0x00008496
_080254A4: .4byte 0xFFFFFE1F
_080254A8: .4byte _080254AC
_080254AC: @ jump table
	.4byte _080254C8 @ case 0
	.4byte _080254EA @ case 1
	.4byte _08025504 @ case 2
	.4byte _08025554 @ case 3
	.4byte _08025570 @ case 4
	.4byte _08025588 @ case 5
	.4byte _08025582 @ case 6
_080254C8:
	ldr r4, _080254F8 @ =gGame
	ldr r0, _080254FC @ =0x00009485
	adds r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #1
	bne _080254DA
	movs r0, #1
	bl sub_0800ADBC
_080254DA:
	ldr r1, _08025500 @ =0x00008496
	adds r2, r4, r1
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	strb r0, [r5]
_080254EA:
	movs r0, #5
	bl sub_080260C8
	bl sub_080233C0
	b _08025588
	.align 2, 0
_080254F8: .4byte gGame
_080254FC: .4byte 0x00009485
_08025500: .4byte 0x00008496
_08025504:
	adds r1, r7, #0
	adds r1, #0x88
	ldr r2, _08025534 @ =0xFFFFFF00
	adds r0, r2, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	bls _0802551A
	b _0802560E
_0802551A:
	ldrb r1, [r5]
	mov r0, sb
	bl sub_08026508
	bl sub_08026938
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08025538
	movs r0, #1
	bl sub_080052E4
	b _08025588
	.align 2, 0
_08025534: .4byte 0xFFFFFF00
_08025538:
	ldr r0, _0802554C @ =gGame
	ldr r1, _08025550 @ =0x0000595C
	adds r0, r0, r1
	movs r1, #0x1e
	strb r1, [r0]
	movs r0, #7
	bl sub_080052E4
	b _08025588
	.align 2, 0
_0802554C: .4byte gGame
_08025550: .4byte 0x0000595C
_08025554:
	ldr r0, _08025568 @ =gGame
	ldr r2, _0802556C @ =0x0000845C
	adds r0, r0, r2
	movs r1, #8
	strh r1, [r0]
	movs r0, #9
	bl sub_080260C8
	b _08025588
	.align 2, 0
_08025568: .4byte gGame
_0802556C: .4byte 0x0000845C
_08025570:
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [sp]
	adds r0, r7, #0
	adds r1, r3, #0
	movs r2, #0
	bl sub_080261D0
	b _08025588
_08025582:
	movs r0, #9
	bl sub_080260C8
_08025588:
	ldr r1, _080255B8 @ =gGame
	ldr r2, _080255BC @ =0x00008494
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080255CC
	ldr r2, _080255C0 @ =0x000067AC
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #0x55
	beq _080255A4
	cmp r0, #0x5d
	bne _080255C4
_080255A4:
	movs r0, #0
	bl sub_08025F98
	movs r1, #2
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08033948
	b _0802560E
	.align 2, 0
_080255B8: .4byte gGame
_080255BC: .4byte 0x00008494
_080255C0: .4byte 0x000067AC
_080255C4:
	movs r0, #1
	bl sub_08025F98
	b _0802560E
_080255CC:
	ldr r2, _080255E8 @ =0x000067AC
	adds r0, r1, r2
	ldrh r1, [r0]
	movs r0, #0x9b
	lsls r0, r0, #2
	cmp r1, r0
	beq _080255FE
	cmp r1, r0
	bgt _080255EC
	cmp r1, #0xe
	beq _080255FE
	cmp r1, #0x67
	beq _080255FE
	b _08025608
	.align 2, 0
_080255E8: .4byte 0x000067AC
_080255EC:
	ldr r0, _08025604 @ =0x00000363
	cmp r1, r0
	blt _08025608
	adds r0, #1
	cmp r1, r0
	ble _080255FE
	adds r0, #2
	cmp r1, r0
	bne _08025608
_080255FE:
	bl sub_0800AD6C
	b _0802560E
	.align 2, 0
_08025604: .4byte 0x00000363
_08025608:
	movs r0, #0
	bl sub_0800ADBC
_0802560E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08025620
sub_08025620: @ 0x08025620
	push {r4, r5, r6, r7, lr}
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r4, _080256AC @ =gGame
	ldr r0, _080256B0 @ =0x00008494
	adds r0, r0, r4
	mov ip, r0
	ldrb r3, [r0]
	lsls r0, r3, #0x1f
	lsrs r6, r0, #0x1f
	cmp r6, #0
	bne _08025704
	cmp r5, #9
	bhi _08025704
	ldr r7, _080256B4 @ =0x00008450
	adds r1, r4, r7
	ldr r0, _080256B8 @ =0x0000FFFF
	strh r0, [r1]
	ldr r0, _080256BC @ =0x00008452
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	adds r7, #4
	adds r1, r4, r7
	strh r0, [r1]
	ldr r1, _080256C0 @ =0x000067AC
	adds r0, r4, r1
	ldrh r1, [r0]
	adds r7, #4
	adds r0, r4, r7
	strh r1, [r0]
	ldr r1, _080256C4 @ =0x0000845C
	adds r0, r4, r1
	strh r2, [r0]
	movs r2, #9
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r3
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	mov r7, ip
	strb r0, [r7]
	ldr r0, _080256C8 @ =0x0000845E
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _080256CC @ =0x00008484
	adds r0, r4, r1
	str r6, [r0]
	ldr r7, _080256D0 @ =0x00008490
	adds r1, r4, r7
	movs r0, #1
	str r0, [r1]
	ldr r0, _080256D4 @ =0x00008496
	adds r3, r4, r0
	ldrb r1, [r3]
	movs r0, #4
	orrs r0, r1
	ands r0, r2
	strb r0, [r3]
	cmp r5, #4
	beq _080256D8
	cmp r5, #5
	beq _080256E6
	b _080256F0
	.align 2, 0
_080256AC: .4byte gGame
_080256B0: .4byte 0x00008494
_080256B4: .4byte 0x00008450
_080256B8: .4byte 0x0000FFFF
_080256BC: .4byte 0x00008452
_080256C0: .4byte 0x000067AC
_080256C4: .4byte 0x0000845C
_080256C8: .4byte 0x0000845E
_080256CC: .4byte 0x00008484
_080256D0: .4byte 0x00008490
_080256D4: .4byte 0x00008496
_080256D8:
	movs r1, #8
	orrs r0, r1
	strb r0, [r3]
	ldr r7, _0802570C @ =0x00009485
	adds r1, r4, r7
	movs r0, #0
	strb r0, [r1]
_080256E6:
	movs r0, #5
	bl sub_080260C8
	bl sub_080233C0
_080256F0:
	ldr r0, _08025710 @ =gGame
	ldr r1, _08025714 @ =0x00008494
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08025704
	movs r0, #0
	bl sub_08025F98
_08025704:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802570C: .4byte 0x00009485
_08025710: .4byte gGame
_08025714: .4byte 0x00008494

	thumb_func_start sub_08025718
sub_08025718: @ 0x08025718
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r1, #0
	ldr r6, _080257E4 @ =gGame
	ldr r0, _080257E8 @ =0x00008494
	adds r0, r0, r6
	mov r8, r0
	ldrb r2, [r0]
	lsls r0, r2, #0x1f
	lsrs r7, r0, #0x1f
	cmp r7, #0
	beq _08025736
	b _080258FE
_08025736:
	ldr r0, [r4]
	ldrh r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	cmp r0, #1
	ble _08025744
	b _080258FE
_08025744:
	ldr r3, _080257EC @ =0x00008450
	adds r1, r6, r3
	ldr r0, _080257F0 @ =0x0000FFFF
	strh r0, [r1]
	ldr r0, _080257F4 @ =0x00008452
	adds r1, r6, r0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	adds r3, #4
	adds r1, r6, r3
	strh r0, [r1]
	ldr r1, _080257F8 @ =0x000067AC
	adds r0, r6, r1
	ldrh r1, [r0]
	adds r3, #4
	adds r0, r6, r3
	strh r1, [r0]
	ldr r0, [r4]
	ldr r0, [r0]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x17
	ldr r1, _080257FC @ =0x0000845C
	adds r1, r1, r6
	mov sb, r1
	strh r0, [r1]
	movs r3, #9
	rsbs r3, r3, #0
	adds r5, r3, #0
	ands r5, r2
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r5, r0
	mov r2, r8
	strb r5, [r2]
	ldr r0, _08025800 @ =0x0000845E
	adds r1, r6, r0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _08025804 @ =0x00008484
	adds r0, r6, r1
	str r7, [r0]
	ldr r2, _08025808 @ =0x00008490
	adds r1, r6, r2
	movs r0, #1
	str r0, [r1]
	ldr r0, _0802580C @ =0x00008496
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r3
	strb r0, [r2]
	ldrb r1, [r4, #0xa]
	movs r2, #2
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0
	beq _08025810
	movs r0, #0x17
	mov r1, sb
	strh r0, [r1]
	movs r0, #9
	bl sub_080260C8
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _080257DA
	b _080258FE
_080257DA:
	movs r0, #1
	bl sub_08025F98
	b _080258FE
	.align 2, 0
_080257E4: .4byte gGame
_080257E8: .4byte 0x00008494
_080257EC: .4byte 0x00008450
_080257F0: .4byte 0x0000FFFF
_080257F4: .4byte 0x00008452
_080257F8: .4byte 0x000067AC
_080257FC: .4byte 0x0000845C
_08025800: .4byte 0x0000845E
_08025804: .4byte 0x00008484
_08025808: .4byte 0x00008490
_0802580C: .4byte 0x00008496
_08025810:
	adds r0, r5, #0
	orrs r0, r2
	mov r3, r8
	strb r0, [r3]
	ldrb r0, [r4, #0xa]
	orrs r0, r2
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #0xa]
	strh r7, [r4, #8]
	ldr r0, [r4]
	ldrh r0, [r0, #0xc]
	movs r1, #1
	bl sub_080029F8
	ldr r0, [r4]
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	ldr r2, _08025878 @ =0x0000846E
	adds r1, r6, r2
	strb r0, [r1]
	ldr r0, [r4]
	ldrh r1, [r0, #8]
	ldr r3, _0802587C @ =0x00008466
	adds r0, r6, r3
	strh r1, [r0]
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x19
	subs r2, #6
	adds r1, r6, r2
	strh r0, [r1]
	adds r3, #4
	adds r0, r6, r3
	strh r7, [r0]
	ldr r0, [r4]
	ldrh r1, [r0, #0xa]
	adds r2, #4
	adds r0, r6, r2
	strh r1, [r0]
	ldr r5, _08025880 @ =0x0000FFFF
	ldr r0, [r4]
	ldrh r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _08025884
	cmp r0, #1
	beq _080258B2
	b _080258CE
	.align 2, 0
_08025878: .4byte 0x0000846E
_0802587C: .4byte 0x00008466
_08025880: .4byte 0x0000FFFF
_08025884:
	movs r0, #0xf2
	bl play_sound
	movs r5, #0xf2
	ldr r2, [r4]
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bgt _080258AA
	cmp r0, #0
	blt _080258AA
	ldrh r1, [r2, #8]
	ldrh r2, [r2, #2]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x19
	adds r0, r4, #0
	bl sub_0802A9B4
_080258AA:
	movs r0, #9
	bl sub_080260C8
	b _080258CE
_080258B2:
	movs r0, #0xf2
	bl play_sound
	movs r5, #0xf2
	ldr r0, [r4]
	ldrh r0, [r0, #0xa]
	bl sub_0802A038
	movs r0, #4
	mov r3, sb
	strh r0, [r3]
	movs r0, #9
	bl sub_080260C8
_080258CE:
	ldr r4, _0802590C @ =gGame
	ldr r1, _08025910 @ =0x00008494
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080258FE
	movs r0, #1
	bl sub_08025F98
	ldr r2, _08025914 @ =0x0000829B
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #6
	bne _080258FE
	lsls r2, r5, #0x10
	asrs r1, r2, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080258FE
	lsrs r0, r2, #0x10
	bl play_sound
_080258FE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802590C: .4byte gGame
_08025910: .4byte 0x00008494
_08025914: .4byte 0x0000829B

	thumb_func_start sub_08025918
sub_08025918: @ 0x08025918
	push {r4, r5, lr}
	ldr r2, _080259A8 @ =gGame
	ldr r0, _080259AC @ =0x00008450
	adds r1, r2, r0
	ldr r0, _080259B0 @ =0x0000FFFF
	strh r0, [r1]
	ldr r3, _080259B4 @ =0x00008452
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r0, _080259B8 @ =0x00008454
	adds r1, r2, r0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _080259BC @ =0x000067AC
	adds r0, r2, r1
	ldrh r1, [r0]
	adds r3, #6
	adds r0, r2, r3
	movs r5, #0
	strh r1, [r0]
	ldr r0, _080259C0 @ =0x0000845C
	adds r1, r2, r0
	movs r0, #6
	strh r0, [r1]
	ldr r1, _080259C4 @ =0x00008494
	adds r3, r2, r1
	ldrb r1, [r3]
	movs r4, #9
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3]
	ldr r3, _080259C8 @ =0x0000845E
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _080259CC @ =0x00008484
	adds r0, r2, r1
	str r5, [r0]
	adds r3, #0x32
	adds r1, r2, r3
	movs r0, #1
	str r0, [r1]
	ldr r0, _080259D0 @ =0x00008496
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r4
	strb r0, [r2]
	movs r0, #9
	bl sub_080260C8
	movs r0, #0
	bl sub_08025F98
	movs r1, #2
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08033948
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080259A8: .4byte gGame
_080259AC: .4byte 0x00008450
_080259B0: .4byte 0x0000FFFF
_080259B4: .4byte 0x00008452
_080259B8: .4byte 0x00008454
_080259BC: .4byte 0x000067AC
_080259C0: .4byte 0x0000845C
_080259C4: .4byte 0x00008494
_080259C8: .4byte 0x0000845E
_080259CC: .4byte 0x00008484
_080259D0: .4byte 0x00008496

	thumb_func_start sub_080259D4
sub_080259D4: @ 0x080259D4
	push {r4, lr}
	ldr r2, _08025A54 @ =gGame
	ldr r0, _08025A58 @ =0x00008450
	adds r1, r2, r0
	ldr r0, _08025A5C @ =0x0000FFFF
	strh r0, [r1]
	ldr r3, _08025A60 @ =0x00008452
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r0, _08025A64 @ =0x00008454
	adds r1, r2, r0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _08025A68 @ =0x000067AC
	adds r0, r2, r1
	ldrh r1, [r0]
	adds r3, #6
	adds r0, r2, r3
	movs r4, #0
	strh r1, [r0]
	ldr r0, _08025A6C @ =0x0000845C
	adds r1, r2, r0
	movs r0, #0xd
	strh r0, [r1]
	ldr r1, _08025A70 @ =0x00008494
	adds r3, r2, r1
	ldrb r1, [r3]
	subs r0, #0x16
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3]
	ldr r3, _08025A74 @ =0x0000845E
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _08025A78 @ =0x00008484
	adds r0, r2, r1
	str r4, [r0]
	adds r3, #0x32
	adds r1, r2, r3
	movs r0, #1
	str r0, [r1]
	ldr r0, _08025A7C @ =0x00008496
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	movs r0, #9
	bl sub_080260C8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025A54: .4byte gGame
_08025A58: .4byte 0x00008450
_08025A5C: .4byte 0x0000FFFF
_08025A60: .4byte 0x00008452
_08025A64: .4byte 0x00008454
_08025A68: .4byte 0x000067AC
_08025A6C: .4byte 0x0000845C
_08025A70: .4byte 0x00008494
_08025A74: .4byte 0x0000845E
_08025A78: .4byte 0x00008484
_08025A7C: .4byte 0x00008496

	thumb_func_start sub_08025A80
sub_08025A80: @ 0x08025A80
	push {r4, r5, lr}
	ldr r2, _08025B10 @ =gGame
	ldr r0, _08025B14 @ =0x00008450
	adds r1, r2, r0
	ldr r0, _08025B18 @ =0x0000FFFF
	strh r0, [r1]
	ldr r3, _08025B1C @ =0x00008452
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r0, _08025B20 @ =0x00008454
	adds r1, r2, r0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _08025B24 @ =0x000067AC
	adds r0, r2, r1
	ldrh r1, [r0]
	adds r3, #6
	adds r0, r2, r3
	movs r5, #0
	strh r1, [r0]
	ldr r0, _08025B28 @ =0x0000845C
	adds r1, r2, r0
	movs r0, #0xf
	strh r0, [r1]
	ldr r1, _08025B2C @ =0x00008494
	adds r3, r2, r1
	ldrb r1, [r3]
	movs r4, #9
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3]
	ldr r3, _08025B30 @ =0x0000845E
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _08025B34 @ =0x00008484
	adds r0, r2, r1
	str r5, [r0]
	adds r3, #0x32
	adds r1, r2, r3
	movs r0, #1
	str r0, [r1]
	ldr r0, _08025B38 @ =0x00008496
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r4
	strb r0, [r2]
	movs r0, #9
	bl sub_080260C8
	movs r0, #0
	bl sub_08025F98
	movs r1, #2
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08033948
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08025B10: .4byte gGame
_08025B14: .4byte 0x00008450
_08025B18: .4byte 0x0000FFFF
_08025B1C: .4byte 0x00008452
_08025B20: .4byte 0x00008454
_08025B24: .4byte 0x000067AC
_08025B28: .4byte 0x0000845C
_08025B2C: .4byte 0x00008494
_08025B30: .4byte 0x0000845E
_08025B34: .4byte 0x00008484
_08025B38: .4byte 0x00008496

	thumb_func_start sub_08025B3C
sub_08025B3C: @ 0x08025B3C
	push {r4, r5, lr}
	ldr r2, _08025BCC @ =gGame
	ldr r0, _08025BD0 @ =0x00008450
	adds r1, r2, r0
	ldr r0, _08025BD4 @ =0x0000FFFF
	strh r0, [r1]
	ldr r3, _08025BD8 @ =0x00008452
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r0, _08025BDC @ =0x00008454
	adds r1, r2, r0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _08025BE0 @ =0x000067AC
	adds r0, r2, r1
	ldrh r1, [r0]
	adds r3, #6
	adds r0, r2, r3
	movs r5, #0
	strh r1, [r0]
	ldr r0, _08025BE4 @ =0x0000845C
	adds r1, r2, r0
	movs r0, #0x10
	strh r0, [r1]
	ldr r1, _08025BE8 @ =0x00008494
	adds r3, r2, r1
	ldrb r1, [r3]
	movs r4, #9
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3]
	ldr r3, _08025BEC @ =0x0000845E
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _08025BF0 @ =0x00008484
	adds r0, r2, r1
	str r5, [r0]
	adds r3, #0x32
	adds r1, r2, r3
	movs r0, #1
	str r0, [r1]
	ldr r0, _08025BF4 @ =0x00008496
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r4
	strb r0, [r2]
	movs r0, #9
	bl sub_080260C8
	movs r0, #0
	bl sub_08025F98
	movs r1, #2
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08033948
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08025BCC: .4byte gGame
_08025BD0: .4byte 0x00008450
_08025BD4: .4byte 0x0000FFFF
_08025BD8: .4byte 0x00008452
_08025BDC: .4byte 0x00008454
_08025BE0: .4byte 0x000067AC
_08025BE4: .4byte 0x0000845C
_08025BE8: .4byte 0x00008494
_08025BEC: .4byte 0x0000845E
_08025BF0: .4byte 0x00008484
_08025BF4: .4byte 0x00008496

	thumb_func_start sub_08025BF8
sub_08025BF8: @ 0x08025BF8
	push {r4, r5, lr}
	ldr r2, _08025C88 @ =gGame
	adds r0, #0x85
	ldrb r1, [r0]
	ldr r3, _08025C8C @ =0x00008450
	adds r0, r2, r3
	movs r5, #0
	strh r1, [r0]
	ldr r0, _08025C90 @ =0x00008452
	adds r1, r2, r0
	ldr r0, _08025C94 @ =0x0000FFFF
	strh r0, [r1]
	adds r3, #4
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _08025C98 @ =0x000067AC
	adds r0, r2, r1
	ldrh r1, [r0]
	adds r3, #4
	adds r0, r2, r3
	strh r1, [r0]
	ldr r0, _08025C9C @ =0x0000845C
	adds r1, r2, r0
	movs r0, #0x12
	strh r0, [r1]
	ldr r1, _08025CA0 @ =0x00008494
	adds r3, r2, r1
	ldrb r1, [r3]
	movs r4, #9
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3]
	ldr r3, _08025CA4 @ =0x0000845E
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _08025CA8 @ =0x00008484
	adds r0, r2, r1
	str r5, [r0]
	adds r3, #0x32
	adds r1, r2, r3
	movs r0, #1
	str r0, [r1]
	ldr r0, _08025CAC @ =0x00008496
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r4
	strb r0, [r2]
	movs r0, #9
	bl sub_080260C8
	movs r0, #0
	bl sub_08025F98
	movs r1, #2
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08033948
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08025C88: .4byte gGame
_08025C8C: .4byte 0x00008450
_08025C90: .4byte 0x00008452
_08025C94: .4byte 0x0000FFFF
_08025C98: .4byte 0x000067AC
_08025C9C: .4byte 0x0000845C
_08025CA0: .4byte 0x00008494
_08025CA4: .4byte 0x0000845E
_08025CA8: .4byte 0x00008484
_08025CAC: .4byte 0x00008496

	thumb_func_start sub_08025CB0
sub_08025CB0: @ 0x08025CB0
	push {r4, r5, lr}
	ldr r2, _08025D38 @ =gGame
	ldr r0, _08025D3C @ =0x00008450
	adds r1, r2, r0
	ldr r0, _08025D40 @ =0x0000FFFF
	strh r0, [r1]
	ldr r3, _08025D44 @ =0x00008452
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r0, _08025D48 @ =0x00008454
	adds r1, r2, r0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _08025D4C @ =0x000067AC
	adds r0, r2, r1
	ldrh r1, [r0]
	adds r3, #6
	adds r0, r2, r3
	movs r5, #0
	strh r1, [r0]
	ldr r0, _08025D50 @ =0x0000845C
	adds r1, r2, r0
	movs r0, #0x13
	strh r0, [r1]
	ldr r1, _08025D54 @ =0x00008494
	adds r3, r2, r1
	ldrb r1, [r3]
	movs r4, #9
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3]
	ldr r3, _08025D58 @ =0x0000845E
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _08025D5C @ =0x00008484
	adds r0, r2, r1
	str r5, [r0]
	adds r3, #0x32
	adds r1, r2, r3
	movs r0, #1
	str r0, [r1]
	ldr r0, _08025D60 @ =0x00008496
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r4
	strb r0, [r2]
	movs r0, #9
	bl sub_080260C8
	movs r0, #1
	bl sub_08025F98
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08025D38: .4byte gGame
_08025D3C: .4byte 0x00008450
_08025D40: .4byte 0x0000FFFF
_08025D44: .4byte 0x00008452
_08025D48: .4byte 0x00008454
_08025D4C: .4byte 0x000067AC
_08025D50: .4byte 0x0000845C
_08025D54: .4byte 0x00008494
_08025D58: .4byte 0x0000845E
_08025D5C: .4byte 0x00008484
_08025D60: .4byte 0x00008496

	thumb_func_start sub_08025D64
sub_08025D64: @ 0x08025D64
	push {r4, lr}
	ldr r2, _08025DF4 @ =gGame
	ldr r0, _08025DF8 @ =0x00008450
	adds r1, r2, r0
	ldr r0, _08025DFC @ =0x0000FFFF
	strh r0, [r1]
	ldr r3, _08025E00 @ =0x00008452
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r0, _08025E04 @ =0x00008454
	adds r1, r2, r0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _08025E08 @ =0x000067AC
	adds r0, r2, r1
	ldrh r1, [r0]
	adds r3, #6
	adds r0, r2, r3
	movs r4, #0
	strh r1, [r0]
	ldr r0, _08025E0C @ =0x0000845C
	adds r1, r2, r0
	movs r0, #0x14
	strh r0, [r1]
	ldr r1, _08025E10 @ =0x00008494
	adds r3, r2, r1
	ldrb r1, [r3]
	subs r0, #0x1d
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3]
	ldr r3, _08025E14 @ =0x0000845E
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _08025E18 @ =0x00008484
	adds r0, r2, r1
	str r4, [r0]
	adds r3, #0x32
	adds r1, r2, r3
	movs r0, #1
	str r0, [r1]
	ldr r0, _08025E1C @ =0x00008496
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	movs r0, #9
	bl sub_080260C8
	movs r0, #0
	bl sub_08025F98
	movs r1, #2
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08033948
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025DF4: .4byte gGame
_08025DF8: .4byte 0x00008450
_08025DFC: .4byte 0x0000FFFF
_08025E00: .4byte 0x00008452
_08025E04: .4byte 0x00008454
_08025E08: .4byte 0x000067AC
_08025E0C: .4byte 0x0000845C
_08025E10: .4byte 0x00008494
_08025E14: .4byte 0x0000845E
_08025E18: .4byte 0x00008484
_08025E1C: .4byte 0x00008496

	thumb_func_start sub_08025E20
sub_08025E20: @ 0x08025E20
	push {r4, r5, lr}
	ldr r2, _08025EB0 @ =gGame
	adds r0, #0x85
	ldrb r1, [r0]
	ldr r3, _08025EB4 @ =0x00008450
	adds r0, r2, r3
	movs r5, #0
	strh r1, [r0]
	ldr r0, _08025EB8 @ =0x00008452
	adds r1, r2, r0
	ldr r0, _08025EBC @ =0x0000FFFF
	strh r0, [r1]
	adds r3, #4
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _08025EC0 @ =0x000067AC
	adds r0, r2, r1
	ldrh r1, [r0]
	adds r3, #4
	adds r0, r2, r3
	strh r1, [r0]
	ldr r0, _08025EC4 @ =0x0000845C
	adds r1, r2, r0
	movs r0, #0x15
	strh r0, [r1]
	ldr r1, _08025EC8 @ =0x00008494
	adds r3, r2, r1
	ldrb r1, [r3]
	movs r4, #9
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3]
	ldr r3, _08025ECC @ =0x0000845E
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _08025ED0 @ =0x00008484
	adds r0, r2, r1
	str r5, [r0]
	adds r3, #0x32
	adds r1, r2, r3
	movs r0, #1
	str r0, [r1]
	ldr r0, _08025ED4 @ =0x00008496
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r4
	strb r0, [r2]
	movs r0, #9
	bl sub_080260C8
	movs r0, #0
	bl sub_08025F98
	movs r1, #2
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08033948
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08025EB0: .4byte gGame
_08025EB4: .4byte 0x00008450
_08025EB8: .4byte 0x00008452
_08025EBC: .4byte 0x0000FFFF
_08025EC0: .4byte 0x000067AC
_08025EC4: .4byte 0x0000845C
_08025EC8: .4byte 0x00008494
_08025ECC: .4byte 0x0000845E
_08025ED0: .4byte 0x00008484
_08025ED4: .4byte 0x00008496

	thumb_func_start sub_08025ED8
sub_08025ED8: @ 0x08025ED8
	push {r4, r5, lr}
	ldr r2, _08025F6C @ =gGame
	ldr r0, _08025F70 @ =0x00008450
	adds r1, r2, r0
	ldr r0, _08025F74 @ =0x0000FFFF
	strh r0, [r1]
	ldr r3, _08025F78 @ =0x00008452
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r0, _08025F7C @ =0x00008454
	adds r1, r2, r0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _08025F80 @ =0x000067AC
	adds r0, r2, r1
	ldrh r1, [r0]
	adds r3, #6
	adds r0, r2, r3
	movs r5, #0
	strh r1, [r0]
	ldr r0, _08025F84 @ =0x0000845C
	adds r1, r2, r0
	movs r0, #0x16
	strh r0, [r1]
	ldr r1, _08025F88 @ =0x00008494
	adds r3, r2, r1
	ldrb r1, [r3]
	movs r4, #9
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3]
	ldr r3, _08025F8C @ =0x0000845E
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r1, _08025F90 @ =0x00008484
	adds r0, r2, r1
	str r5, [r0]
	adds r3, #0x32
	adds r1, r2, r3
	movs r0, #1
	str r0, [r1]
	ldr r0, _08025F94 @ =0x00008496
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r4
	strb r0, [r2]
	movs r0, #9
	bl sub_080260C8
	movs r0, #0
	bl sub_08025F98
	movs r1, #2
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08033948
	bl sub_0800272C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08025F6C: .4byte gGame
_08025F70: .4byte 0x00008450
_08025F74: .4byte 0x0000FFFF
_08025F78: .4byte 0x00008452
_08025F7C: .4byte 0x00008454
_08025F80: .4byte 0x000067AC
_08025F84: .4byte 0x0000845C
_08025F88: .4byte 0x00008494
_08025F8C: .4byte 0x0000845E
_08025F90: .4byte 0x00008484
_08025F94: .4byte 0x00008496

	thumb_func_start sub_08025F98
sub_08025F98: @ 0x08025F98
	push {r4, r5, lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08025FB2
	movs r1, #1
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08033948
_08025FB2:
	movs r0, #0
	bl get_obj_direct
	adds r5, r0, #0
	ldr r0, _08025FD8 @ =gGame
	ldr r1, _08025FDC @ =0x0000829B
	adds r2, r0, r1
	ldrb r1, [r2]
	ldr r3, _08025FE0 @ =0x0000829C
	adds r0, r0, r3
	strb r1, [r0]
	ldrb r0, [r2]
	cmp r0, #3
	beq _08025FF0
	cmp r0, #3
	bgt _08025FE4
	cmp r0, #0
	beq _08025FEA
	b _08026000
	.align 2, 0
_08025FD8: .4byte gGame
_08025FDC: .4byte 0x0000829B
_08025FE0: .4byte 0x0000829C
_08025FE4:
	cmp r0, #6
	beq _08025FFA
	b _08026000
_08025FEA:
	bl sub_08033C14
	b _08026000
_08025FF0:
	movs r0, #0
	strb r0, [r2]
	bl sub_08033CA0
	b _08026000
_08025FFA:
	movs r0, #5
	bl sub_08003BA8
_08026000:
	ldr r4, _080260A0 @ =gGame
	ldr r1, _080260A4 @ =0x000067AC
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #0xe8
	bne _08026012
	movs r0, #9
	bl sub_08003BA8
_08026012:
	movs r0, #8
	movs r1, #4
	bl sub_08003B30
	adds r2, r5, #0
	adds r2, #0xca
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0xa2
	movs r0, #0
	strh r0, [r1]
	ldr r5, _080260A8 @ =gSomeBlend
	ldr r3, _080260AC @ =0x000035BA
	adds r0, r5, r3
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08026044
	bl sub_08037958
_08026044:
	ldr r1, _080260B0 @ =0x0000845A
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #5
	beq _08026052
	cmp r0, #9
	bne _08026098
_08026052:
	ldrb r1, [r4, #1]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _08026098
	ldr r3, _080260B4 @ =0x00008496
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt _08026098
	ldr r0, _080260B8 @ =gUnknown_080C1FF0
	bl sub_0800A240
	ldr r1, _080260BC @ =0x00005778
	adds r0, r5, r1
	movs r1, #0
	bl sub_08009E38
	movs r0, #1
	bl sub_0800ACA0
	ldr r3, _080260C0 @ =0x000121BB
	adds r2, r5, r3
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _080260C4 @ =0x000121C4
	adds r1, r5, r0
	movs r0, #0x50
	strb r0, [r1]
_08026098:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080260A0: .4byte gGame
_080260A4: .4byte 0x000067AC
_080260A8: .4byte gSomeBlend
_080260AC: .4byte 0x000035BA
_080260B0: .4byte 0x0000845A
_080260B4: .4byte 0x00008496
_080260B8: .4byte gUnknown_080C1FF0
_080260BC: .4byte 0x00005778
_080260C0: .4byte 0x000121BB
_080260C4: .4byte 0x000121C4

	thumb_func_start sub_080260C8
sub_080260C8: @ 0x080260C8
	push {r4, r5, lr}
	ldr r3, _080260FC @ =gGame
	movs r2, #1
	movs r1, #1
	strb r1, [r3]
	ldr r1, _08026100 @ =0x00008494
	adds r4, r3, r1
	ldrb r1, [r4]
	orrs r1, r2
	ldr r5, _08026104 @ =0x0000845A
	adds r2, r3, r5
	strh r0, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	strb r1, [r4]
	ldr r0, _08026108 @ =0x00008496
	adds r3, r3, r0
	ldrb r1, [r3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080260FC: .4byte gGame
_08026100: .4byte 0x00008494
_08026104: .4byte 0x0000845A
_08026108: .4byte 0x00008496

	thumb_func_start sub_0802610C
sub_0802610C: @ 0x0802610C
	push {r4, r5, lr}
	ldr r3, _080261B4 @ =gGame
	strb r0, [r3]
	ldr r0, _080261B8 @ =0x00008494
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _080261BC @ =0x00008496
	adds r2, r3, r1
	ldrb r1, [r2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r2, _080261C0 @ =0x0000848C
	adds r5, r3, r2
	movs r0, #0xc
	strh r0, [r5]
	ldr r1, _080261C4 @ =0x00008484
	adds r0, r3, r1
	ldr r4, [r0]
	cmp r4, #0
	bne _08026188
	subs r2, #0x32
	adds r0, r3, r2
	ldrh r0, [r0]
	cmp r0, #5
	bne _08026188
	ldr r0, _080261C8 @ =0x00008450
	adds r2, r3, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08026188
	ldrh r0, [r2]
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldr r0, [r0]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	subs r0, #4
	cmp r0, #1
	bhi _08026188
	adds r0, r1, #0
	adds r0, #0xbe
	ldrh r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	subs r0, #4
	cmp r0, #1
	bhi _08026188
	strh r4, [r5]
_08026188:
	ldr r1, _080261B4 @ =gGame
	ldr r2, _080261CC @ =0x0000845A
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #9
	bne _080261A2
	adds r2, #2
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #0x16
	bne _080261A2
	bl sub_0800272C
_080261A2:
	bl sub_08005C38
	movs r0, #0xf7
	lsls r0, r0, #2
	bl sub_080038A4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080261B4: .4byte gGame
_080261B8: .4byte 0x00008494
_080261BC: .4byte 0x00008496
_080261C0: .4byte 0x0000848C
_080261C4: .4byte 0x00008484
_080261C8: .4byte 0x00008450
_080261CC: .4byte 0x0000845A

	thumb_func_start sub_080261D0
sub_080261D0: @ 0x080261D0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, [sp, #0x20]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r0, #0
	bl get_obj_direct
	adds r2, r0, #0
	movs r0, #0xca
	adds r0, r0, r6
	mov ip, r0
	ldrb r4, [r0]
	lsrs r3, r4, #7
	cmp r3, #0
	bne _080262DA
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0802621E
	adds r0, r2, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	mov r8, r0
_0802621E:
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	bne _0802622C
	movs r0, #0x20
	mov sb, r0
_0802622C:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	bne _08026236
	movs r5, #0x20
_08026236:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	bne _08026240
	movs r7, #0x1c
_08026240:
	ldr r1, _080262E8 @ =gGame
	ldr r2, _080262EC @ =0x000082B7
	adds r1, r1, r2
	ldrb r0, [r1]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1]
	movs r1, #0x80
	adds r0, r4, #0
	orrs r0, r1
	mov r2, ip
	strb r0, [r2]
	adds r4, r6, #0
	adds r4, #0xbc
	ldrb r0, [r4]
	orrs r0, r1
	strb r0, [r4]
	adds r2, r6, #0
	adds r2, #0xbf
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r2, #9
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0xa2
	strh r3, [r0]
	adds r0, #0xc
	strh r5, [r0]
	adds r0, #2
	strh r3, [r0]
	adds r0, #2
	strh r7, [r0]
	mov r0, r8
	mov r5, sp
	mov r2, sp
	adds r2, #2
	mov r1, sp
	bl sub_080270A0
	ldrh r2, [r6]
	ldrh r3, [r6, #2]
	strh r2, [r6, #0xc]
	strh r3, [r6, #0xe]
	mov r7, sb
	lsls r1, r7, #0x10
	asrs r1, r1, #0xc
	mov r0, sp
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r0, r1, r0
	adds r2, r2, r0
	strh r2, [r6, #8]
	movs r2, #2
	ldrsh r0, [r5, r2]
	muls r0, r1, r0
	adds r3, r3, r0
	strh r3, [r6, #0xa]
	adds r0, r6, #0
	adds r0, #0x85
	ldrb r0, [r0]
	ldrb r2, [r4]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #3
	bl sub_080332AC
_080262DA:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080262E8: .4byte gGame
_080262EC: .4byte 0x000082B7

	thumb_func_start sub_080262F0
sub_080262F0: @ 0x080262F0
	ldr r0, _08026304 @ =gSomeBlend
	ldr r1, _08026308 @ =0x0001ED10
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_08026304: .4byte gSomeBlend
_08026308: .4byte 0x0001ED10

	thumb_func_start sub_0802630C
sub_0802630C: @ 0x0802630C
	push {r4, lr}
	sub sp, #8
	ldr r2, _0802636C @ =gSomeBlend
	ldr r1, _08026370 @ =0x00004B19
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08026384
	ldr r1, _08026374 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	str r0, [sp]
	ldr r4, _08026378 @ =0x00004ACE
	adds r3, r2, r4
	movs r1, #0
	ldrsh r0, [r3, r1]
	lsls r0, r0, #4
	adds r0, #0x60
	mov r1, sp
	strh r0, [r1, #2]
	movs r0, #0xf0
	strh r0, [r1, #4]
	ldr r4, _0802637C @ =0x00011C89
	adds r0, r2, r4
	ldrb r0, [r0]
	adds r0, #0x10
	strh r0, [r1, #6]
	ldr r1, _08026380 @ =0x00011D16
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	movs r2, #1
	cmp r0, #0
	beq _08026358
	movs r2, #0
_08026358:
	movs r4, #0
	ldrsh r1, [r3, r4]
	lsls r1, r1, #1
	adds r1, r2, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sp
	bl sub_0800A2CC
	b _0802638A
	.align 2, 0
_0802636C: .4byte gSomeBlend
_08026370: .4byte 0x00004B19
_08026374: .4byte 0xFFFF0000
_08026378: .4byte 0x00004ACE
_0802637C: .4byte 0x00011C89
_08026380: .4byte 0x00011D16
_08026384:
	ldr r0, _0802639C @ =gUnknown_080C1FF0
	bl sub_0800A240
_0802638A:
	ldr r0, _080263A0 @ =gUnknown_0201B7A0
	movs r1, #0
	bl sub_08009E38
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802639C: .4byte gUnknown_080C1FF0
_080263A0: .4byte gUnknown_0201B7A0

	thumb_func_start sub_080263A4
sub_080263A4: @ 0x080263A4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	strh r1, [r0]
	ldr r2, [r4]
	lsls r0, r2, #0x14
	lsrs r0, r0, #0x1e
	cmp r0, #4
	bne _080263BC
	movs r0, #1
	b _08026468
_080263BC:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _080263CE
	ldrb r1, [r4]
	lsrs r0, r2, #0x1c
	lsls r0, r0, #8
	orrs r1, r0
	b _080263D0
_080263CE:
	ldrb r1, [r4]
_080263D0:
	movs r2, #0
	ldr r0, [r4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _08026400
	cmp r0, #1
	bgt _080263E6
	cmp r0, #0
	beq _080263F0
	b _08026412
_080263E6:
	cmp r0, #2
	beq _08026408
	cmp r0, #3
	beq _080263F8
	b _08026412
_080263F0:
	adds r0, r1, #0
	bl get_flag
	b _0802640E
_080263F8:
	adds r0, r1, #0
	bl sub_08002998
	b _0802640E
_08026400:
	adds r0, r1, #0
	bl get_progression_flag
	b _0802640E
_08026408:
	adds r0, r1, #0
	bl sub_080029D4
_0802640E:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08026412:
	ldr r1, [r4]
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _0802643C
	cmp r0, #1
	bgt _08026426
	cmp r0, #0
	beq _08026430
	b _08026466
_08026426:
	cmp r0, #2
	beq _0802644A
	cmp r0, #3
	beq _08026456
	b _08026466
_08026430:
	movs r3, #0
	lsls r0, r1, #4
	lsrs r0, r0, #0x10
	cmp r2, r0
	bne _08026462
	b _08026460
_0802643C:
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	eors r1, r2
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	b _08026468
_0802644A:
	movs r3, #0
	lsls r0, r1, #4
	lsrs r0, r0, #0x10
	cmp r2, r0
	ble _08026462
	b _08026460
_08026456:
	movs r3, #0
	lsls r0, r1, #4
	lsrs r0, r0, #0x10
	cmp r2, r0
	bge _08026462
_08026460:
	movs r3, #1
_08026462:
	adds r0, r3, #0
	b _08026468
_08026466:
	movs r0, #0
_08026468:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08026470
sub_08026470: @ 0x08026470
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_080030A4
	movs r1, #0x64
	bl __umodsi3
	adds r2, r0, #0
	cmp r4, #7
	bhi _080264FE
	lsls r0, r4, #2
	ldr r1, _08026490 @ =_08026494
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08026490: .4byte _08026494
_08026494: @ jump table
	.4byte _080264B4 @ case 0
	.4byte _080264B8 @ case 1
	.4byte _080264C2 @ case 2
	.4byte _080264CC @ case 3
	.4byte _080264D6 @ case 4
	.4byte _080264F4 @ case 5
	.4byte _080264E0 @ case 6
	.4byte _080264EA @ case 7
_080264B4:
	movs r0, #1
	b _08026500
_080264B8:
	movs r0, #0
	cmp r2, #0x4f
	bhi _08026500
	movs r0, #1
	b _08026500
_080264C2:
	movs r0, #0
	cmp r2, #0x3b
	bhi _08026500
	movs r0, #1
	b _08026500
_080264CC:
	movs r0, #0
	cmp r2, #0x27
	bhi _08026500
	movs r0, #1
	b _08026500
_080264D6:
	movs r0, #0
	cmp r2, #0x13
	bhi _08026500
	movs r0, #1
	b _08026500
_080264E0:
	movs r0, #0
	cmp r2, #9
	bhi _08026500
	movs r0, #1
	b _08026500
_080264EA:
	movs r0, #0
	cmp r2, #4
	bhi _08026500
	movs r0, #1
	b _08026500
_080264F4:
	movs r0, #0
	cmp r2, #0
	bne _08026500
	movs r0, #1
	b _08026500
_080264FE:
	movs r0, #0
_08026500:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08026508
sub_08026508: @ 0x08026508
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, r4, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r0, #0
	bl get_obj_direct
	ldr r1, _08026538 @ =gEncounter
	movs r2, #0
	strb r2, [r1, #8]
	adds r0, r1, #0
	adds r0, #0x66
	strb r2, [r0]
	adds r3, r1, #0
	adds r3, #0x51
	ldrb r0, [r3]
	cmp r0, #0
	beq _0802653C
	strb r2, [r3]
	strh r4, [r1, #0xa]
	b _080265AA
	.align 2, 0
_08026538: .4byte gEncounter
_0802653C:
	strb r0, [r1, #6]
	cmp r4, #0
	bne _08026564
	strb r4, [r1]
	strh r4, [r1, #0xa]
	ldr r0, _08026558 @ =gGame
	ldr r2, _0802655C @ =0x00008494
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _08026560
	movs r0, #1
	b _0802656C
	.align 2, 0
_08026558: .4byte gGame
_0802655C: .4byte 0x00008494
_08026560:
	movs r0, #0
	b _0802656C
_08026564:
	movs r0, #1
	strb r0, [r1]
	strh r5, [r1, #0xa]
	movs r0, #0xff
_0802656C:
	strb r0, [r1, #7]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	bl sub_0802665C
	ldr r0, _080265F0 @ =gEncounter
	ldrb r0, [r0]
	cmp r0, #0
	bne _080265AA
	movs r1, #2
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08033948
	ldr r2, _080265F4 @ =gGame
	movs r3, #8
	movs r0, #8
	strb r0, [r2]
	ldr r0, _080265F8 @ =0x0000595C
	adds r1, r2, r0
	movs r0, #5
	strb r0, [r1]
	ldr r1, _080265FC @ =0x000067C4
	adds r2, r2, r1
	ldrb r0, [r2]
	orrs r0, r3
	movs r1, #0x10
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
_080265AA:
	bl sub_08026724
	ldr r2, _080265F4 @ =gGame
	ldr r0, _08026600 @ =0x00008495
	adds r3, r2, r0
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	ldr r1, _08026604 @ =0x000067AC
	adds r0, r2, r1
	ldrh r1, [r0]
	ldr r3, _08026608 @ =0x00008460
	adds r0, r2, r3
	strh r1, [r0]
	ldr r0, _0802660C @ =0x000083C0
	adds r2, r2, r0
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r2]
	mov r0, sp
	ldrh r0, [r0, #2]
	strh r0, [r2, #2]
	movs r0, #5
	bl sub_08003BA8
	movs r0, #1
	bl sub_0803C4DC
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080265F0: .4byte gEncounter
_080265F4: .4byte gGame
_080265F8: .4byte 0x0000595C
_080265FC: .4byte 0x000067C4
_08026600: .4byte 0x00008495
_08026604: .4byte 0x000067AC
_08026608: .4byte 0x00008460
_0802660C: .4byte 0x000083C0

	thumb_func_start sub_08026610
sub_08026610: @ 0x08026610
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r1, _08026640 @ =gEncounter
	adds r2, r1, #0
	adds r2, #0x51
	movs r0, #0
	movs r3, #1
	strb r3, [r2]
	strb r3, [r1]
	strb r3, [r1, #6]
	adds r2, #0x15
	strb r0, [r2]
	ldr r0, _08026644 @ =gGame
	ldr r2, _08026648 @ =0x00008494
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	cmp r0, #0
	beq _0802664C
	strb r3, [r1, #7]
	b _0802664E
	.align 2, 0
_08026640: .4byte gEncounter
_08026644: .4byte gGame
_08026648: .4byte 0x00008494
_0802664C:
	strb r0, [r1, #7]
_0802664E:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	bl sub_0802665C
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0802665C
sub_0802665C: @ 0x0802665C
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0
	bl get_obj_direct
	ldr r3, _0802669C @ =gEncounter
	adds r1, r0, #0
	adds r1, #0x8b
	ldrb r2, [r1]
	movs r1, #7
	ands r1, r2
	strb r1, [r3, #1]
	movs r2, #1
	strb r2, [r3, #5]
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	strh r1, [r3, #0x34]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	strh r0, [r3, #0x36]
	ldr r0, _080266A0 @ =gGame
	ldr r1, _080266A4 @ =0x0000829B
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _080266A8
	strb r2, [r3, #3]
	b _080266AC
	.align 2, 0
_0802669C: .4byte gEncounter
_080266A0: .4byte gGame
_080266A4: .4byte 0x0000829B
_080266A8:
	movs r0, #0
	strb r0, [r3, #3]
_080266AC:
	lsls r2, r4, #0x10
	asrs r1, r2, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080266F8
	lsrs r0, r2, #0x10
	bl get_obj_direct
	adds r3, r0, #0
	ldr r2, _080266F4 @ =gEncounter
	adds r0, #0x8b
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	strb r0, [r2, #2]
	adds r0, r3, #0
	adds r0, #0x88
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	adds r0, r2, #0
	adds r0, #0x52
	strb r4, [r0]
	adds r1, r2, #0
	adds r1, #0x3d
	movs r0, #1
	strb r0, [r1]
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	strh r0, [r2, #0x38]
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	strh r0, [r2, #0x3a]
	b _08026714
	.align 2, 0
_080266F4: .4byte gEncounter
_080266F8:
	ldr r2, _0802671C @ =gEncounter
	movs r1, #0
	strb r1, [r2, #2]
	ldr r0, _08026720 @ =0x0000FFFF
	strh r0, [r2, #0xc]
	adds r3, r2, #0
	adds r3, #0x52
	movs r0, #0xff
	strb r0, [r3]
	subs r3, #0x15
	movs r0, #1
	strb r0, [r3]
	strh r1, [r2, #0x38]
	strh r1, [r2, #0x3a]
_08026714:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802671C: .4byte gEncounter
_08026720: .4byte 0x0000FFFF

	thumb_func_start sub_08026724
sub_08026724: @ 0x08026724
	push {lr}
	ldr r2, _08026754 @ =gEncounter
	ldrb r0, [r2]
	cmp r0, #0
	bne _08026750
	ldrb r0, [r2, #5]
	cmp r0, #3
	bne _08026750
	ldr r1, [r2, #0xc]
	ldr r0, _08026758 @ =0x01560155
	cmp r1, r0
	bne _08026750
	movs r0, #0x10
	ldrsh r1, [r2, r0]
	ldr r0, _0802675C @ =0x00000157
	cmp r1, r0
	bne _08026750
	movs r0, #1
	strb r0, [r2, #5]
	movs r0, #0xac
	lsls r0, r0, #1
	strh r0, [r2, #0xc]
_08026750:
	pop {r0}
	bx r0
	.align 2, 0
_08026754: .4byte gEncounter
_08026758: .4byte 0x01560155
_0802675C: .4byte 0x00000157

	thumb_func_start sub_08026760
sub_08026760: @ 0x08026760
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r2, _0802679C @ =gGame
	ldrb r1, [r2, #8]
	movs r0, #4
	ands r0, r1
	ldr r4, _080267A0 @ =gEncounter
	cmp r0, #0
	bne _08026780
	movs r0, #3
	strb r0, [r4]
_08026780:
	ldr r0, _080267A4 @ =0x00008456
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080267AC
	ldrh r0, [r2]
	mov sb, r0
	ldr r0, _080267A8 @ =0x0000FFFF
	strh r0, [r2]
	b _080267B0
	.align 2, 0
_0802679C: .4byte gGame
_080267A0: .4byte gEncounter
_080267A4: .4byte 0x00008456
_080267A8: .4byte 0x0000FFFF
_080267AC:
	movs r1, #0
	mov sb, r1
_080267B0:
	adds r5, r4, #0
	adds r5, #0x52
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r0, #0xcc
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _080267D0
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _080267D4
_080267D0:
	movs r0, #0
	b _08026900
_080267D4:
	movs r2, #0
	mov r8, r2
	ldr r0, _08026860 @ =gGame
	ldr r3, _08026864 @ =0x00008370
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r8, r0
	blo _080267E6
	b _080268F2
_080267E6:
	adds r6, r4, #0
	mov sl, r5
_080267EA:
	mov r0, r8
	adds r0, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r4, r0, #0
	adds r0, #0x88
	ldrh r0, [r0]
	bl sub_08036D3C
	adds r7, r0, #0
	adds r0, r4, #0
	adds r0, #0xbc
	ldrh r1, [r0]
	ldr r2, _08026868 @ =0x00000401
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #1
	bne _080268DA
	ldr r0, [r4, #0x34]
	cmp r0, #0
	bne _080268DA
	adds r0, r4, #0
	adds r0, #0xca
	ldrh r1, [r0]
	ldr r3, _0802686C @ =0x00000185
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _080268DA
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r2, [r0]
	mov r3, sl
	movs r1, #0
	ldrsb r1, [r3, r1]
	adds r5, r0, #0
	cmp r2, r1
	beq _080268DA
	adds r0, #0x3f
	ldrh r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080268DA
	mov r0, sb
	adds r1, r2, #0
	bl sub_08036734
	ldrb r1, [r7, #4]
	lsls r1, r1, #4
	cmp r0, r1
	bls _08026870
	ldrb r0, [r5]
	bl sub_08033414
	b _080268DA
	.align 2, 0
_08026860: .4byte gGame
_08026864: .4byte 0x00008370
_08026868: .4byte 0x00000401
_0802686C: .4byte 0x00000185
_08026870:
	adds r0, r4, #0
	adds r0, #0x96
	ldrh r0, [r0]
	movs r3, #5
	cmp r0, #0x3f
	bhi _08026884
	movs r3, #3
	cmp r0, #0x1f
	bls _08026884
	movs r3, #4
_08026884:
	movs r0, #2
	str r0, [sp]
	movs r7, #1
	str r7, [sp, #4]
	adds r0, r4, #0
	movs r1, #0
	ldr r2, [sp, #8]
	bl sub_08036EB8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080268C8
	ldrb r0, [r6, #5]
	add r0, sl
	ldrb r1, [r5]
	strb r1, [r0]
	ldrb r1, [r6, #5]
	lsls r1, r1, #1
	adds r0, r6, #0
	adds r0, #0xc
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x88
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x3d
	ldrb r1, [r6, #5]
	adds r0, r0, r1
	strb r7, [r0]
	ldrb r0, [r6, #5]
	adds r0, #1
	strb r0, [r6, #5]
	b _080268D4
_080268C8:
	adds r0, r4, #0
	bl sub_08035FE4
	ldrb r0, [r5]
	bl sub_08033414
_080268D4:
	ldrb r0, [r6, #5]
	cmp r0, #0x13
	bhi _080268F2
_080268DA:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _08026910 @ =gGame
	ldr r2, _08026914 @ =0x00008370
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r8, r0
	bhs _080268F2
	b _080267EA
_080268F2:
	movs r1, #0
	ldr r0, _08026918 @ =gEncounter
	ldrb r0, [r0, #5]
	cmp r0, #1
	bls _080268FE
	movs r1, #1
_080268FE:
	adds r0, r1, #0
_08026900:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08026910: .4byte gGame
_08026914: .4byte 0x00008370
_08026918: .4byte gEncounter

	thumb_func_start sub_0802691C
sub_0802691C: @ 0x0802691C
	push {lr}
	movs r0, #0
	bl get_obj_direct
	ldr r2, _08026934 @ =gEncounter
	adds r0, #0x8b
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	strb r0, [r2, #1]
	pop {r0}
	bx r0
	.align 2, 0
_08026934: .4byte gEncounter

	thumb_func_start sub_08026938
sub_08026938: @ 0x08026938
	push {r4, r5, lr}
	ldr r4, _0802695C @ =gEncounter
	ldrb r0, [r4]
	cmp r0, #1
	beq _08026958
	cmp r0, #3
	beq _08026958
	ldr r0, _08026960 @ =gGame
	ldr r1, _08026964 @ =0x0000829B
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _08026958
	ldrb r0, [r4, #3]
	cmp r0, #0
	bne _08026968
_08026958:
	movs r0, #1
	b _080269A4
	.align 2, 0
_0802695C: .4byte gEncounter
_08026960: .4byte gGame
_08026964: .4byte 0x0000829B
_08026968:
	bl nullsub_13
	movs r1, #0
	ldrb r2, [r4, #5]
	cmp r1, r2
	bhs _080269A2
	adds r3, r4, #0
	adds r3, #0x52
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	blt _080269A2
	adds r5, r3, #0
	subs r3, #0x15
_08026984:
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #1
	beq _08026958
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	bhs _080269A2
	adds r0, r1, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08026984
_080269A2:
	movs r0, #0
_080269A4:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080269AC
sub_080269AC: @ 0x080269AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	ldr r0, _08026A10 @ =gEncounter
	ldrb r1, [r0, #5]
	mov ip, r0
	cmp r1, #1
	bne _080269C4
	b _08026ADC
_080269C4:
	movs r5, #1
	ldrb r0, [r0, #5]
	cmp r5, r0
	bhs _08026A4A
	mov r6, sp
	mov sl, ip
	movs r1, #0x52
	add r1, sl
	mov sb, r1
_080269D6:
	movs r0, #0
	strh r0, [r6]
	movs r4, #0
	adds r2, r5, #1
	mov r8, r2
	mov r0, sb
	adds r7, r5, r0
_080269E4:
	adds r0, r4, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08026A14
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, #0x85
	ldrb r1, [r1]
	bl sub_08036734
	cmp r0, #0x2f
	bhi _08026A14
	movs r0, #1
	strh r0, [r6]
	b _08026A1E
	.align 2, 0
_08026A10: .4byte gEncounter
_08026A14:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _080269E4
_08026A1E:
	ldrh r0, [r6]
	ldr r1, _08026AEC @ =gEncounter
	mov ip, r1
	cmp r0, #0
	bne _08026A3C
	lsls r1, r5, #1
	mov r0, sl
	adds r0, #0xc
	adds r1, r1, r0
	ldr r0, _08026AF0 @ =0x0000FFFF
	strh r0, [r1]
	mov r2, sb
	adds r1, r5, r2
	movs r0, #0xff
	strb r0, [r1]
_08026A3C:
	mov r7, r8
	lsls r0, r7, #0x10
	lsrs r5, r0, #0x10
	mov r0, ip
	ldrb r0, [r0, #5]
	cmp r5, r0
	blo _080269D6
_08026A4A:
	movs r3, #0
	movs r5, #1
	mov r1, ip
	ldrb r2, [r1, #5]
	cmp r5, r2
	bhs _08026AA0
	movs r7, #0xc
	add r7, ip
	mov r8, r7
	movs r4, #1
	rsbs r4, r4, #0
	add r6, sp, #0x18
_08026A62:
	lsls r0, r5, #1
	add r0, r8
	ldrh r2, [r0]
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, r4
	beq _08026A92
	adds r0, r1, #0
	adds r0, #0x52
	adds r1, r5, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, r4
	beq _08026A92
	lsls r0, r3, #1
	adds r0, r6, r0
	strh r2, [r0]
	add r0, sp, #4
	adds r0, r0, r3
	ldrb r1, [r1]
	strb r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08026A92:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r1, ip
	ldrb r0, [r1, #5]
	cmp r5, r0
	blo _08026A62
_08026AA0:
	movs r5, #0
	adds r1, r3, #1
	mov sb, r1
	cmp r5, r3
	bhs _08026AD6
	ldr r4, _08026AF4 @ =gUnknown_020047EC
	add r7, sp, #0x18
	movs r2, #0x46
	adds r2, r2, r4
	mov r8, r2
	add r6, sp, #4
_08026AB6:
	adds r2, r5, #1
	lsls r1, r2, #1
	adds r1, r1, r4
	lsls r0, r5, #1
	adds r0, r7, r0
	ldrh r0, [r0]
	strh r0, [r1]
	mov r0, r8
	adds r1, r2, r0
	adds r0, r6, r5
	ldrb r0, [r0]
	strb r0, [r1]
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	cmp r5, r3
	blo _08026AB6
_08026AD6:
	mov r2, sb
	mov r1, ip
	strb r2, [r1, #5]
_08026ADC:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026AEC: .4byte gEncounter
_08026AF0: .4byte 0x0000FFFF
_08026AF4: .4byte gUnknown_020047EC

	thumb_func_start sub_08026AF8
sub_08026AF8: @ 0x08026AF8
	push {r4, lr}
	bl sub_08005BFC
	ldr r2, _08026B38 @ =gGame
	ldrb r0, [r2, #2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #2]
	movs r0, #0
	bl sub_080037F0
	movs r0, #0
	bl sub_08003B58
	movs r0, #1
	bl sub_08003B58
	movs r0, #8
	movs r1, #4
	bl sub_08003B30
	ldr r4, _08026B3C @ =gEncounter
	ldrb r0, [r4]
	cmp r0, #1
	bne _08026B44
	ldr r1, _08026B40 @ =gBattleGroupTable
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r2, [r0, #0xa]
	b _08026B96
	.align 2, 0
_08026B38: .4byte gGame
_08026B3C: .4byte gEncounter
_08026B40: .4byte gBattleGroupTable
_08026B44:
	adds r2, r4, #0
	adds r2, #0x52
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08026B94
	adds r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x66
	ldrb r0, [r0]
	cmp r0, #2
	bne _08026B74
	ldr r2, _08026B70 @ =0x00000796
	b _08026B96
	.align 2, 0
_08026B70: .4byte 0x00000796
_08026B74:
	ldr r2, _08026B8C @ =gMonsterData
	adds r0, r1, #0
	adds r0, #0x88
	ldrh r1, [r0]
	ldr r0, _08026B90 @ =0xFFFFFF00
	adds r1, r1, r0
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrh r2, [r0, #0xc]
	b _08026B96
	.align 2, 0
_08026B8C: .4byte gMonsterData
_08026B90: .4byte 0xFFFFFF00
_08026B94:
	ldr r2, _08026BC0 @ =0x00000794
_08026B96:
	ldr r0, _08026BC4 @ =gSomeBlend
	ldr r1, _08026BC8 @ =0x0000361A
	adds r3, r0, r1
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08026BB2
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, #0x8d
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08026BB2:
	adds r0, r2, #0
	bl sub_080038A4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08026BC0: .4byte 0x00000794
_08026BC4: .4byte gSomeBlend
_08026BC8: .4byte 0x0000361A

	thumb_func_start sub_08026BCC
sub_08026BCC: @ 0x08026BCC
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r1, _08026C24 @ =gEncounter
	ldrb r0, [r1, #5]
	cmp r4, r0
	bhs _08026C1E
	adds r2, r1, #0
	adds r2, #0x52
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	blt _08026C1E
	adds r5, r1, #0
	adds r6, r2, #0
_08026BE8:
	adds r0, r5, #0
	adds r0, #0x3d
	adds r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08026C06
	adds r0, r4, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #1
	bl sub_08033620
_08026C06:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r0, [r5, #5]
	cmp r4, r0
	bhs _08026C1E
	adds r0, r4, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08026BE8
_08026C1E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08026C24: .4byte gEncounter

	thumb_func_start sub_08026C28
sub_08026C28: @ 0x08026C28
	push {r4, r5, r6, lr}
	bl sub_08026DA8
	ldr r0, _08026C48 @ =gGame
	ldr r1, _08026C4C @ =0x00008490
	adds r0, r0, r1
	movs r1, #1
	str r1, [r0]
	ldr r1, _08026C50 @ =gEncounter
	ldrb r0, [r1]
	cmp r0, #0
	beq _08026C54
	cmp r0, #1
	beq _08026C5E
	b _08026C6C
	.align 2, 0
_08026C48: .4byte gGame
_08026C4C: .4byte 0x00008490
_08026C50: .4byte gEncounter
_08026C54:
	movs r0, #0
	movs r1, #0xf
	bl sub_08033620
	b _08026C6C
_08026C5E:
	ldrh r0, [r1, #0xa]
	cmp r0, #0x23
	bne _08026C6C
	movs r0, #0
	movs r1, #0xf
	bl sub_08033620
_08026C6C:
	ldr r0, _08026C80 @ =gEncounter
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #1
	beq _08026CCA
	cmp r1, #1
	bgt _08026C84
	cmp r1, #0
	beq _08026C88
	b _08026CCA
	.align 2, 0
_08026C80: .4byte gEncounter
_08026C84:
	cmp r1, #3
	bne _08026CCA
_08026C88:
	movs r4, #0
	ldrb r0, [r2, #5]
	cmp r4, r0
	bhs _08026CCA
	adds r1, r2, #0
	adds r1, #0x52
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08026CCA
	adds r6, r2, #0
	adds r5, r1, #0
_08026CA0:
	adds r0, r4, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #1
	bl sub_08033620
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r1, [r6, #5]
	cmp r4, r1
	bhs _08026CCA
	adds r0, r4, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08026CA0
_08026CCA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08026CD0
sub_08026CD0: @ 0x08026CD0
	ldr r0, _08026CDC @ =gGame
	ldr r1, _08026CE0 @ =0x00008490
	adds r0, r0, r1
	movs r1, #3
	str r1, [r0]
	bx lr
	.align 2, 0
_08026CDC: .4byte gGame
_08026CE0: .4byte 0x00008490

	thumb_func_start sub_08026CE4
sub_08026CE4: @ 0x08026CE4
	push {r4, r5, r6, lr}
	bl sub_08026DA8
	ldr r0, _08026D04 @ =gGame
	ldr r1, _08026D08 @ =0x00008490
	adds r0, r0, r1
	movs r1, #2
	str r1, [r0]
	ldr r1, _08026D0C @ =gEncounter
	ldrb r0, [r1]
	cmp r0, #0
	beq _08026D10
	cmp r0, #1
	beq _08026D1A
	b _08026D28
	.align 2, 0
_08026D04: .4byte gGame
_08026D08: .4byte 0x00008490
_08026D0C: .4byte gEncounter
_08026D10:
	movs r0, #0
	movs r1, #0xf
	bl sub_08033620
	b _08026D28
_08026D1A:
	ldrh r0, [r1, #0xa]
	cmp r0, #0x23
	bne _08026D28
	movs r0, #0
	movs r1, #0xf
	bl sub_08033620
_08026D28:
	ldr r1, _08026D60 @ =gEncounter
	ldrb r0, [r1]
	cmp r0, #1
	bgt _08026DA2
	cmp r0, #0
	blt _08026DA2
	movs r4, #0
	ldrb r0, [r1, #5]
	cmp r4, r0
	bhs _08026DA2
	adds r2, r1, #0
	adds r2, #0x52
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	blt _08026DA2
	adds r5, r1, #0
	adds r6, r2, #0
_08026D4C:
	adds r0, r5, #0
	adds r0, #0x3d
	adds r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08026D64
	cmp r0, #1
	beq _08026D78
	b _08026D8A
	.align 2, 0
_08026D60: .4byte gEncounter
_08026D64:
	adds r0, r4, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #1
	bl sub_08033620
	b _08026D8A
_08026D78:
	adds r0, r4, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	bl sub_08033620
_08026D8A:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r1, [r5, #5]
	cmp r4, r1
	bhs _08026DA2
	adds r0, r4, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08026D4C
_08026DA2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08026DA8
sub_08026DA8: @ 0x08026DA8
	push {lr}
	ldr r2, _08026DDC @ =gEncounter
	ldrb r0, [r2]
	cmp r0, #0
	bne _08026DD6
	ldrb r0, [r2, #5]
	cmp r0, #1
	bne _08026DD6
	movs r0, #0xc
	ldrsh r1, [r2, r0]
	movs r0, #0xac
	lsls r0, r0, #1
	cmp r1, r0
	bne _08026DD6
	movs r0, #3
	strb r0, [r2, #5]
	adds r0, r2, #0
	adds r0, #0x3d
	ldrb r1, [r0]
	adds r0, #2
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
_08026DD6:
	pop {r0}
	bx r0
	.align 2, 0
_08026DDC: .4byte gEncounter

	thumb_func_start sub_08026DE0
sub_08026DE0: @ 0x08026DE0
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0
	bl get_obj_direct
	adds r5, r0, #0
	ldrh r1, [r4, #2]
	movs r0, #0xf0
	ands r0, r1
	strh r0, [r4, #2]
	cmp r0, #0
	beq _08026E34
	ldrh r0, [r4, #2]
	bl sub_0802706C
	adds r1, r5, #0
	adds r1, #0x8f
	strb r0, [r1]
	ldrb r0, [r1]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r5, #0
	adds r3, #0xbc
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #2
	ldrb r1, [r3]
	movs r2, #0x1d
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r3]
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #0
	bl sub_080332AC
_08026E34:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08026E3C
sub_08026E3C: @ 0x08026E3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp, #8]
	ldr r3, _08026ECC @ =gUnknown_020196A8
	ldrh r2, [r3]
	ldr r1, _08026ED0 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	ldrh r0, [r3, #2]
	add r1, sp, #4
	strh r0, [r1, #2]
	movs r0, #1
	str r0, [sp, #0xc]
	ldr r4, [sp, #8]
	ldrh r2, [r4, #2]
	ands r0, r2
	cmp r0, #0
	beq _08026E70
	movs r0, #2
	str r0, [sp, #0xc]
_08026E70:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	mov sl, r0
	ldr r1, [sp, #0xc]
	cmp sl, r1
	blo _08026E80
	b _0802700E
_08026E80:
	adds r5, r2, #0
	movs r2, #0x12
	rsbs r2, r2, #0
	adds r2, r2, r3
	mov sb, r2
	movs r4, #0xe
	rsbs r4, r4, #0
	adds r4, r4, r3
	mov ip, r4
	subs r0, #0x14
	adds r0, r0, r3
	mov r8, r0
	adds r6, r3, #0
	subs r6, #0x10
	mov r3, sp
	movs r7, #1
_08026EA0:
	movs r0, #0x40
	ands r0, r5
	cmp r0, #0
	beq _08026EE6
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r4, _08026ED4 @ =gSomeBlend
	cmp r0, #0
	bne _08026EDC
	ldr r0, _08026ED8 @ =0x00003672
	adds r1, r0, r4
	ldrh r0, [r1]
	mov r2, sp
	strh r0, [r2, #0x10]
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _08026F10
	mov r2, sp
	ldrh r0, [r2, #0x10]
	b _08026EE0
	.align 2, 0
_08026ECC: .4byte gUnknown_020196A8
_08026ED0: .4byte 0xFFFF0000
_08026ED4: .4byte gSomeBlend
_08026ED8: .4byte 0x00003672
_08026EDC:
	mov r1, ip
	ldrh r0, [r1]
_08026EE0:
	subs r0, #1
	strh r0, [r1]
	b _08026F10
_08026EE6:
	movs r0, #0x80
	ands r0, r5
	ldr r4, _08026F40 @ =gSomeBlend
	cmp r0, #0
	beq _08026F10
	adds r2, r4, #0
	ldr r1, _08026F44 @ =0x00003676
	adds r0, r2, r1
	mov r2, sb
	movs r1, #0
	ldrsh r2, [r2, r1]
	str r2, [sp, #0x14]
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r1, [sp, #0x14]
	cmp r1, r0
	bge _08026F10
	mov r2, ip
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
_08026F10:
	movs r0, #0x20
	ands r0, r5
	cmp r0, #0
	beq _08026F52
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _08026F4C
	ldr r0, _08026F48 @ =0x00003670
	adds r1, r4, r0
	ldrh r0, [r1]
	mov r2, sp
	strh r0, [r2, #0x10]
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _08026F78
	mov r2, sp
	ldrh r0, [r2, #0x10]
	subs r0, #1
	strh r0, [r1]
	b _08026F78
	.align 2, 0
_08026F40: .4byte gSomeBlend
_08026F44: .4byte 0x00003676
_08026F48: .4byte 0x00003670
_08026F4C:
	ldrh r0, [r6]
	subs r0, #1
	b _08026F76
_08026F52:
	movs r0, #0x10
	ands r0, r5
	cmp r0, #0
	beq _08026F78
	ldr r1, _08026FA0 @ =gSomeBlend
	ldr r2, _08026FA4 @ =0x00003674
	adds r0, r1, r2
	mov r1, r8
	movs r2, #0
	ldrsh r1, [r1, r2]
	str r1, [sp, #0x14]
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r2, [sp, #0x14]
	cmp r2, r0
	bge _08026F78
	ldrh r0, [r6]
	adds r0, #1
_08026F76:
	strh r0, [r6]
_08026F78:
	mov r1, ip
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _08026FAC
	strh r7, [r3]
	ldr r0, _08026FA8 @ =0x0000366E
	adds r1, r4, r0
	ldrh r0, [r1]
	mov r2, sp
	strh r0, [r2, #0x10]
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _08026FBA
	mov r2, sp
	ldrh r0, [r2, #0x10]
	subs r0, #1
	b _08026FB8
	.align 2, 0
_08026FA0: .4byte gSomeBlend
_08026FA4: .4byte 0x00003674
_08026FA8: .4byte 0x0000366E
_08026FAC:
	cmp r0, #7
	ble _08026FBA
	strh r7, [r3]
	mov r1, sb
	ldrh r0, [r1]
	adds r0, #1
_08026FB8:
	strh r0, [r1]
_08026FBA:
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bge _08026FDC
	strh r7, [r3]
	ldr r0, _08026FD8 @ =0x0000366C
	adds r1, r4, r0
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _08026FEA
	subs r0, r2, #1
	b _08026FE8
	.align 2, 0
_08026FD8: .4byte 0x0000366C
_08026FDC:
	cmp r0, #7
	ble _08026FEA
	strh r7, [r3]
	mov r1, r8
	ldrh r0, [r1]
	adds r0, #1
_08026FE8:
	strh r0, [r1]
_08026FEA:
	ldrh r2, [r6]
	movs r1, #7
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r6]
	mov r2, ip
	ldrh r0, [r2]
	ands r1, r0
	strh r1, [r2]
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r4, [sp, #0xc]
	cmp sl, r4
	bhs _0802700E
	b _08026EA0
_0802700E:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08027024
	ldr r0, _08027060 @ =gSomeBlend
	ldr r1, _08027064 @ =0x00003684
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r1, #0
	bl sub_08011F18
_08027024:
	ldr r1, _08027068 @ =gUnknown_020196A8
	mov r2, sp
	ldrh r0, [r2, #4]
	strh r0, [r1]
	add r0, sp, #4
	ldrh r0, [r0, #2]
	strh r0, [r1, #2]
	ldr r4, [sp, #8]
	ldrb r1, [r4, #0xe]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08027050
	ldrh r1, [r4]
	movs r0, #0x81
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08027050
	movs r0, #0
	bl sub_080052E4
_08027050:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027060: .4byte gSomeBlend
_08027064: .4byte 0x00003684
_08027068: .4byte gUnknown_020196A8

	thumb_func_start sub_0802706C
sub_0802706C: @ 0x0802706C
	push {lr}
	lsls r0, r0, #0x10
	movs r2, #0
	ldr r3, _0802708C @ =gDirectionTable
	movs r1, #0xf0
	lsls r1, r1, #0x10
	ands r1, r0
	lsrs r1, r1, #0x10
_0802707C:
	lsls r0, r2, #4
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r0, r1
	bne _08027090
	adds r0, r2, #0
	b _0802709C
	.align 2, 0
_0802708C: .4byte gDirectionTable
_08027090:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #8
	bls _0802707C
	movs r0, #0
_0802709C:
	pop {r1}
	bx r1

	thumb_func_start sub_080270A0
sub_080270A0: @ 0x080270A0
	lsls r0, r0, #0x10
	ldr r3, _080270B4 @ =gDirectionTable
	lsrs r0, r0, #0xc
	adds r0, r0, r3
	ldrh r3, [r0, #2]
	strh r3, [r1]
	ldrh r0, [r0, #4]
	strh r0, [r2]
	bx lr
	.align 2, 0
_080270B4: .4byte gDirectionTable

	thumb_func_start sub_080270B8
sub_080270B8: @ 0x080270B8
	lsls r0, r0, #0x10
	ldr r1, _080270C4 @ =gDirectionTable
	lsrs r0, r0, #0xc
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	bx lr
	.align 2, 0
_080270C4: .4byte gDirectionTable

	thumb_func_start sub_080270C8
sub_080270C8: @ 0x080270C8
	lsls r0, r0, #0x10
	ldr r1, _080270D4 @ =gUnknown_08D2DEF8
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_080270D4: .4byte gUnknown_08D2DEF8

	thumb_func_start sub_080270D8
sub_080270D8: @ 0x080270D8
	lsls r0, r0, #0x10
	ldr r1, _080270E4 @ =gUnknown_08D2DF08
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_080270E4: .4byte gUnknown_08D2DF08

	thumb_func_start sub_080270E8
sub_080270E8: @ 0x080270E8
	lsls r0, r0, #0x10
	ldr r1, _080270F4 @ =gDirectionTable
	lsrs r0, r0, #0xc
	adds r0, r0, r1
	ldrh r0, [r0, #8]
	bx lr
	.align 2, 0
_080270F4: .4byte gDirectionTable

	thumb_func_start sub_080270F8
sub_080270F8: @ 0x080270F8
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, r4, #0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	cmp r1, #0
	bge _08027110
	bl sub_08002FE8
	movs r2, #1
	ands r2, r0
_08027110:
	cmp r2, #0
	beq _08027124
	ldr r0, _08027120 @ =gDirectionTable
	lsls r1, r4, #4
	adds r1, r1, r0
	ldrh r0, [r1, #0xc]
	b _0802712C
	.align 2, 0
_08027120: .4byte gDirectionTable
_08027124:
	ldr r0, _08027134 @ =gDirectionTable
	lsls r1, r5, #4
	adds r1, r1, r0
	ldrh r0, [r1, #0xa]
_0802712C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08027134: .4byte gDirectionTable

	thumb_func_start sub_08027138
sub_08027138: @ 0x08027138
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r1, #0
	bne _08027148
	movs r0, #0
	b _0802715A
_08027148:
	adds r0, r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bls _0802715A
	ldr r2, _08027160 @ =0x0000FFFA
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0802715A:
	pop {r1}
	bx r1
	.align 2, 0
_08027160: .4byte 0x0000FFFA

	thumb_func_start sub_08027164
sub_08027164: @ 0x08027164
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bne _08027174
	movs r0, #0
	b _08027186
_08027174:
	cmp r0, #2
	bhi _08027180
	adds r0, #6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08027186
_08027180:
	subs r0, r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_08027186:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start get_obj
get_obj: @ 0x0802718C
	push {r4, lr}
	adds r2, r0, #0
	cmp r2, #0x18
	ble _080271EC
	subs r2, #0x19
	ldr r3, _080271BC @ =gGame
	ldr r1, _080271C0 @ =0x00008382
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080271C8
	adds r2, #5
	ldr r4, _080271C4 @ =0x00008370
	adds r1, r3, r4
	adds r4, #3
	adds r0, r3, r4
	ldrb r0, [r0]
	mvns r0, r0
	ldrb r1, [r1]
	adds r0, r0, r1
	b _080271D8
	.align 2, 0
_080271BC: .4byte gGame
_080271C0: .4byte 0x00008382
_080271C4: .4byte 0x00008370
_080271C8:
	adds r2, #5
	ldr r1, _080271E4 @ =0x00008370
	adds r0, r3, r1
	ldrb r0, [r0]
	ldr r4, _080271E8 @ =0x00008373
	adds r1, r3, r4
	ldrb r1, [r1]
	subs r0, r0, r1
_080271D8:
	adds r2, r2, r0
	cmp r2, #0x18
	ble _08027234
_080271DE:
	movs r0, #0
	b _0802723C
	.align 2, 0
_080271E4: .4byte 0x00008370
_080271E8: .4byte 0x00008373
_080271EC:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _08027210
	ldr r0, _08027208 @ =gGame
	ldr r3, _0802720C @ =0x00008450
	adds r1, r0, r3
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, r2
	beq _080271DE
	movs r0, #0
	ldrsh r2, [r1, r0]
	b _08027234
	.align 2, 0
_08027208: .4byte gGame
_0802720C: .4byte 0x00008450
_08027210:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r2, r0
	bne _0802721C
	movs r2, #0
	b _08027234
_0802721C:
	movs r0, #3
	rsbs r0, r0, #0
	cmp r2, r0
	beq _080271DE
	cmp r2, #4
	bhi _08027234
	ldr r0, _08027244 @ =gGame
	ldr r1, _08027248 @ =0x00008299
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r2, r0
	bge _080271DE
_08027234:
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
_0802723C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08027244: .4byte gGame
_08027248: .4byte 0x00008299

	thumb_func_start sub_0802724C
sub_0802724C: @ 0x0802724C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_0801B3D8
	lsls r1, r4, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_0801B3FC
	ldr r1, _080272D8 @ =0x0600F800
	bl sub_08090F88
	movs r0, #0xc1
	lsls r0, r0, #5
	bl sub_0803B800
	mov r8, r0
	adds r0, r5, #0
	bl sub_0801B444
	mov r1, r8
	bl sub_08090F8C
	lsls r4, r4, #9
	add r4, r8
	ldr r6, _080272DC @ =gGame
	ldr r1, _080272E0 @ =0x000058AC
	adds r0, r6, r1
	ldr r5, _080272E4 @ =gUnknown_020294B8
	str r5, [r0]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001B18
	mov r0, r8
	bl sub_0803B860
	ldr r1, _080272E8 @ =0x000067AC
	adds r0, r6, r1
	ldrh r0, [r0]
	bl sub_080123B0
	ldr r0, _080272EC @ =0xFFFECB70
	adds r5, r5, r0
	adds r0, r5, #0
	movs r1, #0
	bl sub_08007CE8
	ldr r1, _080272F0 @ =0x000067C5
	adds r6, r6, r1
	ldrb r0, [r6]
	movs r1, #1
	orrs r0, r1
	strb r0, [r6]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080272D8: .4byte 0x0600F800
_080272DC: .4byte gGame
_080272E0: .4byte 0x000058AC
_080272E4: .4byte gUnknown_020294B8
_080272E8: .4byte 0x000067AC
_080272EC: .4byte 0xFFFECB70
_080272F0: .4byte 0x000067C5

	thumb_func_start sub_080272F4
sub_080272F4: @ 0x080272F4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	cmp r5, #1
	bhi _08027318
	ldr r0, _08027310 @ =gUnknown_0200F088
	ldr r1, _08027314 @ =gUnknown_03005314
	b _08027354
	.align 2, 0
_08027310: .4byte gUnknown_0200F088
_08027314: .4byte gUnknown_03005314
_08027318:
	subs r0, r6, #4
	cmp r0, #7
	bls _08027320
	b _0802749A
_08027320:
	lsls r0, r0, #2
	ldr r1, _0802732C @ =_08027330
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802732C: .4byte _08027330
_08027330: @ jump table
	.4byte _08027350 @ case 0
	.4byte _08027368 @ case 1
	.4byte _08027350 @ case 2
	.4byte _08027368 @ case 3
	.4byte _08027350 @ case 4
	.4byte _08027368 @ case 5
	.4byte _08027350 @ case 6
	.4byte _08027368 @ case 7
_08027350:
	ldr r0, _08027360 @ =gUnknown_03005314
	ldr r1, _08027364 @ =gUnknown_0200F088
_08027354:
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
	b _08027374
	.align 2, 0
_08027360: .4byte gUnknown_03005314
_08027364: .4byte gUnknown_0200F088
_08027368:
	ldr r0, _08027384 @ =gUnknown_0200F088
	ldr r1, _08027388 @ =gUnknown_03005314
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
_08027374:
	cmp r4, #1
	beq _080273B0
	cmp r4, #1
	bgt _0802738C
	cmp r4, #0
	beq _08027392
	b _080273F0
	.align 2, 0
_08027384: .4byte gUnknown_0200F088
_08027388: .4byte gUnknown_03005314
_0802738C:
	cmp r4, #2
	beq _080273D0
	b _080273F0
_08027392:
	ldr r0, _080273A4 @ =gGame
	ldr r2, _080273A8 @ =0x000083AE
	adds r1, r0, r2
	strb r4, [r1]
	ldr r3, _080273AC @ =0x000083AF
	adds r0, r0, r3
	movs r1, #0x20
	strb r1, [r0]
	b _08027428
	.align 2, 0
_080273A4: .4byte gGame
_080273A8: .4byte 0x000083AE
_080273AC: .4byte 0x000083AF
_080273B0:
	ldr r1, _080273C4 @ =gGame
	ldr r0, _080273C8 @ =0x000083AE
	adds r2, r1, r0
	movs r0, #0
	strb r0, [r2]
	ldr r2, _080273CC @ =0x000083AF
	adds r1, r1, r2
	movs r0, #0x10
	strb r0, [r1]
	b _08027428
	.align 2, 0
_080273C4: .4byte gGame
_080273C8: .4byte 0x000083AE
_080273CC: .4byte 0x000083AF
_080273D0:
	ldr r0, _080273E4 @ =gGame
	ldr r3, _080273E8 @ =0x000083AE
	adds r1, r0, r3
	movs r2, #0x10
	strb r2, [r1]
	ldr r1, _080273EC @ =0x000083AF
	adds r0, r0, r1
	strb r2, [r0]
	b _08027428
	.align 2, 0
_080273E4: .4byte gGame
_080273E8: .4byte 0x000083AE
_080273EC: .4byte 0x000083AF
_080273F0:
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	beq _08027408
	ldr r2, _08027404 @ =gGame
	movs r1, #0xf
	adds r0, r4, #0
	ands r0, r1
	b _0802741A
	.align 2, 0
_08027404: .4byte gGame
_08027408:
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _0802749A
	ldr r2, _0802746C @ =gGame
	movs r1, #0xf
	adds r0, r4, #0
	ands r0, r1
	adds r0, #0x10
_0802741A:
	ldr r3, _08027470 @ =0x000083AE
	adds r1, r2, r3
	strb r0, [r1]
	ldr r0, _08027474 @ =0x000083AF
	adds r2, r2, r0
	movs r0, #1
	strb r0, [r2]
_08027428:
	ldr r4, _08027478 @ =gUnknown_0200DF84
	ldr r2, _0802747C @ =0x00001104
	adds r1, r4, r2
	ldr r2, [r4, #0x20]
	str r6, [sp]
	ldrh r0, [r4, #0x24]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x26]
	str r0, [sp, #8]
	ldrh r0, [r4, #0x28]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r3, r5, #0
	bl sub_080031F0
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	cmp r5, #1
	bhi _08027480
	movs r0, #0
	strh r0, [r4, #0x12]
	movs r0, #1
	strh r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08027680
	b _0802749A
	.align 2, 0
_0802746C: .4byte gGame
_08027470: .4byte 0x000083AE
_08027474: .4byte 0x000083AF
_08027478: .4byte gUnknown_0200DF84
_0802747C: .4byte 0x00001104
_08027480:
	ldr r3, _080274A4 @ =0xFFFFE428
	adds r0, r4, r3
	ldrh r0, [r0]
	cmp r0, #0x27
	beq _0802749A
	ldr r1, _080274A8 @ =0xFFFFE440
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0802749A
	bl sub_08005BFC
_0802749A:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080274A4: .4byte 0xFFFFE428
_080274A8: .4byte 0xFFFFE440

	thumb_func_start sub_080274AC
sub_080274AC: @ 0x080274AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x110
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r4, #0x80
	lsls r4, r4, #3
	adds r0, r4, #0
	bl sub_0803B800
	mov sb, r0
	ldr r7, _08027504 @ =gUnknown_03005314
	adds r0, r7, #0
	mov r1, sb
	adds r2, r4, #0
	bl sub_08001B18
	ldr r6, _08027508 @ =gUnknown_0200F208
	adds r0, r6, #0
	add r1, sp, #0x10
	movs r2, #0x80
	bl sub_08001B18
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r6, r1
	add r4, sp, #0x90
	adds r1, r4, #0
	movs r2, #0x80
	bl sub_08001B18
	cmp r5, #1
	beq _0802752C
	cmp r5, #1
	bgt _0802750C
	cmp r5, #0
	beq _08027512
	b _08027584
	.align 2, 0
_08027504: .4byte gUnknown_03005314
_08027508: .4byte gUnknown_0200F208
_0802750C:
	cmp r5, #2
	beq _08027558
	b _08027584
_08027512:
	ldr r2, _08027524 @ =0xFFFFEDA6
	adds r0, r6, r2
	strb r5, [r0]
	ldr r3, _08027528 @ =0xFFFFEDA7
	adds r1, r6, r3
	movs r0, #0x20
	strb r0, [r1]
	b _080275C4
	.align 2, 0
_08027524: .4byte 0xFFFFEDA6
_08027528: .4byte 0xFFFFEDA7
_0802752C:
	ldr r0, _08027550 @ =0xFFFFEDA6
	adds r1, r6, r0
	movs r0, #0
	strb r0, [r1]
	ldr r2, _08027554 @ =0xFFFFEDA7
	adds r1, r6, r2
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x80
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r7, r3
	movs r2, #0xc0
	lsls r2, r2, #1
	bl sub_08001B18
	b _080275C4
	.align 2, 0
_08027550: .4byte 0xFFFFEDA6
_08027554: .4byte 0xFFFFEDA7
_08027558:
	ldr r1, _08027578 @ =0xFFFFEDA6
	adds r0, r6, r1
	movs r1, #0x10
	strb r1, [r0]
	ldr r2, _0802757C @ =0xFFFFEDA7
	adds r0, r6, r2
	strb r1, [r0]
	ldr r3, _08027580 @ =0xFFFFFE80
	adds r0, r6, r3
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r7, #0
	bl sub_08001B18
	b _080275C4
	.align 2, 0
_08027578: .4byte 0xFFFFEDA6
_0802757C: .4byte 0xFFFFEDA7
_08027580: .4byte 0xFFFFFE80
_08027584:
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	beq _0802759C
	ldr r2, _08027598 @ =gGame
	movs r1, #0xf
	adds r0, r5, #0
	ands r0, r1
	b _080275B6
	.align 2, 0
_08027598: .4byte gGame
_0802759C:
	movs r0, #0x40
	ands r0, r5
	cmp r0, #0
	bne _080275AC
	mov r0, sb
	bl sub_0803B860
	b _08027650
_080275AC:
	ldr r2, _08027660 @ =gGame
	movs r1, #0xf
	adds r0, r5, #0
	ands r0, r1
	adds r0, #0x10
_080275B6:
	ldr r3, _08027664 @ =0x000083AE
	adds r1, r2, r3
	strb r0, [r1]
	ldr r0, _08027668 @ =0x000083AF
	adds r2, r2, r0
	movs r0, #1
	strb r0, [r2]
_080275C4:
	ldr r4, _0802766C @ =gUnknown_0200DF84
	ldr r1, _08027670 @ =0x00001104
	adds r1, r1, r4
	mov r8, r1
	mov r2, sl
	str r2, [sp]
	ldrh r0, [r4, #0x24]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x26]
	str r0, [sp, #8]
	ldrh r0, [r4, #0x28]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_080031F0
	adds r5, r4, #0
	adds r5, #0x2c
	ldrb r0, [r5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r5]
	movs r0, #0
	strh r0, [r4, #0x12]
	movs r0, #1
	strh r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	adds r0, #1
	ldrb r2, [r0]
	adds r0, r4, #0
	movs r3, #1
	bl sub_08016F68
	ldrb r1, [r5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	ldr r5, _08027674 @ =gUnknown_03005314
	movs r6, #0x80
	lsls r6, r6, #3
	adds r0, r5, #0
	mov r1, r8
	adds r2, r6, #0
	bl sub_08001B18
	ldr r3, _08027678 @ =0x00001284
	adds r1, r4, r3
	add r0, sp, #0x10
	movs r2, #0x80
	bl sub_08001B18
	ldr r0, _0802767C @ =0x00001484
	adds r4, r4, r0
	add r0, sp, #0x90
	adds r1, r4, #0
	movs r2, #0x80
	bl sub_08001B18
	mov r0, sb
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08001B18
	mov r0, sb
	bl sub_0803B860
_08027650:
	add sp, #0x110
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027660: .4byte gGame
_08027664: .4byte 0x000083AE
_08027668: .4byte 0x000083AF
_0802766C: .4byte gUnknown_0200DF84
_08027670: .4byte 0x00001104
_08027674: .4byte gUnknown_03005314
_08027678: .4byte 0x00001284
_0802767C: .4byte 0x00001484

	thumb_func_start sub_08027680
sub_08027680: @ 0x08027680
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x2c
	ldrb r3, [r5]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r3
	cmp r0, #0
	beq _08027736
	ldrb r1, [r4, #0x1d]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08027736
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	adds r0, #1
	ldrb r2, [r0]
	lsls r3, r3, #0x1e
	lsrs r3, r3, #0x1f
	adds r0, r4, #0
	bl sub_08016F68
	ldrb r1, [r4, #0x1d]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08027736
	bl sub_08005C14
	ldrh r0, [r4, #0x14]
	cmp r0, #1
	bhi _080276E8
	ldrb r1, [r5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	ldr r0, _080276E0 @ =gUnknown_03005314
	ldr r1, _080276E4 @ =gUnknown_0200F088
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
	b _08027736
	.align 2, 0
_080276E0: .4byte gUnknown_03005314
_080276E4: .4byte gUnknown_0200F088
_080276E8:
	ldrb r0, [r4, #0x1c]
	subs r0, #4
	cmp r0, #7
	bhi _08027736
	lsls r0, r0, #2
	ldr r1, _080276FC @ =_08027700
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080276FC: .4byte _08027700
_08027700: @ jump table
	.4byte _08027720 @ case 0
	.4byte _0802772C @ case 1
	.4byte _08027720 @ case 2
	.4byte _0802772C @ case 3
	.4byte _08027720 @ case 4
	.4byte _0802772C @ case 5
	.4byte _08027720 @ case 6
	.4byte _0802772C @ case 7
_08027720:
	movs r0, #1
	rsbs r0, r0, #0
	movs r1, #1
	bl sub_08013CC8
	b _08027736
_0802772C:
	movs r0, #1
	rsbs r0, r0, #0
	movs r1, #0
	bl sub_08013CC8
_08027736:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0802773C
sub_0802773C: @ 0x0802773C
	push {r4, lr}
	ldr r0, _08027760 @ =gUnknown_03005314
	ldr r4, _08027764 @ =gUnknown_0200F088
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r4, #0
	bl sub_08001B18
	ldr r0, _08027768 @ =0xFFFFC4D3
	adds r4, r4, r0
	ldrb r0, [r4]
	cmp r0, #4
	bhi _08027812
	lsls r0, r0, #2
	ldr r1, _0802776C @ =_08027770
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08027760: .4byte gUnknown_03005314
_08027764: .4byte gUnknown_0200F088
_08027768: .4byte 0xFFFFC4D3
_0802776C: .4byte _08027770
_08027770: @ jump table
	.4byte _08027784 @ case 0
	.4byte _08027812 @ case 1
	.4byte _080277C8 @ case 2
	.4byte _08027812 @ case 3
	.4byte _08027808 @ case 4
_08027784:
	ldr r4, _080277B8 @ =gUnknown_03005314
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r4, #0
	bl memclear
	ldr r1, _080277BC @ =gGame
	ldr r2, _080277C0 @ =0x00008494
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08027812
	ldrb r0, [r1, #3]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _08027812
	ldr r0, _080277C4 @ =gUnknown_020291F8
	movs r3, #0xe0
	lsls r3, r3, #1
	adds r1, r4, r3
	movs r2, #0x40
	bl sub_08001B18
	b _08027812
	.align 2, 0
_080277B8: .4byte gUnknown_03005314
_080277BC: .4byte gGame
_080277C0: .4byte 0x00008494
_080277C4: .4byte gUnknown_020291F8
_080277C8:
	ldr r0, _080277F4 @ =gUnknown_03005314
	movs r1, #0x80
	lsls r1, r1, #3
	movs r2, #1
	rsbs r2, r2, #0
	bl sub_08001B54
	ldr r1, _080277F8 @ =gSomeBlend
	ldr r2, _080277FC @ =0x00002C9C
	adds r0, r1, r2
	ldrb r2, [r0]
	movs r2, #0
	strb r2, [r0]
	ldr r3, _08027800 @ =0x00002C9D
	adds r0, r1, r3
	ldrb r3, [r0]
	strb r2, [r0]
	ldr r0, _08027804 @ =0x00002C9E
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r2, [r1]
	b _08027812
	.align 2, 0
_080277F4: .4byte gUnknown_03005314
_080277F8: .4byte gSomeBlend
_080277FC: .4byte 0x00002C9C
_08027800: .4byte 0x00002C9D
_08027804: .4byte 0x00002C9E
_08027808:
	ldr r0, _08027818 @ =gUnknown_03005314
	movs r1, #0x80
	lsls r1, r1, #3
	bl memclear
_08027812:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08027818: .4byte gUnknown_03005314

	thumb_func_start sub_0802781C
sub_0802781C: @ 0x0802781C
	push {r4, r5, r6, lr}
	ldr r5, _080278D0 @ =gGame
	ldr r0, [r5, #0x28]
	movs r2, #0xc0
	lsls r2, r2, #1
	movs r1, #0
	bl sub_08016F4C
	movs r0, #0
	movs r1, #0xc
	bl sub_0803B688
	movs r0, #0
	bl sub_08036DDC
	movs r1, #0x10
	movs r2, #0xe0
	bl sub_08016F4C
	movs r4, #0
	ldr r1, _080278D4 @ =0x00008376
	adds r0, r5, r1
	ldrh r2, [r0]
	cmp r4, r2
	bhs _08027876
	adds r6, r5, #0
	adds r5, r0, #0
_08027852:
	lsls r0, r4, #2
	ldr r2, _080278D8 @ =0x0000835C
	adds r1, r6, r2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r4, #0
	adds r1, #0x17
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0x20
	bl sub_08016F4C
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r0, [r5]
	cmp r4, r0
	blo _08027852
_08027876:
	ldr r0, _080278DC @ =gUnknown_09AF3790
	ldr r1, _080278E0 @ =gSave
	ldr r2, _080278E4 @ =0x0000081E
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r1, #1
	bl sub_0800289C
	movs r1, #0xc
	movs r2, #0x20
	bl sub_08016F4C
	movs r0, #0xc
	movs r1, #1
	bl sub_0803B688
	ldr r0, _080278E8 @ =gUnknown_03005494
	ldr r2, _080278EC @ =0x00007E9C
	adds r1, r2, #0
	strh r1, [r0, #2]
	ldr r2, _080278F0 @ =0x0000319F
	adds r1, r2, #0
	strh r1, [r0, #6]
	movs r1, #0
	strh r1, [r0, #0xe]
	ldr r2, _080278F4 @ =0x00007FEC
	adds r1, r2, #0
	strh r1, [r0, #0x10]
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0, #0x16]
	ldr r2, _080278F8 @ =0x00007FFF
	adds r1, r2, #0
	strh r1, [r0, #0x1e]
	ldr r1, _080278FC @ =0xFFFFFE80
	adds r0, r0, r1
	ldr r1, _08027900 @ =gUnknown_0200F088
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080278D0: .4byte gGame
_080278D4: .4byte 0x00008376
_080278D8: .4byte 0x0000835C
_080278DC: .4byte gUnknown_09AF3790
_080278E0: .4byte gSave
_080278E4: .4byte 0x0000081E
_080278E8: .4byte gUnknown_03005494
_080278EC: .4byte 0x00007E9C
_080278F0: .4byte 0x0000319F
_080278F4: .4byte 0x00007FEC
_080278F8: .4byte 0x00007FFF
_080278FC: .4byte 0xFFFFFE80
_08027900: .4byte gUnknown_0200F088

	thumb_func_start sub_08027904
sub_08027904: @ 0x08027904
	push {r4, r5, lr}
	ldr r4, _08027934 @ =gGame
	ldr r0, [r4, #0x28]
	movs r5, #0xc0
	lsls r5, r5, #1
	movs r1, #0
	adds r2, r5, #0
	bl sub_08016F4C
	movs r0, #0
	movs r1, #0xc
	bl sub_0803B688
	ldr r0, _08027938 @ =gUnknown_03005314
	ldr r1, _0802793C @ =0x00009488
	adds r4, r4, r1
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08001B18
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027934: .4byte gGame
_08027938: .4byte gUnknown_03005314
_0802793C: .4byte 0x00009488

	thumb_func_start sub_08027940
sub_08027940: @ 0x08027940
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	ldr r4, [sp, #0x18]
	mov sb, r4
	ldr r6, _08027994 @ =gGame
	ldr r5, _08027998 @ =0x000083BC
	adds r5, r5, r6
	mov r8, r5
	ldrb r4, [r5]
	movs r5, #1
	orrs r4, r5
	mov r5, r8
	strb r4, [r5]
	ldr r4, _0802799C @ =0x000083B6
	adds r5, r6, r4
	movs r4, #0
	strh r4, [r5]
	ldr r5, _080279A0 @ =0x000083B4
	adds r4, r6, r5
	strh r0, [r4]
	ldr r4, _080279A4 @ =0x000083B8
	adds r0, r6, r4
	strb r1, [r0]
	adds r5, #5
	adds r0, r6, r5
	strb r2, [r0]
	ldr r1, _080279A8 @ =0x000083BA
	adds r0, r6, r1
	strb r3, [r0]
	adds r4, #3
	adds r6, r6, r4
	mov r5, sb
	strb r5, [r6]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08027994: .4byte gGame
_08027998: .4byte 0x000083BC
_0802799C: .4byte 0x000083B6
_080279A0: .4byte 0x000083B4
_080279A4: .4byte 0x000083B8
_080279A8: .4byte 0x000083BA

	thumb_func_start sub_080279AC
sub_080279AC: @ 0x080279AC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08027A14
	ldrb r0, [r5, #4]
	ldrb r1, [r5, #6]
	ldrh r2, [r5, #2]
	ldrh r3, [r5]
	bl sub_08002E60
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #7]
	ldrh r2, [r5, #2]
	ldrh r3, [r5]
	bl sub_08002E60
	lsls r0, r0, #0x10
	ldr r2, _08027A1C @ =gSomeBlend
	ldr r1, _08027A20 @ =gGame
	lsrs r0, r0, #8
	orrs r4, r0
	ldr r0, _08027A24 @ =0x0000679E
	adds r1, r1, r0
	ldrh r0, [r1]
	movs r3, #0
	strh r4, [r1]
	ldrh r0, [r1]
	ldrh r1, [r2, #2]
	strh r0, [r2, #2]
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r5]
	cmp r0, r1
	bls _08027A14
	ldrb r1, [r5, #8]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #8]
	strb r3, [r5, #4]
	strb r3, [r5, #5]
	strb r3, [r5, #6]
	strb r3, [r5, #7]
_08027A14:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027A1C: .4byte gSomeBlend
_08027A20: .4byte gGame
_08027A24: .4byte 0x0000679E

	thumb_func_start sub_08027A28
sub_08027A28: @ 0x08027A28
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r0, #0
	bl sub_08003D48
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r7, r0, #0
	movs r0, #1
	bl sub_08003D48
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r6, r0, #0
	movs r0, #5
	bl sub_08003D48
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov sb, r4
	movs r0, #0x46
	mov r8, r0
	mov r0, r8
	muls r0, r7, r0
	movs r1, #0x64
	bl __divsi3
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #0
	adds r1, r7, #0
	movs r3, #2
	bl sub_08027B84
	mov r0, r8
	muls r0, r6, r0
	movs r1, #0x64
	bl __divsi3
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #1
	adds r1, r6, #0
	movs r3, #2
	bl sub_08027B84
	ldr r5, _08027AD4 @ =gGame
	ldr r1, _08027AD8 @ =0x0000829B
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #6
	bne _08027AB2
	mov r0, r8
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #5
	adds r1, r4, #0
	movs r3, #2
	bl sub_08027B84
_08027AB2:
	ldr r1, _08027ADC @ =0x0000847E
	adds r0, r5, r1
	strh r7, [r0]
	adds r1, #2
	adds r0, r5, r1
	strh r6, [r0]
	adds r1, #2
	adds r0, r5, r1
	mov r1, sb
	strh r1, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027AD4: .4byte gGame
_08027AD8: .4byte 0x0000829B
_08027ADC: .4byte 0x0000847E

	thumb_func_start sub_08027AE0
sub_08027AE0: @ 0x08027AE0
	push {r4, r5, r6, lr}
	ldr r6, _08027B70 @ =gGame
	ldr r1, _08027B74 @ =0x0000847E
	adds r0, r6, r1
	ldrh r0, [r0]
	bl sub_08003E20
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, _08027B78 @ =0x00008480
	adds r0, r6, r1
	ldrh r0, [r0]
	bl sub_08003E20
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0
	bl sub_08003D48
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0
	adds r2, r4, #0
	movs r3, #2
	bl sub_08027B84
	movs r0, #1
	bl sub_08003D48
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	adds r2, r5, #0
	movs r3, #2
	bl sub_08027B84
	ldr r1, _08027B7C @ =0x0000829B
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #6
	bne _08027B68
	ldr r1, _08027B80 @ =0x00008482
	adds r0, r6, r1
	ldrh r0, [r0]
	bl sub_08003E20
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #5
	adds r1, r4, #0
	bl sub_08003C88
	movs r0, #5
	bl sub_08003D48
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #5
	adds r2, r4, #0
	movs r3, #2
	bl sub_08027B84
_08027B68:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08027B70: .4byte gGame
_08027B74: .4byte 0x0000847E
_08027B78: .4byte 0x00008480
_08027B7C: .4byte 0x0000829B
_08027B80: .4byte 0x00008482

	thumb_func_start sub_08027B84
sub_08027B84: @ 0x08027B84
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x10
	adds r6, r1, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r5, r3, #0
	cmp r0, #9
	bhi _08027BC6
	cmp r3, #1
	bhi _08027BAA
	bl sub_08003C88
	b _08027BC6
_08027BAA:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _08027BCC @ =gUnknown_0201B6A4
	adds r0, r0, r1
	ldrb r1, [r0, #8]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0, #8]
	movs r1, #0
	strh r7, [r0, #4]
	strh r6, [r0, #6]
	strh r1, [r0, #2]
	strh r5, [r0]
_08027BC6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027BCC: .4byte gUnknown_0201B6A4

	thumb_func_start sub_08027BD0
sub_08027BD0: @ 0x08027BD0
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x10
	adds r6, r1, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r5, r3, #0
	cmp r0, #9
	bhi _08027C16
	cmp r3, #1
	bhi _08027BFA
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08003CD0
	b _08027C16
_08027BFA:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _08027C1C @ =gUnknown_0201B71C
	adds r0, r0, r1
	ldrb r1, [r0, #8]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0, #8]
	movs r1, #0
	strh r7, [r0, #4]
	strh r6, [r0, #6]
	strh r1, [r0, #2]
	strh r5, [r0]
_08027C16:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027C1C: .4byte gUnknown_0201B71C

	thumb_func_start sub_08027C20
sub_08027C20: @ 0x08027C20
	push {r4, r5, lr}
	ldr r5, _08027C3C @ =gUnknown_0201B794
	ldrb r3, [r5, #8]
	movs r4, #1
	orrs r3, r4
	strb r3, [r5, #8]
	movs r3, #0
	strh r0, [r5]
	strh r1, [r5, #2]
	strh r2, [r5, #4]
	strh r3, [r5, #6]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027C3C: .4byte gUnknown_0201B794

	thumb_func_start sub_08027C40
sub_08027C40: @ 0x08027C40
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r6, #0
_08027C46:
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r5, r0, #2
	adds r4, r7, r5
	ldrb r0, [r4, #8]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08027C5C
	adds r0, r4, #0
	bl sub_08027C98
_08027C5C:
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08027C72
	adds r0, r5, #0
	adds r0, #0x78
	adds r0, r7, r0
	bl sub_08027CD8
_08027C72:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #9
	bls _08027C46
	adds r0, r7, #0
	adds r0, #0xf8
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08027C92
	adds r0, r7, #0
	adds r0, #0xf0
	bl sub_08027D1C
_08027C92:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08027C98
sub_08027C98: @ 0x08027C98
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #6]
	ldrh r2, [r4, #2]
	ldrh r3, [r4]
	bl sub_08002E60
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrb r0, [r4, #8]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1d
	bl sub_08003C48
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	bls _08027CD2
	ldrb r1, [r4, #8]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #8]
_08027CD2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08027CD8
sub_08027CD8: @ 0x08027CD8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #4
	ldrsh r0, [r4, r1]
	movs r2, #6
	ldrsh r1, [r4, r2]
	ldrh r2, [r4, #2]
	ldrh r3, [r4]
	bl sub_08002E34
	adds r1, r0, #0
	ldrb r0, [r4, #8]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1d
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08003CD0
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	bls _08027D16
	ldrb r1, [r4, #8]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #8]
_08027D16:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08027D1C
sub_08027D1C: @ 0x08027D1C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #6]
	adds r0, #1
	strh r0, [r4, #6]
	ldrh r1, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bne _08027D36
	ldrh r0, [r4]
	bl play_sound
_08027D36:
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #6]
	cmp r0, r1
	bne _08027DAC
	ldrb r1, [r4, #8]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #8]
	ldr r0, _08027DB4 @ =gGame
	ldr r2, _08027DB8 @ =0x000067AC
	adds r0, r0, r2
	ldrh r0, [r0]
	bl sub_0801B3A4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r0, #1
	bl sub_08003D14
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x8b
	bl sub_080038A4
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08027D84
	lsrs r0, r4, #0x10
	bl sub_080038A4
	movs r0, #1
	movs r1, #0
	bl sub_08003C88
_08027D84:
	movs r0, #0
	movs r1, #1
	bl sub_08003A60
	ldr r0, _08027DBC @ =gSave
	lsls r1, r5, #1
	ldr r2, _08027DC0 @ =0x00000582
	adds r0, r0, r2
	adds r1, r1, r0
	ldrh r0, [r1]
	bl sub_08003E20
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #1
	movs r1, #0
	movs r3, #4
	bl sub_08027B84
_08027DAC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027DB4: .4byte gGame
_08027DB8: .4byte 0x000067AC
_08027DBC: .4byte gSave
_08027DC0: .4byte 0x00000582

	thumb_func_start sub_08027DC4
sub_08027DC4: @ 0x08027DC4
	push {r4, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_08027DF4
	lsls r4, r4, #1
	adds r4, r0, r4
	ldrh r1, [r4]
	adds r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08027DE4
sub_08027DE4: @ 0x08027DE4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, #0xa
	lsls r2, r1, #2
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r0, r0, r2
	bx lr

	thumb_func_start sub_08027DF4
sub_08027DF4: @ 0x08027DF4
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08027E08 @ =gUnknown_0918177C
	bl sub_0800289C
	pop {r1}
	bx r1
	.align 2, 0
_08027E08: .4byte gUnknown_0918177C

	thumb_func_start sub_08027E0C
sub_08027E0C: @ 0x08027E0C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r1, #0
	mov r8, r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r4, _08027E44 @ =gScriptLogic
	adds r0, r4, #0
	movs r1, #0
	bl sub_0800289C
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #1
	bl sub_0800289C
	cmp r5, r4
	beq _08027E4C
	cmp r0, r4
	beq _08027E4C
	str r0, [r6]
	lsls r0, r7, #1
	adds r0, r0, r5
	ldrh r1, [r0, #2]
	ldr r0, _08027E48 @ =0x00003FFF
	ands r0, r1
	b _08027E50
	.align 2, 0
_08027E44: .4byte gScriptLogic
_08027E48: .4byte 0x00003FFF
_08027E4C:
	movs r0, #0
	str r0, [r6]
_08027E50:
	mov r1, r8
	strh r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08027E60
sub_08027E60: @ 0x08027E60
	push {lr}
	ldr r0, _08027E70 @ =gScriptLogic
	movs r1, #1
	bl sub_0800289C
	pop {r1}
	bx r1
	.align 2, 0
_08027E70: .4byte gScriptLogic

	thumb_func_start sub_08027E74
sub_08027E74: @ 0x08027E74
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r7, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	ldr r6, _08027EDC @ =gScriptLogic
	adds r4, #1
	lsls r5, r4, #1
	lsls r4, r4, #0x11
	lsrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0800289C
	adds r4, r0, #0
	adds r5, #1
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0800289C
	cmp r4, r6
	beq _08027EE4
	cmp r0, r6
	beq _08027EE4
	str r0, [r7]
	mov r0, sb
	lsls r1, r0, #1
	adds r1, r1, r4
	ldrh r2, [r1, #2]
	ldr r0, _08027EE0 @ =0x00003FFF
	ands r0, r2
	mov r2, r8
	strh r0, [r2]
	movs r0, #2
	ldrsh r1, [r1, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08027EEC
	movs r0, #0
	str r0, [r7]
	strh r0, [r2]
	b _08027EEC
	.align 2, 0
_08027EDC: .4byte gScriptLogic
_08027EE0: .4byte 0x00003FFF
_08027EE4:
	movs r0, #0
	str r0, [r7]
	mov r1, r8
	strh r0, [r1]
_08027EEC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08027EF8
sub_08027EF8: @ 0x08027EF8
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r4, _08027F24 @ =gScriptLogic
	lsls r3, r3, #0x11
	movs r0, #0x80
	lsls r0, r0, #0xa
	adds r3, r3, r0
	lsrs r3, r3, #0x10
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_0800289C
	adds r1, r0, #0
	cmp r1, r4
	bne _08027F28
	movs r0, #0
	b _08027F30
	.align 2, 0
_08027F24: .4byte gScriptLogic
_08027F28:
	lsls r0, r5, #1
	adds r0, r0, r1
	ldrh r0, [r0, #2]
	ands r0, r6
_08027F30:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08027F38
sub_08027F38: @ 0x08027F38
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r4, _08027F54 @ =_binary_build_mother3_assets_mainscript_bin_start
	adds r0, r4, #0
	movs r1, #0
	bl sub_0800289C
	adds r5, r0, #0
	cmp r5, r4
	bne _08027F58
	movs r0, #0
	b _08027F68
	.align 2, 0
_08027F54: .4byte _binary_build_mother3_assets_mainscript_bin_start
_08027F58:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0800289C
	lsls r1, r6, #1
	adds r1, r1, r5
	ldrh r1, [r1]
	adds r0, r0, r1
_08027F68:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08027F70
sub_08027F70: @ 0x08027F70
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r4, _08027F98 @ =_binary_build_mother3_assets_mainscript_bin_start
	adds r2, #1
	lsls r6, r2, #1
	lsls r2, r2, #0x11
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0800289C
	adds r5, r0, #0
	cmp r5, r4
	bne _08027F9C
	movs r0, #0
	b _08027FB0
	.align 2, 0
_08027F98: .4byte _binary_build_mother3_assets_mainscript_bin_start
_08027F9C:
	adds r1, r6, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_0800289C
	lsls r1, r7, #1
	adds r1, r1, r5
	ldrh r1, [r1]
	adds r0, r0, r1
_08027FB0:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08027FB8
sub_08027FB8: @ 0x08027FB8
	push {r4, lr}
	ldr r4, _08027FD4 @ =gUnknown_0200D818
	adds r0, r4, #0
	bl sub_08028080
	adds r0, r4, #0
	bl sub_080293BC
	bl sub_08029D10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08027FD4: .4byte gUnknown_0200D818

	thumb_func_start sub_08027FD8
sub_08027FD8: @ 0x08027FD8
	push {lr}
	ldr r1, _08027FF4 @ =gGame
	ldr r2, _08027FF8 @ =0x000082B6
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08028000
	ldr r2, _08027FFC @ =0x00007C18
	adds r0, r1, r2
	bl sub_08028C0C
	b _08028008
	.align 2, 0
_08027FF4: .4byte gGame
_08027FF8: .4byte 0x000082B6
_08027FFC: .4byte 0x00007C18
_08028000:
	ldr r2, _08028018 @ =0x00007C18
	adds r0, r1, r2
	bl sub_08028780
_08028008:
	ldr r0, _0802801C @ =gUnknown_0200D818
	bl sub_080293BC
	bl sub_08029D10
	pop {r0}
	bx r0
	.align 2, 0
_08028018: .4byte 0x00007C18
_0802801C: .4byte gUnknown_0200D818

	thumb_func_start sub_08028020
sub_08028020: @ 0x08028020
	push {r4, lr}
	ldr r4, _0802803C @ =gUnknown_0200D818
	adds r0, r4, #0
	bl sub_08028C70
	adds r0, r4, #0
	bl sub_080293BC
	bl sub_08029D10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802803C: .4byte gUnknown_0200D818

	thumb_func_start sub_08028040
sub_08028040: @ 0x08028040
	push {r4, lr}
	ldr r4, _08028070 @ =gUnknown_0200D818
	adds r0, r4, #0
	bl sub_08029054
	adds r0, r4, #0
	bl sub_080293BC
	bl sub_08029D10
	ldr r0, _08028074 @ =0x000020F0
	adds r1, r4, r0
	ldr r0, _08028078 @ =0x06010000
	str r0, [r1]
	ldr r0, _0802807C @ =0x000020F4
	adds r4, r4, r0
	movs r0, #0
	strh r0, [r4]
	bl sub_08030180
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08028070: .4byte gUnknown_0200D818
_08028074: .4byte 0x000020F0
_08028078: .4byte 0x06010000
_0802807C: .4byte 0x000020F4

	thumb_func_start sub_08028080
sub_08028080: @ 0x08028080
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _08028138 @ =0x0000069F
	adds r4, r6, r0
	ldrb r1, [r4]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	movs r5, #9
	rsbs r5, r5, #0
	ands r0, r5
	movs r1, #0x10
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	movs r3, #0x41
	rsbs r3, r3, #0
	ands r0, r3
	movs r2, #0x7f
	ands r0, r2
	strb r0, [r4]
	movs r0, #0xd4
	lsls r0, r0, #3
	adds r4, r6, r0
	ldrb r0, [r4]
	ands r1, r0
	ands r1, r3
	ands r1, r2
	strb r1, [r4]
	ldr r1, _0802813C @ =0x000006A1
	adds r2, r6, r1
	ldrb r1, [r2]
	adds r3, #0x3f
	adds r0, r3, #0
	ands r0, r1
	ands r0, r5
	strb r0, [r2]
	ldr r2, _08028140 @ =0x00000686
	adds r0, r6, r2
	movs r2, #0
	movs r1, #0
	strh r1, [r0]
	ldr r5, _08028144 @ =0x0000068C
	adds r0, r6, r5
	strh r1, [r0]
	adds r5, #2
	adds r0, r6, r5
	strh r1, [r0]
	adds r5, #2
	adds r0, r6, r5
	strh r1, [r0]
	ldr r0, _08028148 @ =0x00000692
	adds r1, r6, r0
	ldr r0, _0802814C @ =0x0000FFFF
	strh r0, [r1]
	ldrb r1, [r4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	adds r5, #6
	adds r1, r6, r5
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08028150 @ =0x00000697
	adds r0, r6, r1
	strb r2, [r0]
	ldr r0, _08028154 @ =gGame
	ldr r2, _08028158 @ =0x00008494
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08028128
	adds r5, #8
	adds r2, r6, r5
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r2]
_08028128:
	ldr r1, _0802815C @ =0x00000683
	adds r0, r6, r1
	ldrb r1, [r0]
	adds r2, r1, #0
	cmp r2, #6
	bne _08028164
	ldr r2, _08028160 @ =0x00000684
	b _0802818A
	.align 2, 0
_08028138: .4byte 0x0000069F
_0802813C: .4byte 0x000006A1
_08028140: .4byte 0x00000686
_08028144: .4byte 0x0000068C
_08028148: .4byte 0x00000692
_0802814C: .4byte 0x0000FFFF
_08028150: .4byte 0x00000697
_08028154: .4byte gGame
_08028158: .4byte 0x00008494
_0802815C: .4byte 0x00000683
_08028160: .4byte 0x00000684
_08028164:
	ldr r0, _08028178 @ =gUnknown_02005080
	ldrb r0, [r0]
	cmp r0, #4
	bne _08028180
	cmp r2, #3
	bne _08028180
	ldr r5, _0802817C @ =0x00000684
	adds r0, r6, r5
	b _0802818C
	.align 2, 0
_08028178: .4byte gUnknown_02005080
_0802817C: .4byte 0x00000684
_08028180:
	ldr r1, _08028214 @ =0x00000684
	adds r0, r6, r1
	movs r1, #0
	strb r1, [r0]
	ldr r2, _08028218 @ =0x00000683
_0802818A:
	adds r0, r6, r2
_0802818C:
	strb r1, [r0]
	ldr r5, _0802821C @ =0x00000681
	adds r0, r6, r5
	movs r1, #0
	strb r1, [r0]
	ldr r2, _08028220 @ =0x00000682
	adds r0, r6, r2
	strb r1, [r0]
	adds r5, #0x17
	adds r0, r6, r5
	strh r1, [r0]
	adds r2, #0x18
	adds r0, r6, r2
	strh r1, [r0]
	adds r0, r6, #0
	bl sub_08028264
	bl sub_0802B4D8
	movs r4, #0
	subs r5, #0x30
	adds r1, r6, r5
	movs r2, #0
_080281BA:
	lsls r0, r4, #2
	adds r0, r1, r0
	str r2, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _080281BA
	ldr r1, _0802821C @ =0x00000681
	adds r0, r6, r1
	ldrb r4, [r0]
	cmp r4, #4
	bhi _08028200
	movs r2, #2
	rsbs r2, r2, #0
	adds r6, r2, #0
	movs r0, #3
	rsbs r0, r0, #0
	adds r5, r0, #0
_080281E0:
	adds r0, r4, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r1, #0x85
	strb r4, [r1]
	adds r0, #0xbc
	ldrb r1, [r0]
	ands r1, r6
	ands r1, r5
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _080281E0
_08028200:
	ldr r0, _08028224 @ =gUnknown_02005080
	ldrb r0, [r0]
	cmp r0, #5
	bhi _0802825C
	lsls r0, r0, #2
	ldr r1, _08028228 @ =_0802822C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08028214: .4byte 0x00000684
_08028218: .4byte 0x00000683
_0802821C: .4byte 0x00000681
_08028220: .4byte 0x00000682
_08028224: .4byte gUnknown_02005080
_08028228: .4byte _0802822C
_0802822C: @ jump table
	.4byte _08028244 @ case 0
	.4byte _0802825C @ case 1
	.4byte _08028244 @ case 2
	.4byte _0802824A @ case 3
	.4byte _0802824A @ case 4
	.4byte _0802824E @ case 5
_08028244:
	bl sub_08034FFC
	b _0802825C
_0802824A:
	bl sub_08035114
_0802824E:
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #0
	movs r1, #0
	movs r3, #1
	bl sub_08035384
_0802825C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08028264
sub_08028264: @ 0x08028264
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r2, _080282B0 @ =0x00000681
	ldr r1, [sp, #4]
	adds r2, r1, r2
	str r2, [sp, #0x18]
_0802827E:
	ldr r3, [sp, #0x10]
	ldr r4, _080282B4 @ =gSave
	adds r0, r3, r4
	ldrb r6, [r0]
	adds r5, r3, #0
	adds r5, #1
	cmp r6, #0
	bne _08028290
	b _08028756
_08028290:
	ldr r0, _080282B8 @ =gCharStats
	movs r1, #0x6c
	muls r1, r6, r1
	adds r1, r1, r0
	ldrb r4, [r1, #1]
	cmp r4, #0
	bne _080282A0
	b _08028756
_080282A0:
	ldr r0, [r1, #0x18]
	cmp r0, #0
	bgt _080282BC
	mov r0, sp
	movs r1, #1
	strh r1, [r0]
	b _080282C2
	.align 2, 0
_080282B0: .4byte 0x00000681
_080282B4: .4byte gSave
_080282B8: .4byte gCharStats
_080282BC:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
_080282C2:
	ldr r2, [sp, #0x18]
	ldrb r0, [r2]
	cmp r0, #0
	bne _080282DE
	ldr r0, _08028698 @ =gGame
	ldr r3, _0802869C @ =0x000082AC
	adds r2, r0, r3
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080282DE
	ldrh r4, [r2]
_080282DE:
	ldr r1, [sp, #0x18]
	ldrb r0, [r1]
	bl get_obj_direct
	adds r7, r0, #0
	adds r0, r4, #0
	bl sub_08036D18
	str r0, [sp, #8]
	adds r0, r4, #0
	bl sub_08036D3C
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	lsls r0, r2, #1
	ldr r3, _080286A0 @ =gUnknown_02004A96
	adds r0, r0, r3
	ldrh r0, [r0]
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _0802832C
	adds r0, r6, #0
	bl sub_08001D2C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802832C
	ldr r2, [sp, #4]
	ldr r3, _080286A4 @ =0x00000682
	adds r1, r2, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0802832C:
	adds r0, r7, #0
	adds r0, #0xbc
	str r0, [sp, #0x1c]
	ldrb r0, [r0]
	movs r1, #2
	orrs r0, r1
	ldr r1, [sp, #0x1c]
	strb r0, [r1]
	ldr r2, [sp, #0x18]
	ldrb r0, [r2]
	subs r0, #1
	adds r3, r7, #0
	adds r3, #0x85
	str r3, [sp, #0x20]
	strb r0, [r3]
	adds r0, r7, #0
	adds r0, #0x86
	str r0, [sp, #0x24]
	strb r6, [r0]
	adds r1, r7, #0
	adds r1, #0x88
	str r1, [sp, #0x28]
	strh r4, [r1]
	ldr r2, [sp, #0x10]
	rsbs r0, r2, #0
	lsrs r0, r0, #0x1f
	subs r1, #1
	strb r0, [r1]
	adds r1, #5
	ldr r0, _080286A8 @ =0x0000FFFF
	strh r0, [r1]
	movs r3, #0
	str r3, [r7, #0x1c]
	adds r1, #2
	movs r0, #1
	strb r0, [r1]
	adds r3, r7, #0
	adds r3, #0xbf
	ldrb r1, [r3]
	subs r0, #0x42
	ands r0, r1
	strb r0, [r3]
	adds r6, r7, #0
	adds r6, #0xcc
	ldrb r1, [r6]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6]
	ldrb r1, [r3]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3]
	adds r5, r7, #0
	adds r5, #0xc8
	ldrb r1, [r5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	str r3, [sp, #0x34]
	bl sub_080355AC
	adds r1, r7, #0
	adds r1, #0x9e
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0xa0
	movs r4, #0
	strh r4, [r0]
	ldrb r0, [r5]
	movs r2, #7
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r5]
	ldr r4, [sp, #0x1c]
	ldrb r1, [r4]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r4]
	bl sub_0801A6AC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0xbd
	adds r2, r2, r7
	mov r8, r2
	movs r4, #3
	ands r1, r4
	lsls r1, r1, #3
	ldrb r0, [r2]
	movs r2, #0x19
	rsbs r2, r2, #0
	mov sb, r2
	mov r2, sb
	ands r0, r2
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	bl sub_08036CD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r0, r4
	lsls r0, r0, #5
	mov r2, r8
	ldrb r1, [r2]
	movs r4, #0x61
	rsbs r4, r4, #0
	adds r2, r4, #0
	ands r1, r2
	orrs r1, r0
	mov r0, r8
	strb r1, [r0]
	adds r1, r7, #0
	adds r1, #0xcb
	str r1, [sp, #0x2c]
	ldrb r1, [r1]
	movs r0, #0x7f
	ands r0, r1
	ldr r2, [sp, #0x2c]
	strb r0, [r2]
	ldr r3, [sp, #0x34]
	ldrb r1, [r3]
	adds r4, #0x58
	mov r8, r4
	mov r0, r8
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r0, r2
	strb r0, [r3]
	adds r2, r7, #0
	adds r2, #0xc6
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	movs r3, #0x7f
	ands r0, r3
	strb r0, [r2]
	movs r4, #0xc7
	adds r4, r4, r7
	mov sl, r4
	ldrb r1, [r4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	subs r3, #0x82
	ands r0, r3
	strb r0, [r4]
	movs r0, #0xca
	adds r0, r0, r7
	mov sb, r0
	ldrb r1, [r0]
	movs r4, #5
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	mov r1, sb
	strb r0, [r1]
	mov r2, sl
	ldrb r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r2]
	mov r0, sb
	ldrb r1, [r0]
	mov r0, r8
	ands r0, r1
	mov r1, sb
	strb r0, [r1]
	ldrb r1, [r5]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	movs r2, #0x7f
	ands r0, r2
	strb r0, [r5]
	adds r2, r7, #0
	adds r2, #0xcd
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, [sp, #8]
	ldrb r1, [r0, #1]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	movs r2, #1
	ands r1, r2
	lsls r1, r1, #3
	mov r0, sl
	ldrb r2, [r0]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	mov r1, sl
	strb r0, [r1]
	ldrb r1, [r6]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6]
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	lsls r0, r0, #0x1a
	movs r1, #0xc9
	adds r1, r1, r7
	mov ip, r1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #4
	ldrb r1, [r1]
	movs r2, #0x71
	rsbs r2, r2, #0
	ands r1, r2
	orrs r1, r0
	mov r0, ip
	strb r1, [r0]
	ldr r2, [sp, #0xc]
	ldrb r0, [r2, #1]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	lsls r0, r0, #7
	movs r2, #0x7f
	ands r1, r2
	orrs r1, r0
	mov r0, ip
	strb r1, [r0]
	ldr r2, [sp, #0xc]
	ldrb r1, [r2, #1]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1f
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #5
	ldr r0, [sp, #0x2c]
	ldrb r2, [r0]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	ldr r1, [sp, #0x2c]
	strb r0, [r1]
	ldrb r1, [r5]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	mov r2, sb
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	movs r2, #0x7f
	ands r0, r2
	mov r1, sb
	strb r0, [r1]
	ldr r2, [sp, #0x2c]
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r3
	ands r0, r4
	mov r1, r8
	ands r0, r1
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r0, r2
	ldr r1, [sp, #0x2c]
	strb r0, [r1]
	ldrb r0, [r6]
	ands r3, r0
	ands r3, r4
	mov r2, r8
	ands r3, r2
	strb r3, [r6]
	mov r0, sp
	ldrh r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	movs r4, #1
	ands r0, r4
	lsls r0, r0, #4
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r3, r1
	orrs r3, r0
	strb r3, [r6]
	movs r2, #0
	str r2, [r7, #0x2c]
	str r2, [r7, #0x30]
	str r2, [r7, #0x34]
	mov r3, sl
	ldrb r1, [r3]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3]
	str r2, [r7, #0x38]
	str r2, [r7, #0x3c]
	ldr r4, [sp, #0xc]
	ldrb r0, [r4, #2]
	lsrs r0, r0, #1
	adds r2, r7, #0
	adds r2, #0xa6
	strh r0, [r2]
	ldrb r0, [r4, #3]
	lsrs r0, r0, #1
	adds r1, r7, #0
	adds r1, #0xa8
	strh r0, [r1]
	ldrb r0, [r6]
	lsls r0, r0, #0x1b
	ldr r3, [sp, #0x1c]
	mov r8, r3
	ldr r4, [sp, #0x20]
	mov sb, r4
	mov sl, r6
	str r2, [sp, #0x30]
	adds r6, r1, #0
	cmp r0, #0
	bge _08028618
	subs r5, #0x3d
	ldrb r4, [r5]
	ldr r1, [sp, #0x24]
	ldrb r0, [r1]
	ldr r2, [sp, #0x28]
	ldrh r1, [r2]
	movs r2, #4
	bl sub_08035C0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	beq _08028618
	ldrb r4, [r5]
	ldr r3, [sp, #0x24]
	ldrb r0, [r3]
	ldr r2, [sp, #0x28]
	ldrh r1, [r2]
	movs r2, #0
	bl sub_08035C0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	beq _08028618
	mov r3, r8
	ldrb r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	adds r0, #0x50
	strb r0, [r5]
	adds r0, r7, #0
	adds r0, #0x92
	movs r4, #0
	strh r4, [r0]
_08028618:
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0
	bne _08028626
	ldrh r0, [r6]
	adds r0, #4
	strh r0, [r6]
_08028626:
	ldr r2, [sp, #0x30]
	ldrh r0, [r2]
	lsls r0, r0, #4
	adds r1, r7, #0
	adds r1, #0xaa
	movs r4, #0
	movs r3, #0
	strh r0, [r1]
	ldrh r0, [r6]
	lsls r0, r0, #4
	adds r1, #2
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0xb2
	strh r3, [r0]
	subs r0, #2
	strh r3, [r0]
	subs r0, #2
	strh r3, [r0]
	mov r0, sl
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	mov r1, sl
	strb r0, [r1]
	ldr r2, [sp, #8]
	ldrb r1, [r2, #8]
	adds r0, r7, #0
	adds r0, #0xb4
	strb r1, [r0]
	adds r0, #2
	strh r3, [r0]
	adds r0, #4
	movs r1, #3
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	adds r0, #3
	strb r4, [r0]
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
	ldr r0, _080286AC @ =gUnknown_02005080
	ldrb r0, [r0]
	b _080286B0
	.align 2, 0
_08028698: .4byte gGame
_0802869C: .4byte 0x000082AC
_080286A0: .4byte gUnknown_02004A96
_080286A4: .4byte 0x00000682
_080286A8: .4byte 0x0000FFFF
_080286AC: .4byte gUnknown_02005080
_080286B0:
	cmp r0, #0
	beq _080286B8
	cmp r0, #2
	bne _080286F0
_080286B8:
	mov r1, r8
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x8b
	mov r1, sp
	ldrb r1, [r1, #0x14]
	strb r1, [r0]
	adds r0, #7
	strh r3, [r0]
	movs r0, #7
	ldr r2, [sp, #0x14]
	ands r2, r0
	lsls r2, r2, #2
	mov r3, r8
	ldrb r0, [r3]
	movs r3, #0x1d
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	mov r1, r8
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x8f
	strb r4, [r0]
_080286F0:
	ldr r2, [sp, #0x18]
	ldrb r0, [r2]
	subs r0, #1
	lsls r0, r0, #1
	ldr r3, _08028774 @ =gSave
	ldr r4, _08028778 @ =0x00000222
	adds r1, r3, r4
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #4
	movs r1, #0
	strh r0, [r7]
	ldrb r0, [r2]
	subs r0, #1
	lsls r0, r0, #1
	ldr r2, _0802877C @ =gUnknown_02004A8C
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #4
	strh r0, [r7, #2]
	strh r1, [r7, #4]
	strh r1, [r7, #6]
	ldr r3, [sp, #8]
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
	ldr r5, [sp, #0x10]
	adds r5, #1
	adds r3, r7, #0
	adds r3, #0x74
	movs r4, #0xff
_0802873E:
	adds r0, r3, r2
	ldrb r1, [r0]
	orrs r1, r4
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xc
	bls _0802873E
	adds r0, r7, #0
	bl sub_08036BA4
_08028756:
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	cmp r0, #4
	bhi _08028762
	b _0802827E
_08028762:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028774: .4byte gSave
_08028778: .4byte 0x00000222
_0802877C: .4byte gUnknown_02004A8C

	thumb_func_start sub_08028780
sub_08028780: @ 0x08028780
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #4]
	ldr r1, _0802885C @ =0x0000069E
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r2]
	ldr r2, [sp, #4]
	ldr r4, _08028860 @ =0x0000069F
	adds r5, r2, r4
	ldrb r1, [r5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	movs r7, #9
	rsbs r7, r7, #0
	ands r0, r7
	movs r1, #0x10
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	movs r4, #0x41
	rsbs r4, r4, #0
	ands r0, r4
	movs r2, #0x7f
	ands r0, r2
	strb r0, [r5]
	ldr r5, [sp, #4]
	movs r0, #0xd4
	lsls r0, r0, #3
	adds r2, r5, r0
	ldrb r0, [r2]
	ands r1, r0
	ands r1, r4
	strb r1, [r2]
	ldr r4, _08028864 @ =0x000006A1
	adds r1, r5, r4
	ldrb r0, [r1]
	ands r3, r0
	ands r3, r7
	strb r3, [r1]
	ldr r1, _08028868 @ =0x0000068C
	adds r0, r5, r1
	movs r4, #0
	movs r3, #0
	strh r3, [r0]
	adds r1, #2
	adds r0, r5, r1
	strh r3, [r0]
	adds r1, #2
	adds r0, r5, r1
	strh r3, [r0]
	ldr r0, _0802886C @ =0x00000692
	adds r1, r5, r0
	ldr r0, _08028870 @ =0x0000FFFF
	strh r0, [r1]
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r2, _08028874 @ =0x00000696
	adds r1, r5, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08028878 @ =0x00000697
	adds r0, r5, r1
	strb r4, [r0]
	subs r2, #0x13
	adds r1, r5, r2
	ldrb r0, [r1]
	cmp r0, #4
	bne _0802882C
	strb r4, [r1]
_0802882C:
	ldrb r1, [r1]
	ldr r4, [sp, #4]
	ldr r5, _0802887C @ =0x00000684
	adds r0, r4, r5
	strb r1, [r0]
	movs r1, #0xd3
	lsls r1, r1, #3
	adds r0, r4, r1
	strh r3, [r0]
	ldr r2, _08028880 @ =0x0000069A
	adds r0, r4, r2
	strh r3, [r0]
	bl sub_0802B4D8
	ldr r2, _08028884 @ =gGame
	ldr r3, _08028888 @ =0x00005958
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802888C
	cmp r0, #1
	beq _080288AC
	b _080288C0
	.align 2, 0
_0802885C: .4byte 0x0000069E
_08028860: .4byte 0x0000069F
_08028864: .4byte 0x000006A1
_08028868: .4byte 0x0000068C
_0802886C: .4byte 0x00000692
_08028870: .4byte 0x0000FFFF
_08028874: .4byte 0x00000696
_08028878: .4byte 0x00000697
_0802887C: .4byte 0x00000684
_08028880: .4byte 0x0000069A
_08028884: .4byte gGame
_08028888: .4byte 0x00005958
_0802888C:
	ldr r4, _080288A4 @ =0x00005984
	adds r1, r2, r4
	ldr r5, _080288A8 @ =0x0000595A
	adds r0, r2, r5
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sp
	bl sub_08029350
	b _080288C0
	.align 2, 0
_080288A4: .4byte 0x00005984
_080288A8: .4byte 0x0000595A
_080288AC:
	ldr r1, _08028924 @ =0x0000597C
	adds r0, r2, r1
	ldrh r1, [r0]
	mov r0, sp
	strh r1, [r0]
	ldr r3, _08028928 @ =0x0000597E
	adds r0, r2, r3
	ldrh r1, [r0]
	mov r0, sp
	strh r1, [r0, #2]
_080288C0:
	movs r4, #0
	str r4, [sp, #8]
_080288C4:
	ldr r5, [sp, #8]
	lsls r1, r5, #2
	ldr r2, [sp, #4]
	movs r3, #0xcd
	lsls r3, r3, #3
	adds r0, r2, r3
	adds r0, r0, r1
	movs r4, #0
	str r4, [r0]
	ldr r0, [sp, #8]
	bl get_obj_direct
	adds r7, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _080288EA
	b _08028BD4
_080288EA:
	ldr r3, _0802892C @ =gGame
	ldr r5, _08028930 @ =0x0000598C
	adds r0, r3, r5
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _08028952
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08028934
	adds r0, r7, #0
	adds r0, #0x86
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x88
	ldrh r1, [r1]
	movs r2, #4
	bl sub_08035C0C
	adds r1, r7, #0
	adds r1, #0x8b
	strb r0, [r1]
	adds r6, r7, #0
	adds r6, #0xcc
	b _08028988
	.align 2, 0
_08028924: .4byte 0x0000597C
_08028928: .4byte 0x0000597E
_0802892C: .4byte gGame
_08028930: .4byte 0x0000598C
_08028934:
	adds r0, r7, #0
	adds r0, #0x86
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x88
	ldrh r1, [r1]
	movs r2, #0
	bl sub_08035C0C
	adds r1, r7, #0
	adds r1, #0x8b
	strb r0, [r1]
	adds r6, r7, #0
	adds r6, #0xcc
	b _08028988
_08028952:
	adds r1, r7, #0
	adds r1, #0xcc
	ldrb r0, [r1]
	lsls r0, r0, #0x1b
	adds r6, r1, #0
	cmp r0, #0
	bge _0802897C
	ldr r1, _08028978 @ =0x0000595A
	adds r0, r3, r1
	ldrb r0, [r0]
	adds r0, #0x50
	adds r1, r7, #0
	adds r1, #0x8b
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x92
	strh r2, [r0]
	adds r2, r0, #0
	b _0802898C
	.align 2, 0
_08028978: .4byte 0x0000595A
_0802897C:
	ldr r2, _08028BF8 @ =0x0000595A
	adds r0, r3, r2
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x8b
	strb r0, [r1]
_08028988:
	adds r2, r7, #0
	adds r2, #0x92
_0802898C:
	adds r1, r7, #0
	adds r1, #0x8c
	ldr r0, _08028BFC @ =0x0000FFFF
	strh r0, [r1]
	movs r3, #0
	str r3, [r7, #0x1c]
	strh r3, [r2]
	adds r1, #2
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x8f
	movs r4, #0
	strb r4, [r0]
	movs r5, #0xbf
	adds r5, r5, r7
	mov r8, r5
	ldrb r1, [r5]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	ldrb r1, [r6]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6]
	ldrb r1, [r5]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5]
	adds r5, r7, #0
	adds r5, #0xc8
	ldrb r1, [r5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	bl sub_080355AC
	adds r1, r7, #0
	adds r1, #0x9e
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0xa0
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrb r0, [r5]
	movs r2, #7
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r5]
	ldr r3, _08028C00 @ =gGame
	ldr r4, _08028BF8 @ =0x0000595A
	adds r0, r3, r4
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r3, r7, #0
	adds r3, #0xbc
	movs r0, #7
	ands r2, r0
	lsls r2, r2, #2
	ldrb r0, [r3]
	movs r4, #0x1d
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r2
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	movs r2, #0x41
	rsbs r2, r2, #0
	ands r0, r2
	strb r0, [r3]
	ldr r3, _08028C00 @ =gGame
	ldr r4, _08028C04 @ =0x00005959
	adds r0, r3, r4
	ldrb r2, [r0]
	movs r0, #0xbd
	adds r0, r0, r7
	mov sl, r0
	movs r4, #3
	ands r2, r4
	lsls r2, r2, #3
	ldrb r0, [r0]
	movs r3, #0x19
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	mov r1, sl
	strb r0, [r1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	bl sub_08036CD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r0, r4
	lsls r0, r0, #5
	mov r2, sl
	ldrb r1, [r2]
	movs r3, #0x61
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	mov r4, sl
	strb r1, [r4]
	movs r0, #0xcb
	adds r0, r0, r7
	mov sb, r0
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	mov r1, sb
	strb r0, [r1]
	mov r2, r8
	ldrb r1, [r2]
	movs r4, #9
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	adds r3, #0x50
	ands r0, r3
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	movs r2, #0xc7
	adds r2, r2, r7
	mov ip, r2
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r2, #3
	rsbs r2, r2, #0
	ands r0, r2
	mov r3, ip
	strb r0, [r3]
	movs r0, #0xca
	adds r0, r0, r7
	mov r8, r0
	ldrb r1, [r0]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r3, #5
	rsbs r3, r3, #0
	ands r0, r3
	mov r1, r8
	strb r0, [r1]
	mov r0, ip
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	mov r1, ip
	strb r0, [r1]
	mov r0, r8
	ldrb r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	mov r1, r8
	strb r0, [r1]
	ldrb r1, [r5]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r5]
	movs r0, #0xcd
	adds r0, r0, r7
	mov ip, r0
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	mov r1, ip
	strb r0, [r1]
	ldrb r1, [r5]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	mov r5, r8
	ldrb r1, [r5]
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	movs r5, #0x7f
	ands r0, r5
	mov r1, r8
	strb r0, [r1]
	mov r5, sb
	ldrb r1, [r5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r2
	ands r0, r3
	ands r0, r4
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r5]
	ldrb r0, [r6]
	ands r2, r0
	ands r2, r3
	ands r2, r4
	strb r2, [r6]
	adds r0, r7, #0
	adds r0, #0xb2
	movs r2, #0
	strh r2, [r0]
	subs r0, #2
	strh r2, [r0]
	subs r0, #2
	strh r2, [r0]
	ldrb r1, [r6]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r6]
	adds r0, r7, #0
	adds r0, #0xba
	movs r1, #3
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	adds r0, #3
	movs r3, #0
	strb r3, [r0]
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
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #4
	strh r0, [r7]
	mov r2, sp
	ldrh r0, [r2, #2]
	lsls r0, r0, #4
	strh r0, [r7, #2]
	movs r4, #0
	strh r4, [r7, #4]
	strh r4, [r7, #6]
	ldr r5, _08028C00 @ =gGame
	ldr r1, _08028C08 @ =0x0000598C
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08028BC8
	mov r3, sl
	ldrb r0, [r3]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sp
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	ldrh r2, [r2, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	bl sub_0801A978
	str r0, [r7, #0x18]
_08028BC8:
	adds r0, r7, #0
	bl sub_08035FE4
	adds r0, r7, #0
	bl sub_08036388
_08028BD4:
	ldr r0, [sp, #8]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	cmp r0, #4
	bhi _08028BE4
	b _080288C4
_08028BE4:
	bl sub_08034FFC
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028BF8: .4byte 0x0000595A
_08028BFC: .4byte 0x0000FFFF
_08028C00: .4byte gGame
_08028C04: .4byte 0x00005959
_08028C08: .4byte 0x0000598C

	thumb_func_start sub_08028C0C
sub_08028C0C: @ 0x08028C0C
	push {r4, r5, r6, lr}
	movs r5, #0
	movs r6, #3
_08028C12:
	adds r0, r5, #0
	bl get_obj_direct
	adds r4, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08028C60
	bl sub_0801A6AC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r4, #0xbd
	ands r1, r6
	lsls r1, r1, #3
	ldrb r0, [r4]
	movs r3, #0x19
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	bl sub_08036CD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r0, r6
	lsls r0, r0, #5
	ldrb r1, [r4]
	movs r3, #0x61
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
_08028C60:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bls _08028C12
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08028C70
sub_08028C70: @ 0x08028C70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r0
	ldr r2, _08029014 @ =0x0000069F
	add r2, sl
	ldrb r1, [r2]
	movs r5, #0x21
	rsbs r5, r5, #0
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2]
	ldr r2, _08029018 @ =0x000006A1
	add r2, sl
	ldrb r1, [r2]
	movs r4, #9
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _0802901C @ =0x00000697
	add r0, sl
	movs r2, #0
	strb r2, [r0]
	ldr r0, _08029020 @ =0x00000683
	add r0, sl
	ldrb r1, [r0]
	ldr r0, _08029024 @ =0x00000684
	add r0, sl
	strb r1, [r0]
	ldr r0, _08029028 @ =0x0000068C
	add r0, sl
	movs r3, #0
	strh r2, [r0]
	ldr r0, _0802902C @ =0x0000068E
	add r0, sl
	strh r2, [r0]
	ldr r1, _08029030 @ =0x00000696
	add r1, sl
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08029034 @ =0x00000681
	add r0, sl
	strb r3, [r0]
	ldr r0, _08029038 @ =0x00000682
	add r0, sl
	strb r3, [r0]
	movs r0, #0xd3
	lsls r0, r0, #3
	add r0, sl
	strh r2, [r0]
	ldr r0, _0802903C @ =0x0000069A
	add r0, sl
	strh r2, [r0]
	movs r0, #0
	str r0, [sp, #8]
_08028CE6:
	ldr r2, [sp, #8]
	lsls r1, r2, #2
	movs r0, #0xcd
	lsls r0, r0, #3
	add r0, sl
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	ldr r0, _08029040 @ =gSave
	adds r0, r2, r0
	ldrb r5, [r0]
	adds r7, r2, #0
	adds r7, #1
	cmp r5, #0
	bne _08028D06
	b _08028FB4
_08028D06:
	ldr r1, _08029044 @ =gCharStats
	movs r0, #0x6c
	muls r0, r5, r0
	adds r0, r0, r1
	ldrb r4, [r0, #1]
	cmp r4, #0
	bne _08028D16
	b _08028FB4
_08028D16:
	ldr r0, _08029034 @ =0x00000681
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028D34
	ldr r0, _08029048 @ =gGame
	ldr r3, _0802904C @ =0x000082AC
	adds r2, r0, r3
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08028D34
	ldrh r4, [r2]
_08028D34:
	ldr r0, [sp, #8]
	bl get_obj_direct
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_08036D18
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08036D3C
	str r0, [sp, #4]
	ldr r1, _08029034 @ =0x00000681
	add r1, sl
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_08001D2C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08028D6C
	ldr r1, _08029038 @ =0x00000682
	add r1, sl
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08028D6C:
	adds r1, r6, #0
	adds r1, #0x85
	str r1, [sp, #0xc]
	mov r2, sp
	ldrb r2, [r2, #8]
	strb r2, [r1]
	adds r1, #7
	ldr r0, _08029050 @ =0x0000FFFF
	strh r0, [r1]
	movs r3, #0
	str r3, [r6, #0x1c]
	adds r2, r6, #0
	adds r2, #0xbc
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r4, r6, #0
	adds r4, #0xbd
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	bl sub_08036CD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #5
	ldrb r1, [r4]
	movs r5, #0x61
	rsbs r5, r5, #0
	adds r2, r5, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	movs r0, #0xcb
	adds r0, r0, r6
	mov r8, r0
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	mov r1, r8
	strb r0, [r1]
	adds r2, r6, #0
	adds r2, #0xbf
	ldrb r1, [r2]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	movs r3, #0x11
	rsbs r3, r3, #0
	ands r0, r3
	adds r5, #0x40
	ands r0, r5
	strb r0, [r2]
	movs r0, #0xc7
	adds r0, r0, r6
	mov sb, r0
	ldrb r1, [r0]
	adds r3, #0xe
	adds r0, r3, #0
	ands r0, r1
	mov r1, sb
	strb r0, [r1]
	adds r7, r6, #0
	adds r7, #0xca
	ldrb r1, [r7]
	adds r5, #0x1c
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r7]
	mov r2, sb
	ldrb r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r7]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r7]
	adds r4, #0xb
	ldrb r1, [r4]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r4]
	adds r2, r6, #0
	adds r2, #0xcd
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r2]
	ldr r2, [sp, #4]
	ldrb r0, [r2]
	lsls r0, r0, #0x1a
	movs r1, #0xc9
	adds r1, r1, r6
	mov ip, r1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #4
	ldrb r1, [r1]
	movs r2, #0x71
	rsbs r2, r2, #0
	ands r1, r2
	orrs r1, r0
	mov r0, ip
	strb r1, [r0]
	ldr r2, [sp, #4]
	ldrb r0, [r2, #1]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	lsls r0, r0, #7
	movs r2, #0x7f
	ands r1, r2
	orrs r1, r0
	mov r0, ip
	strb r1, [r0]
	ldr r2, [sp, #4]
	ldrb r1, [r2, #1]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1f
	lsls r1, r1, #5
	mov r0, r8
	ldrb r2, [r0]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	adds r2, r6, #0
	adds r2, #0xc6
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r4]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	ldrb r1, [r7]
	adds r0, r3, #0
	ands r0, r1
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r0, r2
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r7]
	mov r2, r8
	ldrb r1, [r2]
	movs r7, #2
	rsbs r7, r7, #0
	adds r0, r7, #0
	ands r0, r1
	ands r0, r3
	ands r0, r5
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r0, r2
	mov r1, r8
	strb r0, [r1]
	adds r4, #4
	ldrb r0, [r4]
	ands r3, r0
	ands r3, r5
	adds r2, #8
	ands r3, r2
	strb r3, [r4]
	movs r3, #0
	str r3, [r6, #0x2c]
	str r3, [r6, #0x30]
	str r3, [r6, #0x34]
	mov r5, sb
	ldrb r1, [r5]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5]
	str r3, [r6, #0x38]
	str r3, [r6, #0x3c]
	ldr r1, [sp, #4]
	ldrb r0, [r1, #2]
	lsrs r0, r0, #1
	adds r3, r6, #0
	adds r3, #0xa6
	movs r2, #0
	mov r8, r2
	strh r0, [r3]
	ldrb r0, [r1, #3]
	lsrs r1, r0, #1
	adds r2, r6, #0
	adds r2, #0xa8
	strh r1, [r2]
	ldr r5, [sp, #0xc]
	ldrb r0, [r5]
	cmp r0, #0
	bne _08028F16
	adds r0, r1, #4
	strh r0, [r2]
_08028F16:
	ldrh r0, [r3]
	lsls r0, r0, #4
	adds r1, r6, #0
	adds r1, #0xaa
	strh r0, [r1]
	ldrh r0, [r2]
	lsls r0, r0, #4
	adds r1, #2
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0xb2
	movs r1, #0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	ldrb r1, [r4]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4]
	ldr r2, [sp]
	ldrb r1, [r2, #8]
	adds r0, r6, #0
	adds r0, #0xb4
	strb r1, [r0]
	adds r0, #2
	movs r3, #0
	strh r3, [r0]
	adds r0, #4
	movs r1, #3
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	adds r0, #3
	mov r5, r8
	strb r5, [r0]
	adds r2, r6, #0
	adds r2, #0x48
	ldrb r1, [r2]
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r2]
	adds r2, #8
	ldrb r1, [r2]
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, [sp]
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x19
	adds r0, #8
	strh r0, [r6, #0x14]
	ldrb r0, [r1]
	lsrs r0, r0, #4
	adds r0, #1
	lsls r0, r0, #3
	strh r0, [r6, #0x16]
	movs r2, #0
	ldr r7, [sp, #8]
	adds r7, #1
	adds r3, r6, #0
	adds r3, #0x74
	movs r4, #0xff
_08028F9C:
	adds r0, r3, r2
	ldrb r1, [r0]
	orrs r1, r4
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xc
	bls _08028F9C
	adds r0, r6, #0
	bl sub_08036BA4
_08028FB4:
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	cmp r0, #4
	bhi _08028FC0
	b _08028CE6
_08028FC0:
	ldr r0, _08029034 @ =0x00000681
	add r0, sl
	ldrb r0, [r0]
	str r0, [sp, #8]
	cmp r0, #4
	bhi _08029000
	movs r2, #2
	rsbs r2, r2, #0
	adds r5, r2, #0
	movs r3, #3
	rsbs r3, r3, #0
	adds r4, r3, #0
_08028FD8:
	ldr r0, [sp, #8]
	bl get_obj_direct
	adds r6, r0, #0
	adds r0, #0x85
	mov r1, sp
	ldrb r1, [r1, #8]
	strb r1, [r0]
	adds r0, #0x37
	ldrb r1, [r0]
	ands r1, r5
	ands r1, r4
	strb r1, [r0]
	ldr r0, [sp, #8]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	cmp r0, #4
	bls _08028FD8
_08029000:
	bl sub_0802B4D8
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029014: .4byte 0x0000069F
_08029018: .4byte 0x000006A1
_0802901C: .4byte 0x00000697
_08029020: .4byte 0x00000683
_08029024: .4byte 0x00000684
_08029028: .4byte 0x0000068C
_0802902C: .4byte 0x0000068E
_08029030: .4byte 0x00000696
_08029034: .4byte 0x00000681
_08029038: .4byte 0x00000682
_0802903C: .4byte 0x0000069A
_08029040: .4byte gSave
_08029044: .4byte gCharStats
_08029048: .4byte gGame
_0802904C: .4byte 0x000082AC
_08029050: .4byte 0x0000FFFF

	thumb_func_start sub_08029054
sub_08029054: @ 0x08029054
	push {lr}
	ldr r2, _08029070 @ =0x00000681
	adds r1, r0, r2
	movs r2, #0
	strb r2, [r1]
	ldr r3, _08029074 @ =0x00000682
	adds r1, r0, r3
	strb r2, [r1]
	bl sub_08029078
	bl sub_0802B4D8
	pop {r0}
	bx r0
	.align 2, 0
_08029070: .4byte 0x00000681
_08029074: .4byte 0x00000682

	thumb_func_start sub_08029078
sub_08029078: @ 0x08029078
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _080290F8 @ =0xFFFFFBE8
	add sp, r4
	movs r1, #0x82
	lsls r1, r1, #3
	add r1, sp
	str r0, [r1]
	movs r1, #0x82
	lsls r1, r1, #3
	mov r0, sp
	bl memclear
	mov r5, sp
	movs r2, #0
	ldr r3, _080290FC @ =0x00000414
	add r3, sp
	str r2, [r3]
	add r0, sp, #0xbc
	mov r8, r0
	movs r1, #0x85
	add r1, sp
	mov sb, r1
	add r6, sp, #0x88
	mov sl, r2
_080290B0:
	ldr r0, _08029100 @ =gSave
	ldr r2, _080290FC @ =0x00000414
	add r2, sp
	ldr r2, [r2]
	adds r0, r2, r0
	ldrb r4, [r0]
	cmp r4, #0
	bne _080290C2
	b _08029214
_080290C2:
	ldr r1, _08029104 @ =gCharStats
	movs r0, #0x6c
	muls r0, r4, r0
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	cmp r1, #0
	bne _080290D2
	b _08029214
_080290D2:
	ldr r0, _08029108 @ =gGame
	ldr r3, _0802910C @ =0x0000829B
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #6
	bne _08029110
	adds r0, r4, #0
	bl sub_0802B924
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080290F4
	b _08029214
_080290F4:
	b _08029124
	.align 2, 0
_080290F8: .4byte 0xFFFFFBE8
_080290FC: .4byte 0x00000414
_08029100: .4byte gSave
_08029104: .4byte gCharStats
_08029108: .4byte gGame
_0802910C: .4byte 0x0000829B
_08029110:
	adds r0, r1, #0
	bl sub_0802B8F4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	beq _08029214
_08029124:
	movs r3, #0x82
	lsls r3, r3, #3
	add r3, sp
	ldr r3, [r3]
	ldr r1, _08029330 @ =0x00000681
	adds r0, r3, r1
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_08001D2C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08029154
	movs r0, #0x82
	lsls r0, r0, #3
	add r0, sp
	ldr r0, [r0]
	ldr r2, _08029334 @ =0x00000682
	adds r1, r0, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08029154:
	adds r0, r7, #0
	bl get_obj_direct
	adds r4, r0, #0
	ldr r1, _08029338 @ =0x00000414
	add r1, sp
	ldr r0, [r1]
	bl get_obj_direct
	adds r7, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0xd0
	bl sub_08001B18
	ldrh r0, [r6]
	bl sub_08036D18
	ldrh r0, [r6]
	bl sub_08036D3C
	adds r2, r0, #0
	ldr r3, _08029338 @ =0x00000414
	add r3, sp
	ldrb r0, [r3]
	mov r3, sb
	strb r0, [r3]
	ldrb r0, [r6, #3]
	lsrs r0, r0, #3
	mov r4, sb
	cmp r0, #0xb
	bgt _080291A2
	cmp r0, #0xa
	blt _080291A2
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	strb r0, [r6, #3]
_080291A2:
	ldr r0, _0802933C @ =0x0000FFFF
	strh r0, [r6, #4]
	mov r3, sl
	str r3, [r5, #0x1c]
	mov r1, r8
	ldrb r0, [r1, #0x10]
	movs r3, #0x11
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	mov r1, r8
	strb r0, [r1, #0x10]
	ldr r0, [r7, #0x40]
	str r0, [r5, #0x40]
	mov r3, sl
	str r3, [r5, #0x2c]
	str r3, [r5, #0x30]
	str r3, [r5, #0x34]
	ldrb r1, [r1, #0xb]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	mov r1, r8
	strb r0, [r1, #0xb]
	str r3, [r5, #0x38]
	str r3, [r5, #0x3c]
	ldrb r0, [r2, #2]
	lsrs r0, r0, #1
	adds r3, r5, #0
	adds r3, #0xa6
	strh r0, [r6, #0x1e]
	ldrb r0, [r2, #3]
	lsrs r1, r0, #1
	adds r2, r5, #0
	adds r2, #0xa8
	strh r1, [r6, #0x20]
	ldrb r0, [r4]
	cmp r0, #0
	bne _080291F6
	adds r0, r1, #4
	strh r0, [r6, #0x20]
_080291F6:
	ldrh r0, [r3]
	lsls r0, r0, #4
	strh r0, [r6, #0x22]
	ldrh r0, [r2]
	lsls r0, r0, #4
	strh r0, [r6, #0x24]
	ldrh r0, [r7]
	strh r0, [r5]
	ldrh r0, [r7, #2]
	strh r0, [r5, #2]
	movs r2, #0xd0
	add r8, r2
	add sb, r2
	adds r6, #0xd0
	adds r5, #0xd0
_08029214:
	ldr r3, _08029338 @ =0x00000414
	add r3, sp
	ldr r0, [r3]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r3]
	cmp r0, #4
	bhi _08029228
	b _080290B0
_08029228:
	ldr r1, _08029340 @ =gGame
	ldr r2, _08029344 @ =0x0000829B
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #6
	bne _0802930E
	ldr r3, _08029348 @ =0x000082AC
	adds r4, r1, r3
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0802930E
	movs r0, #0
	bl get_obj_direct
	adds r5, r0, #0
	ldrh r1, [r4]
	add r0, sp, #0x88
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x8b
	ldrb r1, [r0]
	mov r0, sp
	adds r0, #0x8b
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x92
	ldrh r1, [r0]
	mov r0, sp
	adds r0, #0x92
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	add r3, sp, #0xbc
	movs r1, #0x1c
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r5, #0
	adds r0, #0x8f
	ldrb r1, [r0]
	mov r0, sp
	adds r0, #0x8f
	strb r1, [r0]
	mov r2, sp
	adds r2, #0xc7
	ldrb r1, [r2]
	movs r4, #9
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x8a
	ldrb r1, [r0]
	mov r0, sp
	adds r0, #0x8a
	strb r1, [r0]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x24]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0x28]
	adds r0, r5, #0
	adds r0, #0x94
	ldrh r1, [r0]
	add r0, sp, #0x94
	strh r1, [r0]
	adds r6, r5, #0
	adds r6, #0xc9
	ldrb r0, [r6]
	adds r3, #0xd
	movs r1, #6
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r2, [r6]
	movs r1, #8
	ands r1, r2
	ands r0, r4
	orrs r0, r1
	strb r0, [r3]
	adds r0, r5, #0
	adds r0, #0x81
	ldrb r1, [r0]
	mov r0, sp
	adds r0, #0x81
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r1, [r0]
	mov r0, sp
	adds r0, #0x82
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r1, [r0]
	mov r0, sp
	adds r0, #0x83
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x84
	ldrb r1, [r0]
	add r0, sp, #0x84
	strb r1, [r0]
_0802930E:
	ldr r1, _0802934C @ =gUnknown_0200C3C8
	movs r2, #0x82
	lsls r2, r2, #3
	mov r0, sp
	bl sub_08001B18
	movs r3, #0x83
	lsls r3, r3, #3
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029330: .4byte 0x00000681
_08029334: .4byte 0x00000682
_08029338: .4byte 0x00000414
_0802933C: .4byte 0x0000FFFF
_08029340: .4byte gGame
_08029344: .4byte 0x0000829B
_08029348: .4byte 0x000082AC
_0802934C: .4byte gUnknown_0200C3C8

	thumb_func_start sub_08029350
sub_08029350: @ 0x08029350
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #7
	bhi _080293B4
	lsls r0, r0, #2
	ldr r1, _08029368 @ =_0802936C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08029368: .4byte _0802936C
_0802936C: @ jump table
	.4byte _080293AC @ case 0
	.4byte _0802938C @ case 1
	.4byte _0802938C @ case 2
	.4byte _0802938C @ case 3
	.4byte _080293A0 @ case 4
	.4byte _08029398 @ case 5
	.4byte _08029398 @ case 6
	.4byte _08029398 @ case 7
_0802938C:
	bl sub_0801A5EC
	subs r0, #0x10
	strh r0, [r4]
	ldrh r0, [r5, #2]
	b _080293B2
_08029398:
	movs r0, #0x10
	strh r0, [r4]
	ldrh r0, [r5, #2]
	b _080293B2
_080293A0:
	ldrh r0, [r5]
	strh r0, [r4]
	bl sub_0801A604
	subs r0, #8
	b _080293B2
_080293AC:
	ldrh r0, [r5]
	strh r0, [r4]
	movs r0, #0x20
_080293B2:
	strh r0, [r4, #2]
_080293B4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080293BC
sub_080293BC: @ 0x080293BC
	push {lr}
	bl sub_080293C8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080293C8
sub_080293C8: @ 0x080293C8
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r0, _08029414 @ =gGame
	ldr r1, _08029418 @ =0x00008299
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r6, r1
	bhs _0802940E
	adds r7, r0, #0
_080293DA:
	adds r0, r6, #0
	bl get_char_stats
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_0802B874
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0802941C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080294DC
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080295E8
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrb r0, [r7]
	cmp r6, r0
	blo _080293DA
_0802940E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029414: .4byte gGame
_08029418: .4byte 0x00008299

	thumb_func_start sub_0802941C
sub_0802941C: @ 0x0802941C
	push {lr}
	bl sub_08029428
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08029428
sub_08029428: @ 0x08029428
	push {r4, r5, r6, lr}
	mov ip, r0
	adds r3, r1, #0
	movs r0, #0
	str r0, [r3, #4]
	strh r0, [r3, #0xe]
	strh r0, [r3, #0x14]
	strh r0, [r3, #0x1a]
	strh r0, [r3, #0x20]
	strh r0, [r3, #0x26]
	strh r0, [r3, #0x2c]
	movs r6, #0
	ldr r5, _080294D8 @ =gGoodsInfo
	movs r4, #0x6c
_08029444:
	mov r2, ip
	adds r2, #0x34
	adds r2, r2, r6
	ldrb r0, [r2]
	adds r1, r0, #0
	muls r1, r4, r1
	adds r0, r5, #0
	adds r0, #0x10
	adds r1, r1, r0
	ldr r0, [r3, #4]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r3, #4]
	ldrb r0, [r2]
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0x14]
	ldrh r1, [r3, #0xe]
	adds r0, r0, r1
	strh r0, [r3, #0xe]
	ldrb r0, [r2]
	muls r0, r4, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r3, #0x14]
	adds r0, r0, r1
	strh r0, [r3, #0x14]
	ldrb r0, [r2]
	muls r0, r4, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x19]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r3, #0x1a]
	adds r0, r0, r1
	strh r0, [r3, #0x1a]
	ldrb r0, [r2]
	muls r0, r4, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x1a]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r3, #0x20]
	adds r0, r0, r1
	strh r0, [r3, #0x20]
	ldrb r0, [r2]
	muls r0, r4, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x1b]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r3, #0x26]
	adds r0, r0, r1
	strh r0, [r3, #0x26]
	ldrb r0, [r2]
	muls r0, r4, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x1c]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r3, #0x2c]
	adds r0, r0, r1
	strh r0, [r3, #0x2c]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #3
	bls _08029444
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080294D8: .4byte gGoodsInfo

	thumb_func_start sub_080294DC
sub_080294DC: @ 0x080294DC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r5, #0x20]
	ldr r0, [r4, #4]
	adds r1, r1, r0
	ldr r2, _080295E4 @ =0x000003E7
	cmp r1, r2
	ble _080294F0
	adds r1, r2, #0
_080294F0:
	str r1, [r4]
	movs r0, #0x24
	ldrsh r1, [r5, r0]
	movs r3, #0xe
	ldrsh r0, [r4, r3]
	adds r1, r1, r0
	cmp r1, r2
	ble _08029502
	adds r1, r2, #0
_08029502:
	movs r6, #0
	strh r1, [r4, #0xc]
	ldrb r0, [r5]
	bl sub_08001D58
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08029516
	strh r6, [r4, #0xe]
	strh r6, [r4, #0xc]
_08029516:
	adds r1, r5, #0
	adds r1, #0x28
	movs r2, #0x14
	ldrsh r0, [r4, r2]
	ldrb r1, [r1]
	adds r0, r0, r1
	cmp r0, #0xff
	ble _08029528
	movs r0, #0xff
_08029528:
	strh r0, [r4, #0x12]
	adds r1, r5, #0
	adds r1, #0x29
	movs r3, #0x1a
	ldrsh r0, [r4, r3]
	ldrb r1, [r1]
	adds r0, r0, r1
	cmp r0, #0xff
	ble _0802953C
	movs r0, #0xff
_0802953C:
	movs r2, #0
	strh r0, [r4, #0x18]
	adds r1, r5, #0
	adds r1, #0x2a
	movs r3, #0x20
	ldrsh r0, [r4, r3]
	ldrb r1, [r1]
	adds r0, r0, r1
	cmp r0, #0xff
	ble _08029552
	movs r0, #0xff
_08029552:
	strh r0, [r4, #0x1e]
	adds r1, r5, #0
	adds r1, #0x2b
	movs r3, #0x26
	ldrsh r0, [r4, r3]
	ldrb r1, [r1]
	adds r0, r0, r1
	cmp r0, #0xff
	ble _08029566
	movs r0, #0xff
_08029566:
	strh r0, [r4, #0x24]
	adds r1, r5, #0
	adds r1, #0x2c
	movs r3, #0x2c
	ldrsh r0, [r4, r3]
	ldrb r1, [r1]
	adds r0, r0, r1
	cmp r0, #0xff
	ble _0802957A
	movs r0, #0xff
_0802957A:
	strh r0, [r4, #0x2a]
	ldr r0, [r4]
	cmp r0, #0
	bgt _08029586
	movs r0, #1
	str r0, [r4]
_08029586:
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08029590
	strh r2, [r4, #0xc]
_08029590:
	movs r3, #0x12
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _0802959A
	strh r2, [r4, #0x12]
_0802959A:
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080295A4
	strh r2, [r4, #0x18]
_080295A4:
	movs r3, #0x1e
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _080295AE
	strh r2, [r4, #0x1e]
_080295AE:
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080295B8
	strh r2, [r4, #0x24]
_080295B8:
	movs r3, #0x2a
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _080295C2
	strh r2, [r4, #0x2a]
_080295C2:
	ldr r0, [r4]
	str r0, [r4, #8]
	ldrh r0, [r4, #0xc]
	strh r0, [r4, #0x10]
	ldrh r0, [r4, #0x12]
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
	ldrh r0, [r4, #0x1e]
	strh r0, [r4, #0x22]
	ldrh r0, [r4, #0x24]
	strh r0, [r4, #0x28]
	ldrh r0, [r4, #0x2a]
	strh r0, [r4, #0x2e]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080295E4: .4byte 0x000003E7

	thumb_func_start sub_080295E8
sub_080295E8: @ 0x080295E8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	adds r0, r7, #0
	movs r1, #0
	bl sub_0802B88C
	adds r4, r0, #0
	ldr r1, [r5, #0x18]
	mov r0, sp
	movs r2, #0
	movs r3, #3
	bl sub_08002634
	movs r2, #0
	movs r6, #0
	adds r3, r4, #3
_0802960E:
	adds r1, r4, r2
	lsls r0, r2, #1
	add r0, sp
	ldrh r0, [r0]
	strb r0, [r1]
	adds r0, r3, r2
	strb r6, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #2
	bls _0802960E
	ldr r1, [r5, #0x18]
	strh r1, [r4, #0xa]
	ldr r2, _08029680 @ =0x0000FFFF
	adds r0, r2, #0
	ands r0, r1
	strh r0, [r4, #8]
	ands r0, r2
	strh r0, [r4, #6]
	adds r0, r7, #0
	movs r1, #1
	bl sub_0802B88C
	adds r4, r0, #0
	movs r0, #0x1c
	ldrsh r1, [r5, r0]
	mov r0, sp
	movs r2, #0
	movs r3, #3
	bl sub_08002634
	movs r2, #0
	movs r6, #0
	adds r3, r4, #3
_08029654:
	adds r1, r4, r2
	lsls r0, r2, #1
	add r0, sp
	ldrh r0, [r0]
	strb r0, [r1]
	adds r0, r3, r2
	strb r6, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #2
	bls _08029654
	ldrh r0, [r5, #0x1c]
	strh r0, [r4, #0xa]
	ldrh r0, [r5, #0x1c]
	strh r0, [r4, #8]
	strh r0, [r4, #6]
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029680: .4byte 0x0000FFFF

	thumb_func_start sub_08029684
sub_08029684: @ 0x08029684
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r4, _080296D0 @ =gSave
	mov r8, r4
	adds r4, r0, r4
	strb r1, [r4]
	lsls r6, r0, #1
	ldr r4, _080296D4 @ =0x00000222
	add r4, r8
	adds r4, r6, r4
	ldrh r5, [r3]
	strh r5, [r4]
	movs r4, #0x8b
	lsls r4, r4, #2
	add r4, r8
	adds r4, r6, r4
	ldrh r3, [r3, #2]
	strh r3, [r4]
	ldr r5, _080296D8 @ =0x00000236
	add r8, r5
	add r6, r8
	strh r2, [r6]
	ldr r2, _080296DC @ =gGame
	ldr r3, _080296E0 @ =0x00008294
	adds r2, r2, r3
	adds r0, r0, r2
	strb r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080296D0: .4byte gSave
_080296D4: .4byte 0x00000222
_080296D8: .4byte 0x00000236
_080296DC: .4byte gGame
_080296E0: .4byte 0x00008294

	thumb_func_start sub_080296E4
sub_080296E4: @ 0x080296E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r1, _0802973C @ =gGame
	ldr r0, _08029740 @ =0x00008299
	adds r3, r1, r0
	ldrb r0, [r3]
	cmp r0, #5
	bne _08029704
	b _08029AE6
_08029704:
	ldr r2, _08029744 @ =gSave
	adds r2, r0, r2
	ldr r4, _08029748 @ =0x00008294
	adds r1, r1, r4
	adds r0, r0, r1
	mov r1, sp
	ldrb r1, [r1, #4]
	strb r1, [r0]
	mov r4, sp
	ldrb r4, [r4, #4]
	strb r4, [r2]
	ldr r2, _0802974C @ =gCharStats
	movs r0, #0x6c
	ldr r4, [sp, #4]
	adds r1, r4, #0
	muls r1, r0, r1
	adds r0, r1, r2
	ldrb r5, [r0, #1]
	ldrb r4, [r3]
	adds r2, #0x18
	adds r1, r1, r2
	ldr r0, [r1]
	cmp r0, #0
	bgt _08029750
	mov r1, sp
	movs r0, #1
	b _08029754
	.align 2, 0
_0802973C: .4byte gGame
_08029740: .4byte 0x00008299
_08029744: .4byte gSave
_08029748: .4byte 0x00008294
_0802974C: .4byte gCharStats
_08029750:
	mov r1, sp
	movs r0, #0
_08029754:
	strh r0, [r1]
	adds r0, r4, #0
	bl get_obj_direct
	adds r7, r0, #0
	adds r0, r5, #0
	bl sub_08036D18
	str r0, [sp, #8]
	adds r0, r5, #0
	bl sub_08036D3C
	str r0, [sp, #0xc]
	adds r0, r4, #0
	bl sub_08035138
	str r0, [sp, #0x10]
	adds r0, r7, #0
	adds r0, #0xbc
	str r0, [sp, #0x14]
	ldrb r0, [r0]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	ldr r2, [sp, #0x14]
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x85
	str r0, [sp, #0x18]
	strb r4, [r0]
	adds r0, #1
	mov r1, sp
	ldrb r1, [r1, #4]
	strb r1, [r0]
	adds r0, #2
	strh r5, [r0]
	rsbs r0, r4, #0
	lsrs r0, r0, #0x1f
	adds r1, r7, #0
	adds r1, #0x87
	strb r0, [r1]
	ldr r2, [sp, #0x10]
	ldrh r1, [r2, #4]
	lsrs r1, r1, #5
	lsls r1, r1, #3
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	adds r0, r0, r1
	adds r1, r7, #0
	adds r1, #0x8b
	strb r0, [r1]
	adds r1, #1
	ldr r0, _08029AF8 @ =0x0000FFFF
	strh r0, [r1]
	movs r4, #0
	str r4, [r7, #0x1c]
	adds r0, r7, #0
	adds r0, #0x92
	strh r4, [r0]
	adds r1, #2
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x8f
	movs r1, #0
	strb r1, [r0]
	movs r2, #0xbf
	adds r2, r2, r7
	mov sb, r2
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r4, r7, #0
	adds r4, #0xcc
	str r4, [sp, #0x1c]
	ldrb r1, [r4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r6, r7, #0
	adds r6, #0xc8
	ldrb r1, [r6]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6]
	bl sub_080355AC
	adds r1, r7, #0
	adds r1, #0x9e
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0xa0
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrb r1, [r6]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6]
	ldr r2, [sp, #0x10]
	str r2, [r7, #0x40]
	ldrb r1, [r2, #4]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	movs r4, #7
	ands r1, r4
	lsls r1, r1, #2
	ldr r0, [sp, #0x14]
	ldrb r2, [r0]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	movs r5, #0x21
	rsbs r5, r5, #0
	ands r0, r5
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	ldr r2, [sp, #8]
	ldrb r1, [r2, #1]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	movs r4, #0xc7
	adds r4, r4, r7
	mov sl, r4
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #3
	ldrb r2, [r4]
	movs r4, #9
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r2
	orrs r0, r1
	mov r1, sl
	strb r0, [r1]
	ldr r2, [sp, #0x1c]
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, [sp, #0x10]
	ldrb r1, [r0, #5]
	adds r3, r7, #0
	adds r3, #0xbd
	movs r2, #3
	mov r8, r2
	lsrs r1, r1, #6
	lsls r1, r1, #3
	ldrb r2, [r3]
	movs r0, #0x19
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	str r3, [sp, #0x24]
	bl sub_08036CD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #5
	ldr r3, [sp, #0x24]
	ldrb r2, [r3]
	movs r1, #0x61
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	movs r2, #0xcb
	adds r2, r2, r7
	mov r8, r2
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	mov r0, sb
	ldrb r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	movs r3, #0x11
	rsbs r3, r3, #0
	ands r0, r3
	ands r0, r5
	mov r1, sb
	strb r0, [r1]
	mov r2, sl
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r2, #3
	rsbs r2, r2, #0
	ands r0, r2
	mov r1, sl
	strb r0, [r1]
	ldr r0, [sp, #0x14]
	ldrb r1, [r0]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	mov r0, sl
	ldrb r1, [r0]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, sl
	strb r0, [r1]
	adds r1, r7, #0
	adds r1, #0xca
	ldrb r0, [r1]
	ands r4, r0
	strb r4, [r1]
	ldrb r1, [r6]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	movs r4, #0x7f
	ands r0, r4
	strb r0, [r6]
	adds r1, r7, #0
	adds r1, #0xcd
	ldrb r0, [r1]
	ands r2, r0
	strb r2, [r1]
	ldr r1, [sp, #0xc]
	ldrb r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	adds r4, r7, #0
	adds r4, #0xc9
	movs r2, #7
	ands r0, r2
	lsls r0, r0, #4
	ldrb r2, [r4]
	movs r1, #0x71
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	ldr r2, [sp, #0xc]
	ldrb r0, [r2, #1]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	lsls r0, r0, #7
	movs r2, #0x7f
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	ldr r4, [sp, #0xc]
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #5
	mov r2, r8
	ldrb r1, [r2]
	ands r5, r1
	orrs r5, r0
	strb r5, [r2]
	adds r1, r7, #0
	adds r1, #0xc6
	ldrb r0, [r1]
	movs r4, #0x41
	rsbs r4, r4, #0
	ands r4, r0
	movs r0, #0x7f
	ands r4, r0
	strb r4, [r1]
	mov r0, sp
	ldrh r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	movs r4, #1
	ands r0, r4
	lsls r0, r0, #4
	ldr r2, [sp, #0x1c]
	ldrb r1, [r2]
	ands r3, r1
	orrs r3, r0
	strb r3, [r2]
	movs r4, #0
	str r4, [r7, #0x2c]
	str r4, [r7, #0x30]
	str r4, [r7, #0x34]
	mov r0, sl
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	mov r1, sl
	strb r0, [r1]
	str r4, [r7, #0x38]
	str r4, [r7, #0x3c]
	ldr r2, [sp, #0xc]
	ldrb r0, [r2, #2]
	lsrs r0, r0, #1
	adds r3, r7, #0
	adds r3, #0xa6
	strh r0, [r3]
	ldrb r0, [r2, #3]
	lsrs r1, r0, #1
	adds r2, r7, #0
	adds r2, #0xa8
	strh r1, [r2]
	ldr r4, [sp, #0x18]
	ldrb r0, [r4]
	cmp r0, #0
	bne _080299EC
	adds r0, r1, #4
	strh r0, [r2]
_080299EC:
	ldrh r0, [r3]
	lsls r0, r0, #4
	adds r1, r7, #0
	adds r1, #0xaa
	strh r0, [r1]
	ldrh r0, [r2]
	lsls r0, r0, #4
	adds r1, #2
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0xb2
	movs r1, #0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	ldr r2, [sp, #0x1c]
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r4, [sp, #8]
	ldrb r1, [r4, #8]
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
	ldr r4, [sp, #0x10]
	ldrh r0, [r4]
	strh r0, [r7]
	ldrh r0, [r4, #2]
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
	adds r3, r7, #0
	adds r3, #0x74
	movs r4, #0xff
_08029A84:
	adds r0, r3, r2
	ldrb r1, [r0]
	orrs r1, r4
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xc
	bls _08029A84
	adds r0, r7, #0
	bl sub_08036BA4
	ldr r4, _08029AFC @ =gGame
	ldr r2, _08029B00 @ =0x00008299
	adds r1, r4, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _08029AC6
	ldr r0, [sp, #4]
	bl sub_08001D2C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08029AC6
	ldr r0, _08029B04 @ =0x0000829A
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08029AC6:
	ldr r4, _08029B08 @ =gUnknown_0200D818
	adds r0, r4, #0
	bl sub_080293BC
	bl sub_08029D10
	ldr r2, _08029B0C @ =0x000020F0
	adds r1, r4, r2
	ldr r0, _08029B10 @ =0x06010000
	str r0, [r1]
	ldr r0, _08029B14 @ =0x000020F4
	adds r4, r4, r0
	movs r0, #0
	strh r0, [r4]
	bl sub_08030180
_08029AE6:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029AF8: .4byte 0x0000FFFF
_08029AFC: .4byte gGame
_08029B00: .4byte 0x00008299
_08029B04: .4byte 0x0000829A
_08029B08: .4byte gUnknown_0200D818
_08029B0C: .4byte 0x000020F0
_08029B10: .4byte 0x06010000
_08029B14: .4byte 0x000020F4

	thumb_func_start sub_08029B18
sub_08029B18: @ 0x08029B18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _08029C88 @ =gGame
	ldr r1, _08029C8C @ =0x00008299
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	bhi _08029B36
	b _08029C78
_08029B36:
	ldr r0, _08029C90 @ =gSave
	adds r0, r6, r0
	ldrb r0, [r0]
	bl sub_08029CAC
	movs r0, #0x82
	lsls r0, r0, #3
	bl sub_0803B800
	str r0, [sp, #0x1c]
	movs r5, #0
	add r2, sp, #0x14
	mov sb, r2
_08029B50:
	adds r0, r5, #0
	bl get_obj_direct
	adds r4, r0, #0
	lsls r0, r5, #2
	mov r3, sp
	adds r1, r3, r0
	ldr r0, [r4, #0x40]
	str r0, [r1]
	mov r1, sb
	adds r0, r1, r5
	movs r2, #0
	strb r2, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bls _08029B50
	ldr r0, _08029C90 @ =gSave
	adds r0, r6, r0
	strb r2, [r0]
	ldr r0, _08029C88 @ =gGame
	ldr r3, _08029C8C @ =0x00008299
	adds r1, r0, r3
	strb r2, [r1]
	ldr r1, _08029C94 @ =0x0000829A
	adds r0, r0, r1
	strb r2, [r0]
	ldr r2, [sp, #0x1c]
	mov r8, r2
	movs r5, #0
_08029B8E:
	ldr r0, _08029C90 @ =gSave
	adds r0, r5, r0
	ldrb r1, [r0]
	adds r7, r1, #0
	cmp r7, #0
	beq _08029C0E
	ldr r3, _08029C88 @ =gGame
	mov sl, r3
	ldr r6, _08029C8C @ =0x00008299
	add r6, sl
	ldrb r0, [r6]
	add r0, sb
	strb r1, [r0]
	adds r0, r5, #0
	bl get_obj_direct
	adds r4, r0, #0
	ldrb r0, [r6]
	adds r1, r4, #0
	adds r1, #0x85
	strb r0, [r1]
	ldrb r0, [r6]
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	str r0, [r4, #0x40]
	ldrb r0, [r1]
	cmp r0, #0
	bne _08029BE4
	adds r0, r4, #0
	adds r0, #0x88
	ldrh r0, [r0]
	bl sub_08036D3C
	ldrb r0, [r0, #3]
	lsrs r0, r0, #1
	adds r0, #4
	adds r1, r4, #0
	adds r1, #0xa8
	strh r0, [r1]
	lsls r0, r0, #4
	adds r1, #4
	strh r0, [r1]
_08029BE4:
	adds r0, r4, #0
	mov r1, r8
	movs r2, #0xd0
	bl sub_08001B18
	movs r0, #0xd0
	add r8, r0
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	adds r0, r7, #0
	bl sub_08001D2C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08029C0E
	ldr r1, _08029C94 @ =0x0000829A
	add r1, sl
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08029C0E:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bls _08029B8E
	movs r5, #0
	ldr r4, _08029C98 @ =gUnknown_0200C3C8
	ldr r3, _08029C90 @ =gSave
	mov r2, sb
_08029C20:
	adds r1, r5, r3
	adds r0, r2, r5
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bls _08029C20
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r4, #0
	bl memclear
	ldr r1, _08029C9C @ =0x00001AD1
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0xd0
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, [sp, #0x1c]
	adds r1, r4, #0
	bl sub_08001B18
	ldr r0, [sp, #0x1c]
	bl sub_0803B860
	ldr r2, _08029CA0 @ =0x00001450
	adds r0, r4, r2
	bl sub_080293BC
	bl sub_08029D10
	movs r3, #0xd5
	lsls r3, r3, #6
	adds r1, r4, r3
	ldr r0, _08029CA4 @ =0x06010000
	str r0, [r1]
	ldr r0, _08029CA8 @ =0x00003544
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	bl sub_08030180
_08029C78:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029C88: .4byte gGame
_08029C8C: .4byte 0x00008299
_08029C90: .4byte gSave
_08029C94: .4byte 0x0000829A
_08029C98: .4byte gUnknown_0200C3C8
_08029C9C: .4byte 0x00001AD1
_08029CA0: .4byte 0x00001450
_08029CA4: .4byte 0x06010000
_08029CA8: .4byte 0x00003544

	thumb_func_start sub_08029CAC
sub_08029CAC: @ 0x08029CAC
	push {r4, r5, r6, lr}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r2, #0
	movs r1, #0
_08029CB8:
	mov r3, sp
	adds r0, r3, r2
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #4
	bls _08029CB8
	movs r3, #0
	movs r2, #0
	ldr r5, _08029D0C @ =gUnknown_0200DE94
_08029CCE:
	adds r0, r2, r5
	ldrb r1, [r0]
	cmp r1, r4
	beq _08029CE2
	mov r6, sp
	adds r0, r6, r3
	strb r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08029CE2:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #4
	bls _08029CCE
	movs r2, #0
	ldr r3, _08029D0C @ =gUnknown_0200DE94
_08029CF0:
	adds r1, r2, r3
	mov r4, sp
	adds r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #4
	bls _08029CF0
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08029D0C: .4byte gUnknown_0200DE94

	thumb_func_start sub_08029D10
sub_08029D10: @ 0x08029D10
	push {r4, lr}
	bl sub_08029D9C
	ldr r2, _08029D88 @ =gSave
	ldr r0, _08029D8C @ =0x0000071A
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08029D44
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08029D90 @ =0x0000071C
	adds r4, r2, r0
	ldr r0, [r4]
	cmp r0, #0
	bne _08029D44
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	bl sub_08002FD4
	adds r0, #0x64
	lsls r0, r0, #4
	strh r0, [r4]
_08029D44:
	ldr r1, _08029D88 @ =gSave
	ldr r0, _08029D94 @ =0x00000734
	adds r2, r1, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08029D7C
	movs r0, #0
	strb r0, [r2]
	ldr r2, _08029D98 @ =0x00000736
	adds r4, r1, r2
	ldrh r0, [r4]
	cmp r0, #0
	bne _08029D7C
	adds r2, #2
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #0
	bne _08029D7C
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	bl sub_08002FD4
	adds r0, #0x64
	lsls r0, r0, #4
	strh r0, [r4]
_08029D7C:
	bl sub_08029E18
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08029D88: .4byte gSave
_08029D8C: .4byte 0x0000071A
_08029D90: .4byte 0x0000071C
_08029D94: .4byte 0x00000734
_08029D98: .4byte 0x00000736

	thumb_func_start sub_08029D9C
sub_08029D9C: @ 0x08029D9C
	push {r4, lr}
	ldr r0, _08029E10 @ =gGame
	ldr r1, _08029E14 @ =0x000082B8
	adds r4, r0, r1
	ldrb r1, [r4]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4]
	movs r0, #2
	bl sub_0802B8C4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08029DD8
	adds r0, r2, #0
	bl get_char_stats
	bl ch_has_psi
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08029DD8
	ldrb r0, [r4]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4]
_08029DD8:
	movs r0, #4
	bl sub_0802B8C4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08029E0A
	adds r0, r2, #0
	bl get_char_stats
	bl ch_has_psi
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08029E0A
	ldr r0, _08029E10 @ =gGame
	ldr r1, _08029E14 @ =0x000082B8
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0]
_08029E0A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08029E10: .4byte gGame
_08029E14: .4byte 0x000082B8

	thumb_func_start sub_08029E18
sub_08029E18: @ 0x08029E18
	push {r4, r5, lr}
	ldr r0, _08029E44 @ =gGame
	ldr r1, _08029E48 @ =0x000082B9
	adds r5, r0, r1
	ldrb r1, [r5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	ldr r1, _08029E4C @ =gSave
	ldr r2, _08029E50 @ =0x0000071B
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08029E54
	adds r2, #0x1a
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08029EDA
	b _08029E8E
	.align 2, 0
_08029E44: .4byte gGame
_08029E48: .4byte 0x000082B9
_08029E4C: .4byte gSave
_08029E50: .4byte 0x0000071B
_08029E54:
	movs r0, #2
	bl sub_0802B8C4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08029E8E
	adds r0, r2, #0
	bl get_obj_direct
	adds r4, r0, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #8
	bl sub_08033578
	adds r2, r4, #0
	adds r2, #0x50
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r5]
_08029E8E:
	ldr r0, _08029EE0 @ =gSave
	ldr r1, _08029EE4 @ =0x00000735
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08029EDA
	movs r0, #4
	bl sub_0802B8C4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08029EDA
	adds r0, r2, #0
	bl get_obj_direct
	adds r4, r0, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #8
	bl sub_08033578
	adds r2, r4, #0
	adds r2, #0x50
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08029EE8 @ =gGame
	ldr r2, _08029EEC @ =0x000082B9
	adds r1, r1, r2
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
_08029EDA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08029EE0: .4byte gSave
_08029EE4: .4byte 0x00000735
_08029EE8: .4byte gGame
_08029EEC: .4byte 0x000082B9

	thumb_func_start sub_08029EF0
sub_08029EF0: @ 0x08029EF0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r0, #0
	bl get_obj_direct
	adds r6, r0, #0
	movs r7, #1
	movs r0, #0
	mov sb, r0
	movs r1, #3
	mov r8, r1
_08029F0A:
	adds r0, r7, #0
	bl get_obj_direct
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0xbc
	ldrb r0, [r3]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08029FAC
	adds r0, r6, #0
	adds r0, #0x8b
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x8b
	strb r0, [r1]
	adds r1, #1
	ldr r0, _08029FC4 @ =0x0000FFFF
	strh r0, [r1]
	mov r5, sb
	str r5, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x92
	strh r5, [r0]
	adds r1, #2
	movs r0, #1
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	movs r2, #0x1c
	ands r2, r0
	ldrb r0, [r3]
	movs r5, #0x1d
	rsbs r5, r5, #0
	adds r1, r5, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	adds r0, r6, #0
	adds r0, #0xbd
	ldrb r1, [r0]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1e
	adds r5, r4, #0
	adds r5, #0xbd
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #3
	ldrb r0, [r5]
	movs r3, #0x19
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	bl sub_08036CD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #5
	ldrb r1, [r5]
	movs r3, #0x61
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	ldrh r0, [r6]
	strh r0, [r4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #2]
_08029FAC:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #4
	bls _08029F0A
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029FC4: .4byte 0x0000FFFF

	thumb_func_start sub_08029FC8
sub_08029FC8: @ 0x08029FC8
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	cmp r0, #0
	beq _08029FE0
	cmp r0, #1
	beq _0802A004
	b _0802A024
_08029FE0:
	ldr r1, _08029FF8 @ =gSave
	movs r2, #0xdf
	lsls r2, r2, #3
	adds r0, r1, r2
	strh r4, [r0]
	ldrh r2, [r3]
	ldr r4, _08029FFC @ =0x000006FA
	adds r0, r1, r4
	strh r2, [r0]
	ldrh r2, [r3, #2]
	ldr r3, _0802A000 @ =0x000006FC
	b _0802A01A
	.align 2, 0
_08029FF8: .4byte gSave
_08029FFC: .4byte 0x000006FA
_0802A000: .4byte 0x000006FC
_0802A004:
	ldr r1, _0802A02C @ =gSave
	movs r2, #0xe0
	lsls r2, r2, #3
	adds r0, r1, r2
	strh r4, [r0]
	ldrh r2, [r3]
	ldr r4, _0802A030 @ =0x00000702
	adds r0, r1, r4
	strh r2, [r0]
	ldrh r2, [r3, #2]
	ldr r3, _0802A034 @ =0x00000704
_0802A01A:
	adds r0, r1, r3
	strh r2, [r0]
	adds r4, #4
	adds r1, r1, r4
	strh r5, [r1]
_0802A024:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802A02C: .4byte gSave
_0802A030: .4byte 0x00000702
_0802A034: .4byte 0x00000704

	thumb_func_start sub_0802A038
sub_0802A038: @ 0x0802A038
	push {lr}
	ldr r2, _0802A04C @ =gSave
	ldr r1, [r2, #8]
	adds r1, r1, r0
	ldr r0, _0802A050 @ =0x000F423F
	cmp r1, r0
	bls _0802A054
	str r0, [r2, #8]
	b _0802A056
	.align 2, 0
_0802A04C: .4byte gSave
_0802A050: .4byte 0x000F423F
_0802A054:
	str r1, [r2, #8]
_0802A056:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802A05C
sub_0802A05C: @ 0x0802A05C
	push {lr}
	ldr r2, _0802A070 @ =gSave
	ldr r1, [r2, #0xc]
	adds r1, r1, r0
	ldr r0, _0802A074 @ =0x000F423F
	cmp r1, r0
	bls _0802A078
	str r0, [r2, #0xc]
	b _0802A07A
	.align 2, 0
_0802A070: .4byte gSave
_0802A074: .4byte 0x000F423F
_0802A078:
	str r1, [r2, #0xc]
_0802A07A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802A080
sub_0802A080: @ 0x0802A080
	push {r4, lr}
	adds r2, r0, #0
	cmp r2, #0
	beq _0802A0B2
	ldr r0, _0802A098 @ =gSave
	ldr r3, [r0, #0xc]
	adds r4, r0, #0
	cmp r3, r2
	blo _0802A09C
	subs r0, r3, r2
	b _0802A09E
	.align 2, 0
_0802A098: .4byte gSave
_0802A09C:
	movs r0, #0
_0802A09E:
	str r0, [r4, #0xc]
	adds r1, r4, #0
	ldr r0, [r1, #8]
	adds r0, r0, r2
	str r0, [r1, #8]
	ldr r1, _0802A0B8 @ =0x000F423F
	cmp r0, r1
	bls _0802A0B0
	adds r0, r1, #0
_0802A0B0:
	str r0, [r4, #8]
_0802A0B2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802A0B8: .4byte 0x000F423F

	thumb_func_start sub_0802A0BC
sub_0802A0BC: @ 0x0802A0BC
	push {r4, lr}
	adds r2, r0, #0
	cmp r2, #0
	beq _0802A0EE
	ldr r0, _0802A0D4 @ =gSave
	ldr r3, [r0, #8]
	adds r4, r0, #0
	cmp r3, r2
	blo _0802A0D8
	subs r0, r3, r2
	b _0802A0DA
	.align 2, 0
_0802A0D4: .4byte gSave
_0802A0D8:
	movs r0, #0
_0802A0DA:
	str r0, [r4, #8]
	adds r1, r4, #0
	ldr r0, [r1, #0xc]
	adds r0, r0, r2
	str r0, [r1, #0xc]
	ldr r1, _0802A0F4 @ =0x000F423F
	cmp r0, r1
	bls _0802A0EC
	adds r0, r1, #0
_0802A0EC:
	str r0, [r4, #0xc]
_0802A0EE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802A0F4: .4byte 0x000F423F

	thumb_func_start sub_0802A0F8
sub_0802A0F8: @ 0x0802A0F8
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xff
	bhi _0802A120
	ldr r0, _0802A114 @ =gSave
	adds r0, #0x10
	adds r2, r2, r0
	ldrb r0, [r2]
	adds r0, r0, r1
	cmp r0, #0
	bge _0802A118
	movs r0, #0
	b _0802A11E
	.align 2, 0
_0802A114: .4byte gSave
_0802A118:
	cmp r0, #0x63
	ble _0802A11E
	movs r0, #0x63
_0802A11E:
	strb r0, [r2]
_0802A120:
	pop {r0}
	bx r0

	thumb_func_start sub_0802A124
sub_0802A124: @ 0x0802A124
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r5, #0
	ldr r0, _0802A164 @ =gGame
	ldr r1, _0802A168 @ =0x00008299
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r5, r1
	bhs _0802A178
	adds r7, r0, #0
_0802A13A:
	adds r0, r5, #0
	bl get_char_stats
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0802A16C
	bl sub_08001D2C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802A16C
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0802A60C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802A16C
	movs r0, #1
	b _0802A17A
	.align 2, 0
_0802A164: .4byte gGame
_0802A168: .4byte 0x00008299
_0802A16C:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrb r0, [r7]
	cmp r5, r0
	blo _0802A13A
_0802A178:
	movs r0, #0
_0802A17A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0802A180
sub_0802A180: @ 0x0802A180
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r4, _0802A1B8 @ =gGame
	ldr r0, _0802A1BC @ =0x000082AE
	adds r5, r4, r0
	movs r0, #0xff
	strb r0, [r5]
	mov r0, sb
	bl is_equippable
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802A1C0
	mov r0, sb
	adds r1, r6, #0
	bl sub_0802A310
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0802A252
	.align 2, 0
_0802A1B8: .4byte gGame
_0802A1BC: .4byte 0x000082AE
_0802A1C0:
	movs r1, #0
	mov r8, r1
	movs r7, #0
	ldr r1, _0802A218 @ =0x00008299
	adds r0, r4, r1
	ldrb r1, [r0]
	cmp r8, r1
	bhs _0802A250
	mov sl, r5
_0802A1D2:
	adds r0, r7, #0
	bl get_char_stats
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #0
	beq _0802A242
	bl sub_08001D2C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802A242
	adds r0, r5, #0
	bl sub_0802A42C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0802A242
	ldr r0, _0802A21C @ =gUnknown_0201AAF8
	str r7, [r0]
	cmp r4, r6
	blo _0802A220
	adds r0, r5, #0
	mov r1, sb
	adds r2, r6, #0
	bl sub_0802A454
	mov r1, r8
	adds r0, r1, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r6, #0
	b _0802A23A
	.align 2, 0
_0802A218: .4byte 0x00008299
_0802A21C: .4byte gUnknown_0201AAF8
_0802A220:
	adds r0, r5, #0
	mov r1, sb
	adds r2, r4, #0
	bl sub_0802A454
	mov r1, r8
	adds r0, r1, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	subs r0, r6, r4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0802A23A:
	mov r0, sl
	strb r7, [r0]
	cmp r6, #0
	beq _0802A250
_0802A242:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r1, _0802A260 @ =gUnknown_0200DE99
	ldrb r1, [r1]
	cmp r7, r1
	blo _0802A1D2
_0802A250:
	mov r0, r8
_0802A252:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802A260: .4byte gUnknown_0200DE99

	thumb_func_start sub_0802A264
sub_0802A264: @ 0x0802A264
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r7, #0
	movs r0, #0
	mov r8, r0
	ldr r0, _0802A2CC @ =gGame
	ldr r1, _0802A2D0 @ =0x00008299
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r7, r1
	bhs _0802A300
	mov sl, r0
_0802A28C:
	mov r0, r8
	bl get_char_stats
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #0
	beq _0802A2EE
	bl sub_08001D2C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802A2EE
	adds r0, r5, #0
	mov r1, sb
	bl sub_0802A3D0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0802A2EE
	cmp r4, r6
	blo _0802A2D4
	adds r0, r5, #0
	mov r1, sb
	adds r2, r6, #0
	bl sub_0802A49C
	adds r0, r7, r6
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	b _0802A300
	.align 2, 0
_0802A2CC: .4byte gGame
_0802A2D0: .4byte 0x00008299
_0802A2D4:
	adds r0, r5, #0
	mov r1, sb
	adds r2, r4, #0
	bl sub_0802A49C
	adds r0, r7, r4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	subs r0, r6, r4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _0802A300
_0802A2EE:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r0, sl
	ldrb r0, [r0]
	cmp r8, r0
	blo _0802A28C
_0802A300:
	adds r0, r7, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0802A310
sub_0802A310: @ 0x0802A310
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r0, #0
	mov r8, r0
	movs r6, #0
	ldr r1, _0802A35C @ =gGame
	ldr r2, _0802A360 @ =0x00008299
	adds r0, r1, r2
	ldrb r2, [r0]
	cmp r8, r2
	bhs _0802A3B4
	ldr r0, _0802A364 @ =gUnknown_0201AAF8
	mov sl, r0
_0802A33C:
	adds r0, r6, #0
	bl get_char_stats
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #0
	beq _0802A3A6
	bl sub_08001D2C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802A3A6
	movs r4, #0
	ldr r2, _0802A368 @ =gUnknown_0200DEAE
	b _0802A37C
	.align 2, 0
_0802A35C: .4byte gGame
_0802A360: .4byte 0x00008299
_0802A364: .4byte gUnknown_0201AAF8
_0802A368: .4byte gUnknown_0200DEAE
_0802A36C:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0802A37C:
	cmp r4, r7
	bhs _0802A394
	adds r0, r5, #0
	mov r1, sb
	str r2, [sp]
	bl sub_0802A630
	lsls r0, r0, #0x10
	ldr r2, [sp]
	cmp r0, #0
	bne _0802A36C
	strb r6, [r2]
_0802A394:
	mov r1, sl
	str r6, [r1]
	ldr r2, _0802A3C8 @ =gUnknown_0200DEAE
	strb r6, [r2]
	subs r0, r7, r4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0
	beq _0802A3B4
_0802A3A6:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _0802A3CC @ =gUnknown_0200DE99
	ldrb r0, [r0]
	cmp r6, r0
	blo _0802A33C
_0802A3B4:
	mov r0, r8
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802A3C8: .4byte gUnknown_0200DEAE
_0802A3CC: .4byte gUnknown_0200DE99

	thumb_func_start sub_0802A3D0
sub_0802A3D0: @ 0x0802A3D0
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	movs r3, #0
	movs r2, #0
	adds r1, r0, #0
	adds r1, #0x3c
_0802A3DE:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, r4
	bne _0802A3EC
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_0802A3EC:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xf
	bls _0802A3DE
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802A400
sub_0802A400: @ 0x0802A400
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0
	adds r3, r0, #0
	adds r3, #0x3c
_0802A40C:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, r1
	bne _0802A41A
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	b _0802A428
_0802A41A:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xf
	bls _0802A40C
	movs r0, #1
	rsbs r0, r0, #0
_0802A428:
	pop {r1}
	bx r1

	thumb_func_start sub_0802A42C
sub_0802A42C: @ 0x0802A42C
	push {lr}
	movs r2, #0
	movs r1, #0
	adds r3, r0, #0
	adds r3, #0x3c
_0802A436:
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802A444
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0802A444:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xf
	bls _0802A436
	adds r0, r2, #0
	pop {r1}
	bx r1

	thumb_func_start sub_0802A454
sub_0802A454: @ 0x0802A454
	push {r4, r5, r6, r7, lr}
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	movs r3, #0
	cmp r3, r6
	bhs _0802A494
	adds r5, r0, #0
	adds r5, #0x3c
	adds r4, r0, #0
	adds r4, #0x4c
_0802A46C:
	movs r0, #0
	adds r2, r3, #1
_0802A470:
	adds r3, r5, r0
	ldrb r1, [r3]
	cmp r1, #0
	bne _0802A482
	strb r7, [r3]
	lsls r0, r0, #1
	adds r0, r4, r0
	strh r1, [r0]
	b _0802A48C
_0802A482:
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _0802A470
_0802A48C:
	lsls r0, r2, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r6
	blo _0802A46C
_0802A494:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802A49C
sub_0802A49C: @ 0x0802A49C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x10]
	mov r1, sp
	adds r0, #0x3c
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r6, #0
	bl is_equippable
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802A4D8
	adds r0, r6, #0
	bl sub_0802B9E8
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _0802A4DA
_0802A4D8:
	ldr r3, _0802A53C @ =0x0000FFFF
_0802A4DA:
	movs r0, #0
	ldr r1, [sp, #0x10]
	cmp r0, r1
	bhs _0802A556
	movs r2, #0x3c
	adds r2, r2, r5
	mov sb, r2
	mov sl, r0
_0802A4EA:
	movs r2, #0
	adds r0, #1
	mov r8, r0
_0802A4F0:
	mov r4, sb
	adds r1, r4, r2
	ldrb r0, [r1]
	cmp r0, r6
	bne _0802A540
	mov r0, sl
	strb r0, [r1]
	lsls r0, r2, #1
	adds r1, r5, #0
	adds r1, #0x4c
	adds r1, r1, r0
	movs r7, #0
	mov r4, sl
	strh r4, [r1]
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0802A54A
	adds r0, r5, #0
	adds r0, #0x34
	adds r4, r0, r1
	ldrb r0, [r4]
	cmp r0, r6
	bne _0802A54A
	adds r0, r5, #0
	adds r1, r2, #0
	str r3, [sp, #0x14]
	bl sub_0802BA68
	lsls r0, r0, #0x10
	ldr r3, [sp, #0x14]
	cmp r0, #0
	beq _0802A54A
	strb r7, [r4]
	b _0802A54A
	.align 2, 0
_0802A53C: .4byte 0x0000FFFF
_0802A540:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xf
	bls _0802A4F0
_0802A54A:
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	ldr r2, [sp, #0x10]
	cmp r0, r2
	blo _0802A4EA
_0802A556:
	adds r0, r5, #0
	bl sub_0802A574
	adds r0, r5, #0
	mov r1, sp
	bl sub_0802BA98
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0802A574
sub_0802A574: @ 0x0802A574
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x30
	adds r3, r0, #0
	movs r2, #0
	add r5, sp, #0x10
	movs r1, #0
	adds r4, r5, #0
_0802A588:
	mov r6, sp
	adds r0, r6, r2
	strb r1, [r0]
	lsls r0, r2, #1
	adds r0, r4, r0
	strh r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xf
	bls _0802A588
	movs r4, #0
	movs r2, #0
	movs r7, #0x3c
	adds r7, r7, r3
	mov ip, r7
	adds r3, #0x4c
	mov r8, r3
	mov sb, ip
	adds r6, r5, #0
_0802A5B0:
	mov r0, sb
	adds r3, r0, r2
	ldrb r1, [r3]
	cmp r1, #0
	beq _0802A5CE
	mov r7, sp
	adds r0, r7, r4
	strb r1, [r0]
	lsls r0, r4, #1
	adds r0, r6, r0
	ldrb r1, [r3]
	strh r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0802A5CE:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xf
	bls _0802A5B0
	movs r2, #0
	mov r6, ip
	mov r4, r8
	adds r3, r5, #0
_0802A5E0:
	adds r1, r6, r2
	mov r5, sp
	adds r0, r5, r2
	ldrb r0, [r0]
	strb r0, [r1]
	lsls r0, r2, #1
	adds r1, r4, r0
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xf
	bls _0802A5E0
	add sp, #0x30
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0802A60C
sub_0802A60C: @ 0x0802A60C
	push {lr}
	movs r1, #0
	adds r2, r0, #0
	adds r2, #0x3c
_0802A614:
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802A620
	movs r0, #1
	b _0802A62C
_0802A620:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xf
	bls _0802A614
	movs r0, #0
_0802A62C:
	pop {r1}
	bx r1

	thumb_func_start sub_0802A630
sub_0802A630: @ 0x0802A630
	push {lr}
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0
_0802A63A:
	mov r0, ip
	adds r0, #0x3c
	adds r0, r0, r3
	ldrb r2, [r0]
	cmp r2, #0
	bne _0802A660
	strb r1, [r0]
	lsls r1, r3, #1
	mov r0, ip
	adds r0, #0x4c
	adds r0, r0, r1
	strh r2, [r0]
	mov r0, ip
	adds r1, r3, #0
	movs r2, #0
	bl sub_0802BA78
	movs r0, #1
	b _0802A66C
_0802A660:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0xf
	bls _0802A63A
	movs r0, #0
_0802A66C:
	pop {r1}
	bx r1

	thumb_func_start sub_0802A670
sub_0802A670: @ 0x0802A670
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r6, r1, #0
	movs r0, #0
	str r0, [r4, #0x38]
	movs r1, #0
	adds r2, r4, #0
	adds r2, #0x3c
	movs r3, #0
	adds r5, r4, #0
	adds r5, #0x4c
	mov r8, r2
_0802A68C:
	adds r0, r2, r1
	strb r3, [r0]
	lsls r0, r1, #1
	adds r0, r5, r0
	strh r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xf
	bls _0802A68C
	movs r1, #0
	adds r7, r4, #0
	adds r7, #0x34
	ldrh r2, [r6]
	adds r3, r7, #0
	movs r5, #0
_0802A6AC:
	adds r0, r3, r1
	strb r5, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #3
	bls _0802A6AC
	movs r5, #0
	lsls r0, r2, #0x10
	cmp r0, #0
	beq _0802A6D4
	strb r2, [r7]
	mov r0, r8
	strb r2, [r0]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0802BA78
	movs r5, #1
_0802A6D4:
	ldrh r2, [r6, #2]
	movs r1, #2
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _0802A6FA
	mov r1, r8
	adds r0, r1, r5
	adds r1, r4, #0
	adds r1, #0x35
	strb r2, [r1]
	strb r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl sub_0802BA78
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0802A6FA:
	ldrh r2, [r6, #4]
	movs r1, #4
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _0802A720
	mov r1, r8
	adds r0, r1, r5
	adds r1, r4, #0
	adds r1, #0x36
	strb r2, [r1]
	strb r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl sub_0802BA78
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0802A720:
	ldrh r2, [r6, #6]
	movs r1, #6
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _0802A740
	mov r1, r8
	adds r0, r1, r5
	adds r1, r4, #0
	adds r1, #0x37
	strb r2, [r1]
	strb r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl sub_0802BA78
_0802A740:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802A74C
sub_0802A74C: @ 0x0802A74C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	mov sl, r1
	movs r0, #0
	mov r8, r0
	movs r1, #1
	rsbs r1, r1, #0
	mov sb, r1
_0802A764:
	mov r2, r8
	lsls r0, r2, #1
	mov r2, sl
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, sb
	beq _0802A7DC
	ldrh r4, [r1]
	adds r5, r4, #0
	adds r0, r6, #0
	adds r0, #0x34
	mov r1, r8
	adds r7, r0, r1
	ldrb r0, [r7]
	cmp r0, #0
	beq _0802A7A8
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_0802BA28
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, sb
	beq _0802A7DC
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0
	adds r0, #0x3c
	adds r0, r0, r1
	strb r4, [r0]
	strb r4, [r7]
	b _0802A7DC
_0802A7A8:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0802A60C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802A7DC
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #1
	bl sub_0802A454
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0802A400
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, sb
	beq _0802A7DC
	adds r0, r6, #0
	movs r2, #1
	bl sub_0802BA78
	strb r5, [r7]
_0802A7DC:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #3
	bls _0802A764
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0802A7F8
sub_0802A7F8: @ 0x0802A7F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r2, _0802A87C @ =gSave
	ldr r1, _0802A880 @ =0x0000078A
	adds r0, r2, r1
	adds r0, r3, r0
	ldrb r1, [r5]
	strb r1, [r0]
	lsls r0, r3, #0x14
	movs r4, #0
	lsrs r0, r0, #0xf
	ldr r1, _0802A884 @ =0x0000078E
	adds r2, r2, r1
	adds r1, r0, r2
	movs r2, #0
_0802A824:
	strh r2, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _0802A824
	movs r0, #0
	mov sb, r0
	mov r8, r0
	lsls r0, r3, #0x14
	lsrs r6, r0, #0x10
	movs r4, #0
	adds r7, r5, #0
	adds r7, #0x3c
	movs r1, #0
	mov sl, r1
_0802A844:
	adds r1, r7, r4
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802A8AA
	bl is_equippable
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802A888
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0802BA68
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802A888
	movs r0, #1
	mov r1, r8
	lsls r0, r1
	mov r1, sb
	orrs r1, r0
	mov sb, r1
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	b _0802A8AA
	.align 2, 0
_0802A87C: .4byte gSave
_0802A880: .4byte 0x0000078A
_0802A884: .4byte 0x0000078E
_0802A888:
	lsls r1, r6, #1
	ldr r0, _0802A8D0 @ =gUnknown_02004FEE
	adds r1, r1, r0
	adds r2, r7, r4
	ldrb r0, [r2]
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r1, sl
	strb r1, [r2]
	lsls r1, r4, #1
	adds r0, r5, #0
	adds r0, #0x4c
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
_0802A8AA:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _0802A844
	adds r0, r5, #0
	bl sub_0802A574
	mov r0, sb
	str r0, [r5, #0x38]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A8D0: .4byte gUnknown_02004FEE

	thumb_func_start sub_0802A8D4
sub_0802A8D4: @ 0x0802A8D4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	movs r5, #0
	ldr r2, _0802A8FC @ =gSave
	ldr r0, _0802A900 @ =0x0000078A
	adds r2, r2, r0
	ldrb r1, [r7]
_0802A8E8:
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r1, r0
	beq _0802A904
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _0802A8E8
	b _0802A970
	.align 2, 0
_0802A8FC: .4byte gSave
_0802A900: .4byte 0x0000078A
_0802A904:
	mov r8, r5
	lsls r0, r5, #0x14
	lsrs r6, r0, #0x10
	movs r5, #0
	ldr r1, _0802A97C @ =gUnknown_02004FEE
	mov sb, r1
_0802A910:
	adds r0, r6, r5
	lsls r0, r0, #1
	mov r3, sb
	adds r4, r0, r3
	ldrh r0, [r4]
	cmp r0, #0
	beq _0802A93A
	adds r1, r0, #0
	adds r0, r7, #0
	bl sub_0802A60C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802A93A
	ldrh r1, [r4]
	adds r0, r7, #0
	movs r2, #1
	bl sub_0802A454
	movs r0, #0
	strh r0, [r4]
_0802A93A:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xf
	bls _0802A910
	mov r1, r8
	lsls r0, r1, #0x14
	lsrs r6, r0, #0x10
	movs r5, #0
	ldr r2, _0802A980 @ =gSave
	ldr r0, _0802A984 @ =0x0000078E
	adds r3, r2, r0
_0802A952:
	adds r0, r6, r5
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r1, [r0]
	cmp r1, #0
	bne _0802A970
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xf
	bls _0802A952
	ldr r3, _0802A988 @ =0x0000078A
	adds r0, r2, r3
	add r0, r8
	strb r1, [r0]
_0802A970:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A97C: .4byte gUnknown_02004FEE
_0802A980: .4byte gSave
_0802A984: .4byte 0x0000078E
_0802A988: .4byte 0x0000078A

	thumb_func_start sub_0802A98C
sub_0802A98C: @ 0x0802A98C
	push {lr}
	movs r1, #0
	ldr r2, _0802A9A0 @ =gUnknown_02004FEE
_0802A992:
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802A9A4
	movs r0, #1
	b _0802A9B0
	.align 2, 0
_0802A9A0: .4byte gUnknown_02004FEE
_0802A9A4:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x3f
	bls _0802A992
	movs r0, #0
_0802A9B0:
	pop {r1}
	bx r1

	thumb_func_start sub_0802A9B4
sub_0802A9B4: @ 0x0802A9B4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	adds r5, r4, #0
	ldr r0, _0802A9F4 @ =gSomeBlend
	ldr r1, _0802A9F8 @ =0x00004AD0
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	ldr r1, _0802A9FC @ =gGoodsInfo
	movs r0, #0x6c
	muls r0, r3, r0
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #8
	bne _0802AA08
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_0802A0F8
	cmp r4, #1
	bls _0802AA44
	ldr r0, _0802AA00 @ =gGame
	ldr r2, _0802AA04 @ =0x0000845C
	adds r0, r0, r2
	movs r1, #3
	strh r1, [r0]
	b _0802AA6A
	.align 2, 0
_0802A9F4: .4byte gSomeBlend
_0802A9F8: .4byte 0x00004AD0
_0802A9FC: .4byte gGoodsInfo
_0802AA00: .4byte gGame
_0802AA04: .4byte 0x0000845C
_0802AA08:
	adds r0, r3, #0
	adds r1, r5, #0
	bl sub_0802A180
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _0802AA58
	cmp r5, #1
	bls _0802AA44
	ldr r3, _0802AA38 @ =gGame
	ldr r0, _0802AA3C @ =0x0000845C
	adds r2, r3, r0
	movs r0, #3
	strh r0, [r2]
	cmp r5, r1
	bls _0802AA6A
	movs r0, #0x11
	strh r0, [r2]
	subs r1, r5, r1
	ldr r2, _0802AA40 @ =0x0000846A
	adds r0, r3, r2
	strh r1, [r0]
	b _0802AA6A
	.align 2, 0
_0802AA38: .4byte gGame
_0802AA3C: .4byte 0x0000845C
_0802AA40: .4byte 0x0000846A
_0802AA44:
	ldr r0, _0802AA50 @ =gGame
	ldr r1, _0802AA54 @ =0x0000845C
	adds r0, r0, r1
	movs r1, #2
	strh r1, [r0]
	b _0802AA6A
	.align 2, 0
_0802AA50: .4byte gGame
_0802AA54: .4byte 0x0000845C
_0802AA58:
	ldr r0, _0802AA70 @ =gGame
	ldr r2, _0802AA74 @ =0x0000845C
	adds r0, r0, r2
	movs r1, #0xe
	strh r1, [r0]
	ldrb r0, [r6, #0xa]
	movs r1, #8
	orrs r0, r1
	strb r0, [r6, #0xa]
_0802AA6A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802AA70: .4byte gGame
_0802AA74: .4byte 0x0000845C

	thumb_func_start sub_0802AA78
sub_0802AA78: @ 0x0802AA78
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r6, #0
_0802AA80:
	adds r0, r6, #0
	bl get_obj_direct
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802AADA
	adds r0, r6, #0
	bl get_char_stats
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_0802B874
	adds r1, r0, #0
	cmp r5, #1
	beq _0802AABE
	cmp r5, #1
	bgt _0802AAAE
	cmp r5, #0
	beq _0802AAB8
	b _0802AAD2
_0802AAAE:
	cmp r5, #2
	beq _0802AAC2
	cmp r5, #3
	beq _0802AAC8
	b _0802AAD2
_0802AAB8:
	ldr r0, [r1, #8]
	str r0, [r4, #0x18]
	b _0802AAC2
_0802AABE:
	ldr r0, [r1, #8]
	b _0802AAD0
_0802AAC2:
	ldrh r0, [r1, #0x10]
	strh r0, [r4, #0x1c]
	b _0802AAD2
_0802AAC8:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bgt _0802AAD2
	movs r0, #1
_0802AAD0:
	str r0, [r4, #0x18]
_0802AAD2:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080295E8
_0802AADA:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #4
	bls _0802AA80
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802AAEC
sub_0802AAEC: @ 0x0802AAEC
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	cmp r5, #0
	beq _0802ABC6
	adds r0, r6, #0
	bl get_char_stats
	adds r7, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0802B88C
	adds r3, r0, #0
	cmp r4, #0
	beq _0802AB1A
	cmp r4, #1
	beq _0802AB44
	b _0802ABC6
_0802AB1A:
	ldrh r0, [r3, #8]
	ldrh r1, [r3, #0xa]
	cmp r0, r1
	bne _0802ABC6
	ldr r1, [r7, #0x18]
	adds r0, r1, r5
	cmp r0, #0
	ble _0802AB38
	ldr r1, _0802AB34 @ =0x000003E7
	cmp r0, r1
	ble _0802AB3E
	strh r1, [r3, #8]
	b _0802AB40
	.align 2, 0
_0802AB34: .4byte 0x000003E7
_0802AB38:
	cmp r1, #1
	beq _0802ABC6
	movs r0, #1
_0802AB3E:
	strh r0, [r3, #8]
_0802AB40:
	ldr r0, [r7, #0x18]
	b _0802AB78
_0802AB44:
	ldrh r0, [r3, #8]
	ldrh r1, [r3, #0xa]
	cmp r0, r1
	bne _0802ABC6
	movs r1, #0x1c
	ldrsh r0, [r7, r1]
	adds r0, r0, r5
	cmp r0, #0
	bgt _0802AB62
	movs r1, #0x1c
	ldrsh r0, [r7, r1]
	cmp r0, #1
	beq _0802ABC6
	strh r4, [r3, #8]
	b _0802AB76
_0802AB62:
	ldr r1, _0802AB6C @ =0x000003E7
	cmp r0, r1
	ble _0802AB70
	strh r1, [r3, #8]
	b _0802AB76
	.align 2, 0
_0802AB6C: .4byte 0x000003E7
_0802AB70:
	ldrh r0, [r7, #0x1c]
	adds r0, r5, r0
	strh r0, [r3, #8]
_0802AB76:
	ldrh r0, [r7, #0x1c]
_0802AB78:
	strh r0, [r3, #6]
	movs r1, #0
	adds r2, r3, #3
	movs r4, #0
_0802AB80:
	adds r0, r2, r1
	strb r4, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #2
	bls _0802AB80
	ldrh r0, [r3, #6]
	ldrh r1, [r3, #8]
	cmp r0, r1
	bls _0802ABC6
	movs r2, #7
	strb r2, [r3, #5]
	ldrb r0, [r3, #2]
	cmp r0, #0
	beq _0802ABA6
	subs r0, #1
	strb r0, [r3, #2]
	b _0802ABC6
_0802ABA6:
	movs r1, #9
	strb r1, [r3, #2]
	ldrb r0, [r3, #1]
	cmp r0, #0
	beq _0802ABB8
	subs r0, #1
	strb r0, [r3, #1]
	strb r2, [r3, #4]
	b _0802ABC6
_0802ABB8:
	strb r1, [r3, #1]
	ldrb r0, [r3]
	cmp r0, #0
	beq _0802ABC6
	subs r0, #1
	strb r0, [r3]
	strb r2, [r3, #3]
_0802ABC6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0802ABCC
sub_0802ABCC: @ 0x0802ABCC
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	movs r4, #0
	b _0802AC46
_0802ABD4:
	adds r0, r4, #0
	bl get_char_stats
	adds r5, r0, #0
	ldrb r0, [r5]
	adds r7, r4, #1
	cmp r0, #0
	beq _0802AC42
	bl sub_08001D2C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802AC42
	adds r0, r4, #0
	movs r1, #0
	bl sub_0802B88C
	bl sub_0802AC64
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r5, #0x18]
	adds r0, r4, #0
	movs r1, #1
	bl sub_0802B88C
	adds r4, r0, #0
	ldrh r0, [r4, #6]
	ldrh r1, [r4, #8]
	cmp r0, r1
	beq _0802AC42
	ldrh r1, [r4, #8]
	mov r0, sp
	movs r2, #0
	movs r3, #3
	bl sub_08002634
	movs r2, #0
	movs r6, #0
	adds r3, r4, #3
_0802AC24:
	adds r1, r4, r2
	lsls r0, r2, #1
	add r0, sp
	ldrh r0, [r0]
	strb r0, [r1]
	adds r0, r3, r2
	strb r6, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #2
	bls _0802AC24
	ldrh r0, [r4, #8]
	strh r0, [r4, #6]
	strh r0, [r5, #0x1c]
_0802AC42:
	lsls r0, r7, #0x10
	lsrs r4, r0, #0x10
_0802AC46:
	ldr r0, _0802AC5C @ =gGame
	ldr r1, _0802AC60 @ =0x00008299
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r4, r0
	blo _0802ABD4
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802AC5C: .4byte gGame
_0802AC60: .4byte 0x00008299

	thumb_func_start sub_0802AC64
sub_0802AC64: @ 0x0802AC64
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldrh r1, [r4, #0xa]
	mov r0, sp
	movs r2, #0
	movs r3, #3
	bl sub_08002634
	ldrh r0, [r4, #6]
	ldrh r1, [r4, #8]
	cmp r0, r1
	bhs _0802ACFA
	ldrh r2, [r4, #0xa]
	cmp r1, r2
	beq _0802ACB6
	ldrb r0, [r4, #5]
	adds r0, #1
	strb r0, [r4, #5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bne _0802ACB6
	adds r0, r2, #1
	strh r0, [r4, #0xa]
	ldrh r1, [r4, #0xa]
	mov r0, sp
	movs r2, #0
	movs r3, #3
	bl sub_08002634
	ldrb r0, [r4, #2]
	cmp r0, #9
	bne _0802ACAC
	movs r0, #1
	strb r0, [r4, #4]
_0802ACAC:
	movs r0, #0
	strb r0, [r4, #5]
	mov r0, sp
	ldrh r0, [r0, #4]
	strb r0, [r4, #2]
_0802ACB6:
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0802ACDC
	adds r0, #1
	strb r0, [r4, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bne _0802ACDC
	ldrb r0, [r4, #1]
	cmp r0, #9
	bne _0802ACD2
	movs r0, #1
	strb r0, [r4, #3]
_0802ACD2:
	movs r0, #0
	strb r0, [r4, #4]
	mov r0, sp
	ldrh r0, [r0, #2]
	strb r0, [r4, #1]
_0802ACDC:
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _0802AD7C
	adds r0, #1
	strb r0, [r4, #3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bne _0802AD7C
	movs r0, #0
	strb r0, [r4, #3]
	mov r0, sp
	ldrh r0, [r0]
	strb r0, [r4]
	b _0802AD7C
_0802ACFA:
	cmp r0, r1
	bls _0802AD7C
	ldrh r2, [r4, #0xa]
	cmp r1, r2
	beq _0802AD48
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _0802AD44
	subs r0, r2, #1
	strh r0, [r4, #0xa]
	ldrh r1, [r4, #0xa]
	mov r0, sp
	movs r2, #0
	movs r3, #3
	bl sub_08002634
	mov r0, sp
	ldrh r1, [r0, #2]
	ldrb r0, [r4, #1]
	cmp r1, r0
	beq _0802AD38
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _0802AD38
	movs r0, #7
	strb r0, [r4, #4]
	strb r1, [r4, #1]
	strb r0, [r4, #3]
	mov r0, sp
	ldrh r0, [r0]
	strb r0, [r4]
_0802AD38:
	movs r0, #0
	strb r0, [r4, #5]
	mov r0, sp
	ldrh r0, [r0, #4]
	strb r0, [r4, #2]
	b _0802AD48
_0802AD44:
	subs r0, #1
	strb r0, [r4, #5]
_0802AD48:
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0802AD6A
	cmp r0, #0
	bne _0802AD66
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _0802AD62
	movs r0, #1
	strb r0, [r4, #3]
	mov r0, sp
	ldrh r0, [r0]
	strb r0, [r4]
_0802AD62:
	movs r0, #0
	b _0802AD68
_0802AD66:
	subs r0, #1
_0802AD68:
	strb r0, [r4, #4]
_0802AD6A:
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _0802AD7C
	cmp r0, #0
	bne _0802AD78
	movs r0, #0
	b _0802AD7A
_0802AD78:
	subs r0, #1
_0802AD7A:
	strb r0, [r4, #3]
_0802AD7C:
	ldrh r0, [r4, #0xa]
	add sp, #8
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802AD88
sub_0802AD88: @ 0x0802AD88
	push {r4, r5, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, sp
	strh r1, [r0]
	movs r4, #0
_0802AD96:
	adds r0, r4, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802ADB8
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r0, [r0]
	mov r1, sp
	ldrh r2, [r1]
	adds r1, r5, #0
	bl set_ailment
_0802ADB8:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _0802AD96
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start set_ailment
set_ailment: @ 0x0802ADCC
	push {r4, r5, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	mov r1, sp
	strh r2, [r1]
	bl get_char_stats
	adds r4, r0, #0
	cmp r5, #8
	bls _0802ADE8
	b _0802AF1C
_0802ADE8:
	lsls r0, r5, #2
	ldr r1, _0802ADF4 @ =_0802ADF8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802ADF4: .4byte _0802ADF8
_0802ADF8: @ jump table
	.4byte _0802AE1C @ case 0
	.4byte _0802AE30 @ case 1
	.4byte _0802AE46 @ case 2
	.4byte _0802AE5C @ case 3
	.4byte _0802AE72 @ case 4
	.4byte _0802AE88 @ case 5
	.4byte _0802AE9E @ case 6
	.4byte _0802AECA @ case 7
	.4byte _0802AEB4 @ case 8
_0802AE1C:
	mov r0, sp
	ldrh r0, [r0]
	adds r3, r4, #0
	adds r3, #0x30
	movs r1, #1
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	b _0802AEC2
_0802AE30:
	mov r0, sp
	ldrh r0, [r0]
	adds r3, r4, #0
	adds r3, #0x30
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3]
	movs r0, #3
	rsbs r0, r0, #0
	b _0802AEC2
_0802AE46:
	mov r0, sp
	ldrh r0, [r0]
	adds r3, r4, #0
	adds r3, #0x30
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3]
	movs r0, #5
	rsbs r0, r0, #0
	b _0802AEC2
_0802AE5C:
	mov r0, sp
	ldrh r0, [r0]
	adds r3, r4, #0
	adds r3, #0x30
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #3
	ldrb r2, [r3]
	movs r0, #9
	rsbs r0, r0, #0
	b _0802AEC2
_0802AE72:
	mov r0, sp
	ldrh r0, [r0]
	adds r3, r4, #0
	adds r3, #0x30
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3]
	movs r0, #0x11
	rsbs r0, r0, #0
	b _0802AEC2
_0802AE88:
	mov r0, sp
	ldrh r0, [r0]
	adds r3, r4, #0
	adds r3, #0x30
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #5
	ldrb r2, [r3]
	movs r0, #0x21
	rsbs r0, r0, #0
	b _0802AEC2
_0802AE9E:
	mov r0, sp
	ldrh r0, [r0]
	adds r3, r4, #0
	adds r3, #0x30
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	b _0802AEC2
_0802AEB4:
	mov r0, sp
	ldrh r1, [r0]
	adds r3, r4, #0
	adds r3, #0x30
	lsls r1, r1, #7
	ldrb r2, [r3]
	movs r0, #0x7f
_0802AEC2:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	b _0802AF1C
_0802AECA:
	mov r3, sp
	ldrh r1, [r3]
	adds r4, #0x30
	lsls r1, r1, #7
	ldrb r2, [r4]
	movs r0, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldrh r1, [r3]
	movs r2, #1
	ands r2, r1
	lsls r3, r2, #6
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	orrs r0, r3
	lsls r3, r2, #5
	adds r1, #0x20
	ands r0, r1
	orrs r0, r3
	lsls r3, r2, #4
	adds r1, #0x10
	ands r0, r1
	orrs r0, r3
	lsls r3, r2, #3
	adds r1, #8
	ands r0, r1
	orrs r0, r3
	lsls r3, r2, #2
	adds r1, #4
	ands r0, r1
	orrs r0, r3
	lsls r3, r2, #1
	adds r1, #2
	ands r0, r1
	orrs r0, r3
	adds r1, #1
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
_0802AF1C:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0802AF24
sub_0802AF24: @ 0x0802AF24
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0802AF60
	movs r3, #0
	adds r6, r1, #0
	movs r5, #0x6c
	movs r4, #0
	ldr r1, _0802AF5C @ =gCharStats
_0802AF3C:
	cmp r6, #0
	beq _0802AF50
	adds r0, r3, #0
	muls r0, r5, r0
	adds r2, r0, r1
	ldr r0, [r2, #0x20]
	str r0, [r2, #0x18]
	ldrh r0, [r2, #0x24]
	strh r0, [r2, #0x1c]
	strh r4, [r2, #0x30]
_0802AF50:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0xf
	bls _0802AF3C
	b _0802AF7C
	.align 2, 0
_0802AF5C: .4byte gCharStats
_0802AF60:
	cmp r1, #0
	beq _0802AF7C
	cmp r1, #0xf
	bgt _0802AF7C
	movs r0, #0x6c
	muls r1, r0, r1
	ldr r0, _0802AF84 @ =gCharStats
	adds r2, r1, r0
	ldr r0, [r2, #0x20]
	str r0, [r2, #0x18]
	ldrh r0, [r2, #0x24]
	movs r1, #0
	strh r0, [r2, #0x1c]
	strh r1, [r2, #0x30]
_0802AF7C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802AF84: .4byte gCharStats

	thumb_func_start sub_0802AF88
sub_0802AF88: @ 0x0802AF88
	push {r4, r5, lr}
	movs r4, #0
	lsls r5, r0, #0x10
_0802AF8E:
	adds r0, r4, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802AFAC
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r0, [r0]
	asrs r1, r5, #0x10
	bl heal_hp
_0802AFAC:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _0802AF8E
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0802AFBC
sub_0802AFBC: @ 0x0802AFBC
	push {r4, r5, lr}
	movs r4, #0
	lsls r5, r0, #0x10
_0802AFC2:
	adds r0, r4, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802AFE0
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r0, [r0]
	asrs r1, r5, #0x10
	bl sub_0802B048
_0802AFE0:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _0802AFC2
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start heal_hp
heal_hp: @ 0x0802AFF0
	push {r4, r5, r6, r7, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r7, #0
	bl get_char_stats
	adds r6, r0, #0
	adds r0, r7, #0
	bl sub_0802B874
	adds r5, r0, #0
	adds r0, r7, #0
	bl get_obj_direct
	adds r0, #0xcc
	ldrb r2, [r0]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r0, [r6, #0x18]
	adds r0, r0, r4
	str r0, [r6, #0x18]
	ldr r1, [r5, #8]
	cmp r0, r1
	ble _0802B032
	str r1, [r6, #0x18]
	b _0802B03A
_0802B032:
	cmp r0, #0
	bgt _0802B03A
	movs r0, #1
	str r0, [r6, #0x18]
_0802B03A:
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_080295E8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0802B048
sub_0802B048: @ 0x0802B048
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r6, #0
	bl get_char_stats
	adds r5, r0, #0
	adds r0, r6, #0
	bl sub_0802B874
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldrh r1, [r5, #0x1c]
	adds r4, r4, r1
	strh r4, [r5, #0x1c]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldrh r1, [r0, #0x10]
	movs r2, #0x10
	ldrsh r0, [r0, r2]
	cmp r4, r0
	ble _0802B07E
	strh r1, [r5, #0x1c]
	b _0802B086
_0802B07E:
	cmp r4, #0
	bge _0802B086
	movs r0, #0
	strh r0, [r5, #0x1c]
_0802B086:
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080295E8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0802B094
sub_0802B094: @ 0x0802B094
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r4, #0
	lsls r5, r1, #0x10
_0802B09E:
	adds r0, r4, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802B0BE
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r6, #0
	asrs r2, r5, #0x10
	bl sub_0802B0D0
_0802B0BE:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _0802B09E
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802B0D0
sub_0802B0D0: @ 0x0802B0D0
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	bl get_char_stats
	adds r3, r0, #0
	cmp r5, #4
	bhi _0802B182
	lsls r0, r5, #2
	ldr r1, _0802B0F4 @ =_0802B0F8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802B0F4: .4byte _0802B0F8
_0802B0F8: @ jump table
	.4byte _0802B10C @ case 0
	.4byte _0802B11E @ case 1
	.4byte _0802B130 @ case 2
	.4byte _0802B142 @ case 3
	.4byte _0802B154 @ case 4
_0802B10C:
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	ble _0802B11A
	adds r1, r3, #0
	adds r1, #0x28
	b _0802B160
_0802B11A:
	adds r3, #0x28
	b _0802B170
_0802B11E:
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	ble _0802B12C
	adds r1, r3, #0
	adds r1, #0x29
	b _0802B160
_0802B12C:
	adds r3, #0x29
	b _0802B170
_0802B130:
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	ble _0802B13E
	adds r1, r3, #0
	adds r1, #0x2a
	b _0802B160
_0802B13E:
	adds r3, #0x2a
	b _0802B170
_0802B142:
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	ble _0802B150
	adds r1, r3, #0
	adds r1, #0x2c
	b _0802B160
_0802B150:
	adds r3, #0x2c
	b _0802B170
_0802B154:
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	ble _0802B16E
	adds r1, r3, #0
	adds r1, #0x2b
_0802B160:
	ldrb r0, [r1]
	adds r0, r0, r2
	cmp r0, #0xff
	ble _0802B16A
	movs r0, #0xff
_0802B16A:
	strb r0, [r1]
	b _0802B182
_0802B16E:
	adds r3, #0x2b
_0802B170:
	ldrb r1, [r3]
	adds r0, r2, #0
	cmp r0, #0
	bge _0802B17A
	rsbs r0, r0, #0
_0802B17A:
	cmp r1, r0
	bge _0802B182
	movs r0, #0
	strb r0, [r3]
_0802B182:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0802B188
sub_0802B188: @ 0x0802B188
	push {r4, r5, r6, r7, lr}
	movs r0, #0xfa
	lsls r0, r0, #2
	bl get_flag
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802B19A
	b _0802B368
_0802B19A:
	movs r0, #2
	bl sub_0802B8C4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0802B27C
	adds r0, r2, #0
	bl get_obj_direct
	adds r4, r0, #0
	ldr r6, _0802B1F4 @ =gSave
	ldr r0, _0802B1F8 @ =0x0000071C
	adds r1, r6, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802B204
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802B27C
	ldr r2, _0802B1FC @ =0x0000071B
	adds r1, r6, r2
	movs r0, #1
	strb r0, [r1]
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	bl sub_08002FD4
	adds r0, #0x64
	lsls r0, r0, #4
	ldr r2, _0802B200 @ =0x0000071E
	adds r1, r6, r2
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08025E20
	b _0802B34C
	.align 2, 0
_0802B1F4: .4byte gSave
_0802B1F8: .4byte 0x0000071C
_0802B1FC: .4byte 0x0000071B
_0802B200: .4byte 0x0000071E
_0802B204:
	ldr r0, _0802B268 @ =0x0000071E
	adds r1, r6, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802B27C
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802B27C
	ldr r2, _0802B26C @ =0x0000071B
	adds r1, r6, r2
	movs r0, #0
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x50
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r2, #0
	ldr r7, _0802B270 @ =gUnknown_020041E8
	ldr r5, _0802B274 @ =gUnknown_0200E06F
	movs r0, #0xe2
	lsls r0, r0, #3
	adds r3, r6, r0
_0802B23A:
	adds r1, r2, r5
	adds r0, r2, r3
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #9
	bls _0802B23A
	adds r0, r7, #0
	bl sub_0805C3B8
	movs r2, #0
	ldr r3, _0802B278 @ =gUnknown_02004F70
	movs r1, #0
_0802B258:
	adds r0, r2, r3
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #9
	bls _0802B258
	b _0802B346
	.align 2, 0
_0802B268: .4byte 0x0000071E
_0802B26C: .4byte 0x0000071B
_0802B270: .4byte gUnknown_020041E8
_0802B274: .4byte gUnknown_0200E06F
_0802B278: .4byte gUnknown_02004F70
_0802B27C:
	movs r0, #4
	bl sub_0802B8C4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0802B368
	adds r0, r2, #0
	bl get_obj_direct
	adds r4, r0, #0
	ldr r6, _0802B2D8 @ =gSave
	ldr r2, _0802B2DC @ =0x00000736
	adds r1, r6, r2
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802B2E4
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802B368
	ldr r0, _0802B2E0 @ =0x00000735
	adds r1, r6, r0
	movs r0, #1
	strb r0, [r1]
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	bl sub_08002FD4
	adds r0, #0x64
	lsls r0, r0, #4
	movs r2, #0xe7
	lsls r2, r2, #3
	adds r1, r6, r2
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08025E20
	b _0802B34C
	.align 2, 0
_0802B2D8: .4byte gSave
_0802B2DC: .4byte 0x00000736
_0802B2E0: .4byte 0x00000735
_0802B2E4:
	movs r0, #0xe7
	lsls r0, r0, #3
	adds r1, r6, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802B368
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802B368
	ldr r2, _0802B354 @ =0x00000735
	adds r1, r6, r2
	movs r0, #0
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x50
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r2, #0
	ldr r7, _0802B358 @ =gUnknown_020042C0
	ldr r5, _0802B35C @ =gUnknown_0200E06F
	ldr r0, _0802B360 @ =0x0000072A
	adds r3, r6, r0
_0802B31A:
	adds r1, r2, r5
	adds r0, r2, r3
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #9
	bls _0802B31A
	adds r0, r7, #0
	bl sub_0805C3B8
	movs r2, #0
	ldr r3, _0802B364 @ =gUnknown_02004F8A
	movs r1, #0
_0802B338:
	adds r0, r2, r3
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #9
	bls _0802B338
_0802B346:
	adds r0, r4, #0
	bl sub_08025BF8
_0802B34C:
	bl sub_08029E18
	movs r0, #1
	b _0802B36A
	.align 2, 0
_0802B354: .4byte 0x00000735
_0802B358: .4byte gUnknown_020042C0
_0802B35C: .4byte gUnknown_0200E06F
_0802B360: .4byte 0x0000072A
_0802B364: .4byte gUnknown_02004F8A
_0802B368:
	movs r0, #0
_0802B36A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0802B370
sub_0802B370: @ 0x0802B370
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r2, r0, #0
	ldr r1, _0802B3F0 @ =gGame
	ldr r3, _0802B3F4 @ =0x0000829B
	adds r0, r1, r3
	ldrb r3, [r0]
	adds r7, r1, #0
	cmp r3, #6
	bne _0802B38E
	b _0802B4A2
_0802B38E:
	ldr r0, [r2]
	cmp r0, #0
	bne _0802B396
	b _0802B4A2
_0802B396:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	mov r2, sp
	adds r2, #2
	strh r0, [r2]
	add r1, sp, #4
	strh r0, [r1]
	movs r4, #0x80
	mov sb, r2
	mov r8, r1
	cmp r3, #3
	bne _0802B3B2
	movs r4, #0x40
_0802B3B2:
	ldr r1, _0802B3F8 @ =gUnknown_02000FF8
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, r4
	blo _0802B4A2
	movs r0, #0
	str r0, [r1]
	movs r5, #0
	ldr r1, _0802B3FC @ =0x00008299
	adds r0, r7, r1
	ldrb r3, [r0]
	cmp r5, r3
	bhs _0802B460
	adds r1, #0x1f
	adds r6, r7, r1
	ldr r3, _0802B400 @ =gUnknown_0201AAF8
	mov sl, r3
_0802B3D6:
	adds r0, r5, #0
	bl get_char_stats
	adds r3, r0, #0
	ldr r2, [r3, #0x18]
	cmp r2, #0
	bgt _0802B404
	ldrb r0, [r6]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r6]
	b _0802B452
	.align 2, 0
_0802B3F0: .4byte gGame
_0802B3F4: .4byte 0x0000829B
_0802B3F8: .4byte gUnknown_02000FF8
_0802B3FC: .4byte 0x00008299
_0802B400: .4byte gUnknown_0201AAF8
_0802B404:
	adds r0, r3, #0
	adds r0, #0x30
	ldrb r1, [r0]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0802B452
	mov r0, r8
	strh r4, [r0]
	cmp r2, #1
	ble _0802B452
	adds r0, r2, #0
	subs r0, #0x14
	cmp r0, #1
	bhi _0802B42C
	mov r1, sl
	str r5, [r1]
	mov r0, sb
	strh r4, [r0]
_0802B42C:
	ldr r0, [r3, #0x18]
	cmp r0, #2
	ble _0802B440
	adds r0, r5, #0
	movs r1, #0
	movs r2, #2
	rsbs r2, r2, #0
	bl sub_0802AAEC
	b _0802B44C
_0802B440:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	rsbs r2, r2, #0
	bl sub_0802AAEC
_0802B44C:
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
_0802B452:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r1, _0802B4A8 @ =gUnknown_0200DE99
	ldrb r1, [r1]
	cmp r5, r1
	blo _0802B3D6
_0802B460:
	mov r3, r8
	ldrh r0, [r3]
	cmp r0, #0
	beq _0802B49A
	ldr r0, _0802B4AC @ =0x00008495
	adds r2, r7, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0802B4B0 @ =0x000083CC
	adds r0, r7, r1
	movs r2, #0
	strh r2, [r0]
	ldr r3, _0802B4B4 @ =0x000083CE
	adds r1, r7, r3
	movs r0, #0x14
	strh r0, [r1]
	ldr r0, _0802B4B8 @ =0x000083CA
	adds r1, r7, r0
	movs r0, #4
	strh r0, [r1]
	ldr r1, _0802B4BC @ =0x000083D0
	adds r0, r7, r1
	strh r2, [r0]
	adds r3, #4
	adds r1, r7, r3
	movs r0, #3
	strh r0, [r1]
_0802B49A:
	mov r1, sb
	ldrh r0, [r1]
	cmp r0, #0
	bne _0802B4C0
_0802B4A2:
	movs r0, #0
	b _0802B4C6
	.align 2, 0
_0802B4A8: .4byte gUnknown_0200DE99
_0802B4AC: .4byte 0x00008495
_0802B4B0: .4byte 0x000083CC
_0802B4B4: .4byte 0x000083CE
_0802B4B8: .4byte 0x000083CA
_0802B4BC: .4byte 0x000083D0
_0802B4C0:
	bl sub_08025A80
	movs r0, #1
_0802B4C6:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802B4D8
sub_0802B4D8: @ 0x0802B4D8
	push {r4, r5, r6, lr}
	ldr r2, _0802B51C @ =gGame
	ldr r0, _0802B520 @ =0x000082B8
	adds r3, r2, r0
	ldrb r1, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	ldr r1, _0802B524 @ =0x0000829B
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #6
	beq _0802B534
	movs r4, #0
	subs r1, #2
	adds r0, r2, r1
	ldrb r1, [r0]
	cmp r4, r1
	bhs _0802B534
	adds r5, r3, #0
	adds r6, r0, #0
_0802B504:
	adds r0, r4, #0
	bl get_char_stats
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bgt _0802B528
	ldrb r0, [r5]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r5]
	b _0802B534
	.align 2, 0
_0802B51C: .4byte gGame
_0802B520: .4byte 0x000082B8
_0802B524: .4byte 0x0000829B
_0802B528:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r0, [r6]
	cmp r4, r0
	blo _0802B504
_0802B534:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802B53C
sub_0802B53C: @ 0x0802B53C
	push {lr}
	ldr r1, _0802B564 @ =gGame
	ldr r0, [r1]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _0802B55E
	ldr r0, _0802B568 @ =0x000082B4
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802B56C
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802B56C
_0802B55E:
	movs r0, #0
	b _0802B576
	.align 2, 0
_0802B564: .4byte gGame
_0802B568: .4byte 0x000082B4
_0802B56C:
	bl sub_08039B5C
	bl sub_08025B3C
	movs r0, #1
_0802B576:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802B57C
sub_0802B57C: @ 0x0802B57C
	push {lr}
	ldr r0, _0802B5B4 @ =0x00000315
	bl get_flag
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802B5AE
	ldr r0, _0802B5B8 @ =gGame
	ldr r1, _0802B5BC @ =0x000082B9
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt _0802B5AE
	ldr r0, _0802B5C0 @ =gSave
	ldr r2, _0802B5C4 @ =0x00000744
	adds r1, r0, r2
	adds r2, #4
	adds r0, r0, r2
	ldrh r0, [r0]
	ldr r2, _0802B5C8 @ =0x00069780
	adds r0, r0, r2
	ldr r1, [r1]
	cmp r1, r0
	bhs _0802B5CC
_0802B5AE:
	movs r0, #0
	b _0802B5D2
	.align 2, 0
_0802B5B4: .4byte 0x00000315
_0802B5B8: .4byte gGame
_0802B5BC: .4byte 0x000082B9
_0802B5C0: .4byte gSave
_0802B5C4: .4byte 0x00000744
_0802B5C8: .4byte 0x00069780
_0802B5CC:
	bl sub_08025ED8
	movs r0, #1
_0802B5D2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802B5D8
sub_0802B5D8: @ 0x0802B5D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0xfa
	lsls r0, r0, #2
	bl get_flag
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802B5F2
	b _0802B82A
_0802B5F2:
	ldr r2, _0802B738 @ =gGame
	ldr r0, _0802B73C @ =0x000082B9
	adds r3, r2, r0
	ldrb r1, [r3]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3]
	movs r6, #0
	ldr r1, _0802B740 @ =0x00008299
	adds r0, r2, r1
	mov sl, r2
	ldrb r1, [r0]
	cmp r6, r1
	blo _0802B618
	b _0802B792
_0802B618:
	ldr r1, _0802B744 @ =0x00000E0F
	mov sb, r1
	adds r7, r3, #0
	movs r3, #1
	mov r8, r3
_0802B622:
	adds r0, r6, #0
	bl get_char_stats
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	bne _0802B632
	b _0802B782
_0802B632:
	bl sub_08001D2C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802B63E
	b _0802B782
_0802B63E:
	adds r0, r4, #0
	movs r1, #0x60
	bl sub_0802A3D0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802B67C
	adds r0, r4, #0
	movs r1, #0x60
	bl sub_0802A400
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	lsls r1, r3, #1
	adds r0, r4, #0
	adds r0, #0x4c
	adds r2, r0, r1
	ldrh r0, [r2]
	adds r0, #1
	movs r5, #0
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, sb
	bls _0802B67C
	adds r0, r4, #0
	adds r0, #0x3c
	adds r0, r0, r3
	movs r1, #0x61
	strb r1, [r0]
	strh r5, [r2]
_0802B67C:
	adds r0, r4, #0
	movs r1, #0x61
	bl sub_0802A3D0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802B6BA
	adds r0, r4, #0
	movs r1, #0x61
	bl sub_0802A400
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	lsls r1, r3, #1
	adds r0, r4, #0
	adds r0, #0x4c
	adds r2, r0, r1
	ldrh r1, [r2]
	adds r1, #1
	movs r5, #0
	strh r1, [r2]
	lsls r1, r1, #0x10
	ldr r0, _0802B748 @ =0x464F0000
	cmp r1, r0
	bls _0802B6BA
	adds r0, r4, #0
	adds r0, #0x3c
	adds r0, r0, r3
	movs r1, #0x62
	strb r1, [r0]
	strh r5, [r2]
_0802B6BA:
	adds r0, r4, #0
	movs r1, #0x66
	bl sub_0802A3D0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802B6F8
	adds r0, r4, #0
	movs r1, #0x66
	bl sub_0802A400
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	lsls r1, r3, #1
	adds r0, r4, #0
	adds r0, #0x4c
	adds r2, r0, r1
	ldrh r0, [r2]
	adds r0, #1
	movs r5, #0
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, sb
	bls _0802B6F8
	adds r0, r4, #0
	adds r0, #0x3c
	adds r0, r0, r3
	movs r1, #0xaa
	strb r1, [r0]
	strh r5, [r2]
_0802B6F8:
	adds r0, r4, #0
	movs r1, #0xaa
	bl sub_0802A3D0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802B762
	adds r0, r4, #0
	movs r1, #0xaa
	bl sub_0802A400
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	lsls r1, r3, #1
	adds r0, r4, #0
	adds r0, #0x4c
	adds r2, r0, r1
	ldrh r1, [r2]
	adds r1, #1
	movs r5, #0
	strh r1, [r2]
	lsls r1, r1, #0x10
	ldr r0, _0802B74C @ =0x1C1F0000
	cmp r1, r0
	bls _0802B750
	adds r0, r4, #0
	adds r0, #0x3c
	adds r0, r0, r3
	movs r1, #0xab
	strb r1, [r0]
	strh r5, [r2]
	b _0802B762
	.align 2, 0
_0802B738: .4byte gGame
_0802B73C: .4byte 0x000082B9
_0802B740: .4byte 0x00008299
_0802B744: .4byte 0x00000E0F
_0802B748: .4byte 0x464F0000
_0802B74C: .4byte 0x1C1F0000
_0802B750:
	ldrb r0, [r7]
	mov r1, r8
	lsls r2, r1, #1
	movs r3, #3
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r7]
_0802B762:
	adds r0, r4, #0
	movs r1, #0xab
	bl sub_0802A3D0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802B782
	ldrb r0, [r7]
	mov r1, r8
	lsls r2, r1, #2
	movs r3, #5
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r7]
_0802B782:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _0802B7CC @ =gUnknown_0200DE99
	ldrb r0, [r0]
	cmp r6, r0
	bhs _0802B792
	b _0802B622
_0802B792:
	ldr r0, _0802B7D0 @ =0x0000829B
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802B82A
	ldr r0, _0802B7D4 @ =0x000067AC
	add r0, sl
	ldrh r0, [r0]
	cmp r0, #0xe8
	beq _0802B82A
	ldr r4, _0802B7D8 @ =0x0000FFFF
	movs r0, #8
	bl sub_08003D14
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r3, r1, #0
	ldr r0, _0802B7DC @ =0x000082B9
	add r0, sl
	ldrb r2, [r0]
	movs r0, #6
	ands r0, r2
	cmp r0, #6
	bne _0802B7E4
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r1, _0802B7E0 @ =0x00000662
	b _0802B800
	.align 2, 0
_0802B7CC: .4byte gUnknown_0200DE99
_0802B7D0: .4byte 0x0000829B
_0802B7D4: .4byte 0x000067AC
_0802B7D8: .4byte 0x0000FFFF
_0802B7DC: .4byte 0x000082B9
_0802B7E0: .4byte 0x00000662
_0802B7E4:
	lsls r0, r2, #0x1e
	cmp r0, #0
	bge _0802B7F4
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xcc
	lsls r1, r1, #3
	b _0802B800
_0802B7F4:
	lsls r0, r2, #0x1d
	cmp r0, #0
	bge _0802B806
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldr r1, _0802B838 @ =0x00000661
_0802B800:
	cmp r0, r1
	beq _0802B806
	adds r4, r1, #0
_0802B806:
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0802B82A
	ldr r0, _0802B83C @ =gGame
	ldr r1, _0802B840 @ =0x00009D10
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xf0
	bl sub_08002FD4
	cmp r0, #0
	bne _0802B82A
	lsrs r0, r4, #0x10
	bl play_sound
_0802B82A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B838: .4byte 0x00000661
_0802B83C: .4byte gGame
_0802B840: .4byte 0x00009D10

	thumb_func_start sub_0802B844
sub_0802B844: @ 0x0802B844
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x6c
	muls r0, r1, r0
	ldr r1, _0802B854 @ =gCharStats
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0802B854: .4byte gCharStats

	thumb_func_start get_char_stats
get_char_stats: @ 0x0802B858
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0802B86C @ =gSave
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x6c
	muls r0, r1, r0
	ldr r1, _0802B870 @ =gCharStats
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0802B86C: .4byte gSave
_0802B870: .4byte gCharStats

	thumb_func_start sub_0802B874
sub_0802B874: @ 0x0802B874
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0802B888 @ =gUnknown_0200D818
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0802B888: .4byte gUnknown_0200D818

	thumb_func_start sub_0802B88C
sub_0802B88C: @ 0x0802B88C
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0
	beq _0802B8A2
	cmp r1, #1
	beq _0802B8B0
	movs r0, #0
	b _0802B8BA
_0802B8A2:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _0802B8AC @ =gUnknown_0200DE08
	b _0802B8B8
	.align 2, 0
_0802B8AC: .4byte gUnknown_0200DE08
_0802B8B0:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _0802B8C0 @ =gUnknown_0200DE44
_0802B8B8:
	adds r0, r0, r1
_0802B8BA:
	pop {r1}
	bx r1
	.align 2, 0
_0802B8C0: .4byte gUnknown_0200DE44

	thumb_func_start sub_0802B8C4
sub_0802B8C4: @ 0x0802B8C4
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r1, #0
	ldr r3, _0802B8DC @ =gSave
_0802B8CE:
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, r2
	bne _0802B8E0
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	b _0802B8EE
	.align 2, 0
_0802B8DC: .4byte gSave
_0802B8E0:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #4
	bls _0802B8CE
	movs r0, #1
	rsbs r0, r0, #0
_0802B8EE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802B8F4
sub_0802B8F4: @ 0x0802B8F4
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r4, #0
_0802B8FC:
	adds r0, r4, #0
	bl get_obj_direct
	adds r0, #0x88
	ldrh r0, [r0]
	cmp r0, r5
	bne _0802B910
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	b _0802B91E
_0802B910:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _0802B8FC
	movs r0, #1
	rsbs r0, r0, #0
_0802B91E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0802B924
sub_0802B924: @ 0x0802B924
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r4, #0
_0802B92C:
	adds r0, r4, #0
	bl get_obj_direct
	adds r0, #0x86
	ldrb r0, [r0]
	cmp r0, r5
	bne _0802B940
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	b _0802B94E
_0802B940:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _0802B92C
	movs r0, #1
	rsbs r0, r0, #0
_0802B94E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0802B954
sub_0802B954: @ 0x0802B954
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r5, #0
	ldr r0, _0802B998 @ =gGame
	ldr r1, _0802B99C @ =0x00008299
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r5, r1
	bhs _0802B9B6
	adds r7, r0, #0
_0802B96A:
	adds r0, r5, #0
	bl get_char_stats
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0802B9AA
	bl sub_08001D2C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802B9AA
	movs r1, #0
	adds r3, r4, #0
	adds r3, #0x34
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
_0802B98C:
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, r6
	bne _0802B9A0
	adds r0, r2, #0
	b _0802B9BA
	.align 2, 0
_0802B998: .4byte gGame
_0802B99C: .4byte 0x00008299
_0802B9A0:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #3
	bls _0802B98C
_0802B9AA:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrb r0, [r7]
	cmp r5, r0
	blo _0802B96A
_0802B9B6:
	movs r0, #1
	rsbs r0, r0, #0
_0802B9BA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start is_equippable
is_equippable: @ 0x0802B9C0
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0802B9DC @ =gGoodsInfo
	movs r2, #0x6c
	muls r0, r2, r0
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #3
	bls _0802B9E0
	movs r0, #0
	b _0802B9E2
	.align 2, 0
_0802B9DC: .4byte gGoodsInfo
_0802B9E0:
	movs r0, #1
_0802B9E2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802B9E8
sub_0802B9E8: @ 0x0802B9E8
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0802BA10 @ =gGoodsInfo
	movs r2, #0x6c
	muls r0, r2, r0
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _0802BA18
	cmp r0, #1
	blo _0802BA14
	cmp r0, #2
	beq _0802BA1C
	cmp r0, #3
	beq _0802BA20
	movs r0, #4
	b _0802BA22
	.align 2, 0
_0802BA10: .4byte gGoodsInfo
_0802BA14:
	movs r0, #0
	b _0802BA22
_0802BA18:
	movs r0, #1
	b _0802BA22
_0802BA1C:
	movs r0, #2
	b _0802BA22
_0802BA20:
	movs r0, #3
_0802BA22:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802BA28
sub_0802BA28: @ 0x0802BA28
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r4, #0
_0802BA32:
	adds r0, r5, #0
	adds r0, #0x3c
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, r6
	bne _0802BA52
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0802BA68
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802BA52
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	b _0802BA60
_0802BA52:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _0802BA32
	movs r0, #1
	rsbs r0, r0, #0
_0802BA60:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802BA68
sub_0802BA68: @ 0x0802BA68
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [r0, #0x38]
	lsrs r0, r1
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0

	thumb_func_start sub_0802BA78
sub_0802BA78: @ 0x0802BA78
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r4, #1
	lsls r4, r1
	ldr r3, [r0, #0x38]
	bics r3, r4
	lsls r2, r1
	orrs r3, r2
	str r3, [r0, #0x38]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802BA98
sub_0802BA98: @ 0x0802BA98
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r7, r1, #0
	movs r6, #0
	movs r2, #1
	movs r3, #1
	rsbs r3, r3, #0
	movs r5, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	ldrb r1, [r7]
	cmp r0, r1
	beq _0802BABA
	ldr r0, [r4, #0x38]
	lsrs r6, r0, #1
	b _0802BAF8
_0802BABA:
	adds r0, r4, #0
	adds r1, r5, #0
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_0802BA68
	lsls r0, r0, #0x10
	ldr r2, [sp]
	ldr r3, [sp, #4]
	cmp r0, #0
	beq _0802BAD2
	orrs r6, r2
_0802BAD2:
	lsls r2, r2, #1
	lsls r3, r3, #1
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xf
	bhi _0802BAF8
	adds r0, r4, #0
	adds r0, #0x3c
	adds r0, r0, r5
	adds r1, r7, r5
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0802BABA
	ldr r0, [r4, #0x38]
	ands r0, r3
	lsrs r0, r0, #1
	orrs r6, r0
_0802BAF8:
	str r6, [r4, #0x38]
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802BB04
sub_0802BB04: @ 0x0802BB04
	push {lr}
	movs r0, #0x18
	bl sub_08002998
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802BB60
	ldr r0, _0802BB2C @ =gSave
	movs r1, #0x88
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	cmp r1, #0xbf
	beq _0802BB58
	cmp r1, #0xbf
	bgt _0802BB30
	cmp r1, #0x23
	beq _0802BB58
	b _0802BB60
	.align 2, 0
_0802BB2C: .4byte gSave
_0802BB30:
	ldr r0, _0802BB4C @ =0x0000014B
	cmp r1, r0
	bgt _0802BB60
	subs r0, #5
	cmp r1, r0
	blt _0802BB60
	ldr r0, _0802BB50 @ =gGame
	ldr r1, _0802BB54 @ =0x000082B4
	adds r0, r0, r1
	movs r1, #0xe1
	lsls r1, r1, #3
	strh r1, [r0]
	b _0802BB60
	.align 2, 0
_0802BB4C: .4byte 0x0000014B
_0802BB50: .4byte gGame
_0802BB54: .4byte 0x000082B4
_0802BB58:
	movs r0, #0x18
	movs r1, #0
	bl sub_080028F4
_0802BB60:
	pop {r0}
	bx r0

	thumb_func_start sub_0802BB64
sub_0802BB64: @ 0x0802BB64
	push {lr}
	ldr r0, _0802BB78 @ =gUnknown_02005080
	ldrb r0, [r0]
	cmp r0, #5
	bhi _0802BBBE
	lsls r0, r0, #2
	ldr r1, _0802BB7C @ =_0802BB80
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802BB78: .4byte gUnknown_02005080
_0802BB7C: .4byte _0802BB80
_0802BB80: @ jump table
	.4byte _0802BB98 @ case 0
	.4byte _0802BBA8 @ case 1
	.4byte _0802BB98 @ case 2
	.4byte _0802BBB8 @ case 3
	.4byte _0802BBB8 @ case 4
	.4byte _0802BBB8 @ case 5
_0802BB98:
	ldr r0, _0802BBA4 @ =gUnknown_0200DEBC
	bl sub_0802BBE4
	bl sub_0802D3F8
	b _0802BBBE
	.align 2, 0
_0802BBA4: .4byte gUnknown_0200DEBC
_0802BBA8:
	ldr r0, _0802BBB4 @ =gUnknown_0200DEBC
	bl sub_0802C4A0
	bl sub_0802D3F8
	b _0802BBBE
	.align 2, 0
_0802BBB4: .4byte gUnknown_0200DEBC
_0802BBB8:
	ldr r0, _0802BBC4 @ =gUnknown_0200DEBC
	bl sub_0802C3F8
_0802BBBE:
	pop {r0}
	bx r0
	.align 2, 0
_0802BBC4: .4byte gUnknown_0200DEBC

	thumb_func_start sub_0802BBC8
sub_0802BBC8: @ 0x0802BBC8
	push {r4, lr}
	ldr r4, _0802BBE0 @ =gUnknown_0200DEBC
	adds r0, r4, #0
	bl sub_0802CED4
	adds r0, r4, #0
	bl sub_0802BBE4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802BBE0: .4byte gUnknown_0200DEBC

	thumb_func_start sub_0802BBE4
sub_0802BBE4: @ 0x0802BBE4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	str r0, [sp]
	ldr r0, _0802BC44 @ =gGame
	ldr r1, _0802BC48 @ =0x000067AC
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
	ldr r0, _0802C1C4 @ =0x0000FFFF
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
	ldr r1, _0802C1C8 @ =0xFFE07FFF
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
	ldr r2, _0802C1CC @ =0xFFF87FFF
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
	ldr r6, _0802C1D0 @ =0xFFFFFE00
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
	ldr r0, _0802C1D4 @ =0x0003FE00
	ands r2, r0
	ldr r0, [r3]
	ldr r1, _0802C1D8 @ =0xFFFC01FF
	ands r0, r1
	orrs r0, r2
	str r0, [r3]
	ldrb r0, [r6, #2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	lsls r0, r0, #7
	mov r2, ip
	ldrh r1, [r2]
	ldr r3, _0802C1DC @ =0xFFFFF87F
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	mov r6, ip
	strh r1, [r6]
	mov r1, sl
	ldrh r0, [r1, #6]
	adds r3, r7, #0
	adds r3, #0xc2
	ldr r2, _0802C1E0 @ =0x000007FC
	ands r2, r0
	ldrh r0, [r3]
	ldr r6, _0802C1E4 @ =0xFFFFF803
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
	ldr r4, _0802C2A8 @ =0xFFFFFC03
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
	ldr r3, _0802C3EC @ =0xFFFFFC03
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
	ldr r1, _0802C3F0 @ =gGame
	ldr r6, _0802C3F4 @ =0x000067AC
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

	thumb_func_start sub_0802C3F8
sub_0802C3F8: @ 0x0802C3F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r5, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	cmp r5, r0
	bhs _0802C492
	movs r7, #0
	movs r0, #2
	rsbs r0, r0, #0
	mov r8, r0
_0802C412:
	adds r0, r5, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r4, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802C482
	adds r1, r4, #0
	adds r1, #0x8c
	ldr r0, _0802C49C @ =0x0000FFFF
	strh r0, [r1]
	str r7, [r4, #0x1c]
	adds r2, r4, #0
	adds r2, #0xbf
	ldrb r0, [r2]
	movs r3, #0x41
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
	adds r2, #0xd
	ldrb r1, [r2]
	mov r0, r8
	ands r0, r1
	strb r0, [r2]
	subs r2, #4
	ldrb r1, [r2]
	mov r0, r8
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x9e
	strh r7, [r0]
	adds r0, #2
	strh r7, [r0]
	ldrb r0, [r2]
	adds r3, #0x3a
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
	ldrh r1, [r4]
	strh r1, [r4, #8]
	ldrh r0, [r4, #2]
	strh r0, [r4, #0xa]
	strh r1, [r4, #0xc]
	strh r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08035FE4
	adds r0, r4, #0
	bl sub_08036030
_0802C482:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	cmp r5, r0
	blo _0802C412
_0802C492:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C49C: .4byte 0x0000FFFF

	thumb_func_start sub_0802C4A0
sub_0802C4A0: @ 0x0802C4A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp]
	ldr r0, _0802C4E0 @ =gGame
	ldr r1, _0802C4E4 @ =0x000067AC
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
	ldr r0, _0802C88C @ =0x0000FFFF
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
	ldr r2, _0802C890 @ =0xFFF87FFF
	ands r0, r2
	orrs r0, r1
	str r0, [r3]
	ldrh r2, [r6, #4]
	lsls r2, r2, #0x17
	adds r3, #4
	lsrs r2, r2, #0x17
	mov ip, r2
	ldrh r0, [r3]
	ldr r2, _0802C894 @ =0xFFFFFE00
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
	ldr r0, _0802C898 @ =0x0003FE00
	ands r2, r0
	ldr r0, [r3]
	ldr r1, _0802C89C @ =0xFFFC01FF
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
	ldr r5, _0802C8A0 @ =0xFFFFF87F
	adds r2, r5, #0
	ands r1, r2
	orrs r1, r0
	strh r1, [r3]
	ldrh r0, [r6, #6]
	adds r3, r7, #0
	adds r3, #0xc2
	ldr r2, _0802C8A4 @ =0x000007FC
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

	thumb_func_start sub_0802C8A8
sub_0802C8A8: @ 0x0802C8A8
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
	ldr r1, _0802C8E4 @ =gGame
	ldr r2, _0802C8E8 @ =0x0000829B
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
	ldr r0, _0802C908 @ =0x000067AC
	adds r1, r1, r0
	ldr r2, _0802C90C @ =gSave
	movs r3, #0xdf
	lsls r3, r3, #3
	adds r0, r2, r3
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r1, r0
	bne _0802C914
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r1, _0802C910 @ =0x000006FE
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
	ldr r1, _0802C948 @ =0x00000706
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
	ldr r1, _0802C94C @ =_0802C950
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802C948: .4byte 0x00000706
_0802C94C: .4byte _0802C950
_0802C950: @ jump table
	.4byte _0802C964 @ case 0
	.4byte _0802C968 @ case 1
	.4byte _0802C96E @ case 2
	.4byte _0802C978 @ case 3
	.4byte _0802C97C @ case 4
_0802C964:
	movs r5, #0x7b
	b _0802C97E
_0802C968:
	movs r5, #0x8e
	lsls r5, r5, #2
	b _0802C97E
_0802C96E:
	ldr r5, _0802C974 @ =0x00000237
	b _0802C97E
	.align 2, 0
_0802C974: .4byte 0x00000237
_0802C978:
	movs r5, #0xd0
	b _0802C97E
_0802C97C:
	ldr r5, _0802CD64 @ =0x00000236
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
	ldr r0, _0802CD68 @ =0x0000FFFF
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
	ldr r1, _0802CD6C @ =0xFFE07FFF
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
	ldr r1, _0802CD70 @ =0xFFF87FFF
	ands r0, r1
	movs r1, #0xa0
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r2]
	adds r2, r7, #0
	adds r2, #0xc0
	ldrh r1, [r2]
	ldr r0, _0802CD74 @ =0xFFFFFE00
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
	ldr r1, _0802CD78 @ =0xFFFC01FF
	ands r0, r1
	str r0, [r2]
	mov r2, ip
	ldrh r1, [r2]
	ldr r0, _0802CD7C @ =0xFFFFF87F
	ands r0, r1
	strh r0, [r2]
	adds r2, r7, #0
	adds r2, #0xc2
	ldrh r1, [r2]
	ldr r0, _0802CD80 @ =0xFFFFF803
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
	ldr r0, _0802CE04 @ =0xFFFFFC03
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
	ldr r0, _0802CE24 @ =gGame
	ldr r1, _0802CE28 @ =0x00008375
	adds r0, r0, r1
	movs r2, #0
	strb r2, [r0]
	ldr r1, _0802CE2C @ =gSave
	ldr r3, _0802CE30 @ =0x000006FA
	adds r0, r1, r3
	ldrh r0, [r0]
	lsls r0, r0, #4
	strh r0, [r7]
	ldr r0, _0802CE34 @ =0x000006FC
	adds r1, r1, r0
	b _0802CE52
	.align 2, 0
_0802CE24: .4byte gGame
_0802CE28: .4byte 0x00008375
_0802CE2C: .4byte gSave
_0802CE30: .4byte 0x000006FA
_0802CE34: .4byte 0x000006FC
_0802CE38:
	ldr r0, _0802CEC0 @ =gGame
	ldr r1, _0802CEC4 @ =0x00008375
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldr r1, _0802CEC8 @ =gSave
	ldr r2, _0802CECC @ =0x00000702
	adds r0, r1, r2
	ldrh r0, [r0]
	lsls r0, r0, #4
	strh r0, [r7]
	ldr r3, _0802CED0 @ =0x00000704
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

	thumb_func_start sub_0802CED4
sub_0802CED4: @ 0x0802CED4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
	b _0802CF06
_0802CEDC:
	adds r0, r5, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r4, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802CEFE
	adds r0, r4, #0
	bl sub_08035FE4
	adds r0, r4, #0
	bl sub_08036030
_0802CEFE:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #0
_0802CF06:
	adds r0, #0xb4
	ldrb r0, [r0]
	cmp r5, r0
	blo _0802CEDC
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0802CF14
sub_0802CF14: @ 0x0802CF14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r7, r0, #0
	adds r5, r1, #0
	adds r0, #0xbc
	str r0, [sp]
	ldrb r0, [r0]
	movs r1, #1
	mov ip, r1
	mov r2, ip
	orrs r0, r2
	ldr r1, [sp]
	strb r0, [r1]
	ldrb r2, [r5, #9]
	lsls r2, r2, #0x1c
	lsrs r0, r2, #0x1d
	adds r1, r7, #0
	adds r1, #0x8b
	strb r0, [r1]
	adds r1, #1
	ldr r0, _0802D204 @ =0x0000FFFF
	strh r0, [r1]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	adds r0, #0x92
	movs r1, #0
	strh r1, [r0]
	subs r0, #4
	movs r1, #1
	strb r1, [r0]
	adds r0, #1
	movs r1, #0
	strb r1, [r0]
	movs r0, #0xbf
	adds r0, r0, r7
	mov sb, r0
	ldrb r1, [r0]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, sb
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0xcc
	str r0, [sp, #4]
	ldrb r1, [r0]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	ldr r1, [sp, #4]
	strb r0, [r1]
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	mov r1, sb
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0xc8
	str r0, [sp, #8]
	ldrb r1, [r0]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	ldr r1, [sp, #8]
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x9e
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	ldr r1, [sp, #8]
	strb r0, [r1]
	lsrs r2, r2, #0x1d
	lsls r2, r2, #2
	ldr r1, [sp]
	ldrb r0, [r1]
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r1, r0
	orrs r1, r2
	movs r4, #0x21
	rsbs r4, r4, #0
	ands r1, r4
	ldrb r0, [r5]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	lsls r0, r0, #7
	movs r2, #0x7f
	ands r1, r2
	orrs r1, r0
	ldr r0, [sp]
	strb r1, [r0]
	ldrb r2, [r5, #0xa]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1f
	movs r0, #0xcb
	adds r0, r0, r7
	mov r8, r0
	mov r0, ip
	ands r1, r0
	lsls r1, r1, #6
	mov r0, r8
	ldrb r3, [r0]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x1f
	adds r0, r7, #0
	adds r0, #0xcd
	str r0, [sp, #0xc]
	mov r1, ip
	ands r2, r1
	ldrb r1, [r0]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	ldrh r1, [r5]
	lsls r1, r1, #0x17
	adds r3, r7, #0
	adds r3, #0xbd
	movs r2, #3
	mov r0, sp
	strb r2, [r0, #0x10]
	lsrs r1, r1, #0x1e
	lsls r1, r1, #3
	ldrb r2, [r3]
	movs r0, #0x19
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	str r3, [sp, #0x20]
	bl sub_08036CD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sp
	ldrb r1, [r1, #0x10]
	ands r0, r1
	lsls r0, r0, #5
	ldr r3, [sp, #0x20]
	ldrb r2, [r3]
	movs r1, #0x61
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	ands r0, r4
	mov r2, sb
	strb r0, [r2]
	adds r6, r7, #0
	adds r6, #0xc4
	ldrb r1, [r6]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r2, #3
	rsbs r2, r2, #0
	ands r0, r2
	strb r0, [r6]
	adds r3, r7, #0
	adds r3, #0xc5
	ldrb r1, [r3]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x4c
	orrs r0, r1
	strb r0, [r3]
	ldr r0, [r6]
	ldr r1, _0802D208 @ =0xFFE07FFF
	ands r0, r1
	str r0, [r6]
	movs r0, #0xc6
	adds r0, r0, r7
	mov ip, r0
	ldrb r0, [r0]
	ands r4, r0
	mov r1, ip
	strb r4, [r1]
	adds r0, r7, #0
	adds r0, #0x9a
	movs r1, #1
	strh r1, [r0]
	movs r0, #0xc7
	adds r0, r0, r7
	mov sl, r0
	ldrb r1, [r0]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r2
	mov r1, sl
	strb r0, [r1]
	ldr r0, [sp]
	ldrb r1, [r0]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	ldr r1, [sp]
	strb r0, [r1]
	adds r4, r7, #0
	adds r4, #0xca
	ldrb r1, [r4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r3, #5
	rsbs r3, r3, #0
	ands r0, r3
	strb r0, [r4]
	mov r0, sl
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	mov r1, sl
	strb r0, [r1]
	ldrb r1, [r4]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	ldr r1, [sp, #8]
	strb r0, [r1]
	ldr r0, [sp, #0xc]
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	mov r1, ip
	ldrb r0, [r1]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x7f
	ands r1, r0
	mov r0, ip
	strb r1, [r0]
	ldrb r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r4]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r2
	ands r0, r3
	mov r1, r8
	strb r0, [r1]
	ldr r1, [sp, #4]
	ldrb r0, [r1]
	ands r2, r0
	ands r2, r3
	movs r0, #9
	rsbs r0, r0, #0
	ands r2, r0
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r2, r1
	ldr r0, [sp, #4]
	strb r2, [r0]
	movs r1, #0
	str r1, [r7, #0x30]
	str r1, [r7, #0x34]
	mov r2, sl
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	str r0, [r7, #0x38]
	str r0, [r7, #0x3c]
	adds r0, r7, #0
	adds r0, #0xb2
	movs r1, #0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	ldr r2, [sp, #4]
	ldrb r0, [r2]
	movs r1, #0x7f
	ands r1, r0
	strb r1, [r2]
	adds r0, r7, #0
	adds r0, #0xb6
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
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x50
	ldrb r0, [r1]
	movs r2, #2
	rsbs r2, r2, #0
	ands r2, r0
	strb r2, [r1]
	ldrb r0, [r5, #9]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0802D20C
	ldr r0, [r5, #8]
	lsls r0, r0, #0xb
	lsrs r0, r0, #0x18
	b _0802D212
	.align 2, 0
_0802D204: .4byte 0x0000FFFF
_0802D208: .4byte 0xFFE07FFF
_0802D20C:
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x19
_0802D212:
	lsls r0, r0, #2
	ldrh r2, [r6]
	ldr r1, _0802D290 @ =0xFFFFFC03
	ands r1, r2
	orrs r1, r0
	strh r1, [r6]
	ldr r0, [r7, #0x2c]
	movs r1, #8
	bl memclear
	ldrb r0, [r5, #0x12]
	lsls r0, r0, #4
	adds r0, #8
	lsls r1, r0, #4
	movs r2, #0
	strh r1, [r7]
	ldrb r0, [r5, #0x13]
	lsls r0, r0, #4
	adds r0, #0xf
	lsls r0, r0, #4
	strh r0, [r7, #2]
	ldrb r0, [r5, #3]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0802D24A
	adds r0, r1, #0
	adds r0, #0x80
	strh r0, [r7]
_0802D24A:
	ldrb r0, [r5, #3]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802D258
	ldrh r0, [r7, #2]
	adds r0, #0x80
	strh r0, [r7, #2]
_0802D258:
	strh r2, [r7, #4]
	strh r2, [r7, #6]
	movs r2, #0
	adds r3, r7, #0
	adds r3, #0x74
	movs r4, #0xff
_0802D264:
	adds r1, r3, r2
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	adds r2, #1
	cmp r2, #0xc
	ble _0802D264
	adds r0, r7, #0
	bl sub_08036BA4
	adds r0, r7, #0
	bl sub_0802DE5C
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D290: .4byte 0xFFFFFC03

	thumb_func_start sub_0802D294
sub_0802D294: @ 0x0802D294
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	ldr r0, _0802D3EC @ =gGame
	ldr r1, _0802D3F0 @ =0x000067AC
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_0801B498
	adds r6, r0, #0
	movs r2, #0
	mov r8, r2
	mov r0, sb
	adds r0, #0xb4
	ldrb r0, [r0]
	cmp r8, r0
	blo _0802D2BE
	b _0802D3DC
_0802D2BE:
	movs r3, #3
	mov sl, r3
_0802D2C2:
	mov r0, r8
	adds r0, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xbc
	ldrb r0, [r5]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802D3C4
	ldrb r0, [r6, #9]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1d
	adds r1, r4, #0
	adds r1, #0x8b
	movs r7, #0
	strb r0, [r1]
	adds r1, #1
	ldr r0, _0802D3F4 @ =0x0000FFFF
	strh r0, [r1]
	str r7, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x92
	movs r1, #0
	strh r7, [r0]
	adds r2, r4, #0
	adds r2, #0x8e
	movs r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x8f
	strb r1, [r0]
	adds r3, r4, #0
	adds r3, #0xbf
	ldrb r0, [r3]
	movs r2, #0x41
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r3]
	adds r2, r4, #0
	adds r2, #0xcc
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r3]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3]
	subs r2, #4
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x9e
	strh r7, [r0]
	ldrb r0, [r6, #9]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	ldrb r1, [r5]
	movs r3, #0x1d
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	ldrh r1, [r6]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x1e
	adds r5, #1
	mov r0, sl
	ands r1, r0
	lsls r1, r1, #3
	ldrb r0, [r5]
	adds r3, #4
	adds r2, r3, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	bl sub_08036CD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sl
	ands r0, r1
	lsls r0, r0, #5
	ldrb r1, [r5]
	movs r3, #0x61
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	ldrb r0, [r6, #0x12]
	lsls r0, r0, #4
	adds r0, #8
	lsls r1, r0, #4
	strh r1, [r4]
	ldrb r0, [r6, #0x13]
	lsls r0, r0, #4
	adds r0, #0xf
	lsls r0, r0, #4
	strh r0, [r4, #2]
	ldrb r0, [r6, #3]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0802D3B2
	adds r0, r1, #0
	adds r0, #0x80
	strh r0, [r4]
_0802D3B2:
	ldrb r0, [r6, #3]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802D3C0
	ldrh r0, [r4, #2]
	adds r0, #0x80
	strh r0, [r4, #2]
_0802D3C0:
	strh r7, [r4, #4]
	strh r7, [r4, #6]
_0802D3C4:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r6, #0x18
	mov r0, sb
	adds r0, #0xb4
	ldrb r0, [r0]
	cmp r8, r0
	bhs _0802D3DC
	b _0802D2C2
_0802D3DC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D3EC: .4byte gGame
_0802D3F0: .4byte 0x000067AC
_0802D3F4: .4byte 0x0000FFFF

	thumb_func_start sub_0802D3F8
sub_0802D3F8: @ 0x0802D3F8
	push {r4, r5, r6, lr}
	ldr r0, _0802D448 @ =gGame
	ldr r1, _0802D44C @ =0x00008371
	adds r5, r0, r1
	ldrb r3, [r5]
	ldr r2, _0802D450 @ =0x00008372
	adds r1, r0, r2
	movs r2, #0
	strb r3, [r1]
	strb r2, [r5]
	movs r4, #0
	ldr r1, _0802D454 @ =0x00008370
	adds r0, r0, r1
	ldrb r2, [r0]
	cmp r4, r2
	bhs _0802D440
	adds r6, r0, #0
_0802D41A:
	adds r0, r4, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802D434
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
_0802D434:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r0, [r6]
	cmp r4, r0
	blo _0802D41A
_0802D440:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802D448: .4byte gGame
_0802D44C: .4byte 0x00008371
_0802D450: .4byte 0x00008372
_0802D454: .4byte 0x00008370

	thumb_func_start sub_0802D458
sub_0802D458: @ 0x0802D458
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	bl sub_0802D3F8
	ldr r2, _0802D484 @ =gGame
	ldrb r0, [r2, #2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #2]
	mov r3, sp
	ldrb r1, [r2, #8]
	lsls r0, r1, #0x1f
	lsrs r0, r0, #0x1f
	strh r0, [r3]
	movs r0, #1
	orrs r1, r0
	strb r1, [r2, #8]
	movs r6, #0
	b _0802D590
	.align 2, 0
_0802D484: .4byte gGame
_0802D488:
	adds r0, r6, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r4, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0802D4A6
	adds r0, r4, #0
	bl sub_0802D6A0
	b _0802D58A
_0802D4A6:
	adds r2, r4, #0
	adds r2, #0xbf
	ldrb r1, [r2]
	movs r3, #9
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r1, r0
	subs r3, #8
	adds r0, r3, #0
	ands r1, r0
	subs r3, #0x10
	adds r0, r3, #0
	ands r1, r0
	strb r1, [r2]
	ldr r0, [r4, #0x34]
	adds r7, r2, #0
	cmp r0, #0
	beq _0802D4D2
	adds r0, r4, #0
	bl sub_0802D790
	b _0802D55E
_0802D4D2:
	adds r5, r4, #0
	adds r5, #0xca
	ldrb r0, [r5]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802D4F4
	ldr r0, _0802D4F0 @ =gGame
	ldrb r0, [r0]
	cmp r0, #9
	beq _0802D55E
	adds r0, r4, #0
	bl sub_080347B8
	b _0802D55E
	.align 2, 0
_0802D4F0: .4byte gGame
_0802D4F4:
	ldr r0, _0802D50C @ =gGame
	ldrb r0, [r0]
	cmp r0, #1
	bne _0802D510
	adds r0, r4, #0
	adds r0, #0xc8
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0802D55E
	b _0802D53A
	.align 2, 0
_0802D50C: .4byte gGame
_0802D510:
	subs r0, #9
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r4, #0
	adds r2, #0xcc
	cmp r0, #1
	bls _0802D52C
	lsls r0, r1, #0x19
	cmp r0, #0
	blt _0802D52C
	ldrb r0, [r2]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802D53A
_0802D52C:
	ldrb r0, [r2]
	movs r3, #2
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
	b _0802D58A
_0802D53A:
	adds r0, r4, #0
	bl sub_0802DA58
	ldrb r0, [r5]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0802D55E
	adds r2, r4, #0
	adds r2, #0xcb
	ldrb r0, [r2]
	movs r3, #3
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	subs r3, #2
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
_0802D55E:
	ldr r0, _0802D5C8 @ =gGame
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802D576
	ldrb r0, [r7]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _0802D576
	adds r0, r4, #0
	bl sub_0802D9F8
_0802D576:
	ldr r1, _0802D5C8 @ =gGame
	ldrb r0, [r1]
	cmp r0, #9
	beq _0802D58A
	ldr r2, _0802D5CC @ =0x00009D14
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0802D59C
_0802D58A:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0802D590:
	mov r0, r8
	adds r0, #0xb4
	ldrb r0, [r0]
	cmp r6, r0
	bhs _0802D59C
	b _0802D488
_0802D59C:
	ldr r3, _0802D5C8 @ =gGame
	ldrb r1, [r3, #2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #2]
	mov r0, sp
	ldrh r0, [r0]
	movs r1, #1
	ands r1, r0
	ldrb r2, [r3, #8]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #8]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D5C8: .4byte gGame
_0802D5CC: .4byte 0x00009D14

	thumb_func_start sub_0802D5D0
sub_0802D5D0: @ 0x0802D5D0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	b _0802D608
_0802D5D8:
	adds r0, r4, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802D600
	adds r0, r1, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802D600
	adds r0, r1, #0
	bl sub_080347B8
_0802D600:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
_0802D608:
	adds r0, #0xb4
	ldrb r0, [r0]
	cmp r4, r0
	blo _0802D5D8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802D618
sub_0802D618: @ 0x0802D618
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	b _0802D650
_0802D620:
	adds r0, r4, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802D648
	adds r0, r1, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802D648
	adds r0, r1, #0
	bl sub_0803496C
_0802D648:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
_0802D650:
	adds r0, #0xb4
	ldrb r0, [r0]
	cmp r4, r0
	blo _0802D620
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802D660
sub_0802D660: @ 0x0802D660
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	b _0802D692
_0802D668:
	adds r0, r4, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802D68A
	ldr r0, [r1, #0x34]
	cmp r0, #0
	beq _0802D68A
	adds r0, r1, #0
	bl sub_0802D790
_0802D68A:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
_0802D692:
	adds r0, #0xb4
	ldrb r0, [r0]
	cmp r4, r0
	blo _0802D668
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0802D6A0
sub_0802D6A0: @ 0x0802D6A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0802D788
	adds r0, r5, #0
	adds r0, #0xc8
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0802D788
	ldr r0, _0802D764 @ =gGame
	ldrb r1, [r0]
	cmp r1, #1
	beq _0802D788
	cmp r1, #9
	beq _0802D788
	ldr r1, _0802D768 @ =0x000067AC
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_0801B498
	adds r6, r0, #0
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r1, [r0]
	subs r1, #5
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r6, r6, r0
	ldrb r0, [r6, #8]
	lsrs r0, r0, #5
	cmp r0, #0
	beq _0802D788
	adds r7, r5, #0
	adds r7, #0xa4
	ldrh r0, [r7]
	adds r0, #1
	strh r0, [r7]
	lsls r0, r0, #0x10
	ldr r1, _0802D76C @ =0x03830000
	cmp r0, r1
	bls _0802D788
	ldrb r0, [r6, #0x12]
	lsls r0, r0, #4
	adds r0, #8
	lsls r1, r0, #4
	strh r1, [r5]
	ldrb r0, [r6, #0x13]
	lsls r0, r0, #4
	adds r0, #0xf
	lsls r0, r0, #4
	strh r0, [r5, #2]
	ldrb r0, [r6, #3]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0802D720
	adds r0, r1, #0
	adds r0, #0x80
	strh r0, [r5]
_0802D720:
	ldrb r0, [r6, #3]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802D72E
	ldrh r0, [r5, #2]
	adds r0, #0x80
	strh r0, [r5, #2]
_0802D72E:
	mov r4, sp
	mov r0, sp
	bl sub_0801A530
	mov r0, sp
	ldrh r2, [r0]
	ldr r1, _0802D770 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	ldrh r1, [r4, #2]
	add r0, sp, #4
	strh r1, [r0, #2]
	movs r1, #0xf0
	strh r1, [r0, #4]
	movs r1, #0xa0
	strh r1, [r0, #6]
	adds r1, r5, #0
	bl sub_08035600
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802D774
	movs r0, #0
	strh r0, [r7]
	b _0802D788
	.align 2, 0
_0802D764: .4byte gGame
_0802D768: .4byte 0x000067AC
_0802D76C: .4byte 0x03830000
_0802D770: .4byte 0xFFFF0000
_0802D774:
	adds r0, r5, #0
	bl sub_0800CBE0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802D788
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0802CF14
_0802D788:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0802D790
sub_0802D790: @ 0x0802D790
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x20
	adds r6, r0, #0
	ldr r0, [r6, #0x38]
	add r7, sp, #0x10
	cmp r0, #0
	beq _0802D7C6
	movs r5, #0
	ldrh r1, [r6, #4]
	ldr r4, _0802D7F0 @ =0xFFFF0000
	ldr r0, [sp, #0xc]
	ands r0, r4
	orrs r0, r1
	str r0, [sp, #0xc]
	ldrh r1, [r6, #6]
	add r0, sp, #0xc
	strh r1, [r0, #2]
	adds r0, r6, #0
	bl sub_08036238
	ldr r0, [sp, #0x10]
	ands r0, r4
	str r0, [sp, #0x10]
	strh r5, [r7, #2]
_0802D7C6:
	ldr r2, [r6, #0x34]
	ldrb r1, [r2, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802D7F4
	adds r0, r6, #0
	adds r0, #8
	adds r1, r6, #0
	adds r1, #0x10
	ldrh r3, [r2, #0xa]
	ldrh r2, [r2]
	str r2, [sp]
	adds r2, r6, #0
	bl sub_08002E8C
	movs r1, #0
	strh r1, [r7]
	add r0, sp, #0x10
	strh r1, [r0, #2]
	b _0802D85A
	.align 2, 0
_0802D7F0: .4byte 0xFFFF0000
_0802D7F4:
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1c
	adds r2, r7, #2
	adds r1, r7, #0
	bl sub_080270A0
	ldr r0, [r6, #0x34]
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	adds r1, r6, #0
	adds r1, #0x8f
	strb r0, [r1]
	adds r4, r6, #0
	adds r4, #0xbc
	ldrb r0, [r4]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _0802D836
	ldrb r0, [r1]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r4]
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
_0802D836:
	ldrb r2, [r4]
	lsls r0, r2, #0x19
	cmp r0, #0
	blt _0802D85A
	adds r0, r6, #0
	adds r0, #0x85
	ldrb r3, [r0]
	ldr r0, _0802D918 @ =gGame
	ldrb r0, [r0]
	movs r1, #1
	cmp r0, #9
	bne _0802D850
	movs r1, #3
_0802D850:
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	adds r0, r3, #0
	bl sub_080332AC
_0802D85A:
	adds r4, r7, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802D86C
	b _0802D9C8
_0802D86C:
	movs r2, #0
	ldr r1, _0802D91C @ =0xFFFF0000
	ldr r0, [sp, #0x14]
	ands r0, r1
	str r0, [sp, #0x14]
	add r1, sp, #0x14
	strh r2, [r1, #2]
	ldr r0, _0802D918 @ =gGame
	mov sb, r0
	ldr r0, _0802D920 @ =0x000067B8
	add r0, sb
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r2, r6, #0
	adds r2, #0x85
	mov r8, r1
	ldrb r2, [r2]
	cmp r0, r2
	bne _0802D94C
	ldr r0, [r6, #0x34]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r7, r2, #0
	cmp r2, #1
	bls _0802D8B8
	movs r3, #0
	ldrsh r0, [r4, r3]
	adds r1, r0, #0
	muls r1, r2, r1
	add r0, sp, #0x10
	strh r1, [r0]
	movs r1, #2
	ldrsh r0, [r4, r1]
	muls r0, r2, r0
	strh r0, [r4, #2]
_0802D8B8:
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r3, #2
	ldrsh r2, [r4, r3]
	add r4, sp, #0x18
	mov r0, sp
	adds r0, #0x1a
	str r0, [sp]
	add r5, sp, #0x1c
	str r5, [sp, #4]
	adds r0, #4
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r3, r4, #0
	bl sub_0800F99C
	cmp r7, #0
	bne _0802D928
	ldr r3, _0802D924 @ =0x000067A4
	add r3, sb
	ldr r2, [r6, #0x34]
	ldrh r1, [r4]
	ldrh r0, [r2, #2]
	adds r7, r1, #0
	muls r7, r0, r7
	adds r0, r7, #0
	strh r0, [r3]
	ldrh r1, [r4, #2]
	ldrh r0, [r2, #2]
	adds r4, r1, #0
	muls r4, r0, r4
	adds r0, r4, #0
	strh r0, [r3, #2]
	ldrh r1, [r2, #2]
	ldrh r0, [r5]
	adds r7, r1, #0
	muls r7, r0, r7
	adds r0, r7, #0
	mov r1, r8
	strh r0, [r1]
	ldrh r1, [r2, #2]
	ldrh r0, [r5, #2]
	adds r2, r1, #0
	muls r2, r0, r2
	adds r0, r2, #0
	mov r3, r8
	strh r0, [r3, #2]
	b _0802D990
	.align 2, 0
_0802D918: .4byte gGame
_0802D91C: .4byte 0xFFFF0000
_0802D920: .4byte 0x000067B8
_0802D924: .4byte 0x000067A4
_0802D928:
	ldr r1, _0802D948 @ =0x000067A4
	add r1, sb
	ldrh r0, [r4]
	lsls r0, r0, #4
	strh r0, [r1]
	ldrh r0, [r4, #2]
	lsls r0, r0, #4
	strh r0, [r1, #2]
	ldrh r0, [r5]
	lsls r0, r0, #4
	mov r4, r8
	strh r0, [r4]
	ldrh r0, [r5, #2]
	lsls r0, r0, #4
	b _0802D98E
	.align 2, 0
_0802D948: .4byte 0x000067A4
_0802D94C:
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802D958
	cmp r0, #9
	bne _0802D974
_0802D958:
	adds r2, r6, #0
	adds r2, #0x98
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r4, r3]
	muls r0, r1, r0
	mov r7, r8
	strh r0, [r7]
	ldrh r1, [r2]
	movs r2, #2
	ldrsh r0, [r4, r2]
	muls r0, r1, r0
	strh r0, [r7, #2]
	b _0802D990
_0802D974:
	ldr r2, [r6, #0x34]
	ldrh r1, [r2, #2]
	ldrh r0, [r7]
	adds r3, r1, #0
	muls r3, r0, r3
	adds r0, r3, #0
	mov r4, r8
	strh r0, [r4]
	ldrh r1, [r2, #2]
	ldrh r0, [r7, #2]
	adds r7, r1, #0
	muls r7, r0, r7
	adds r0, r7, #0
_0802D98E:
	strh r0, [r4, #2]
_0802D990:
	mov r1, r8
	ldrh r0, [r1]
	ldrh r2, [r6]
	adds r0, r0, r2
	strh r0, [r6]
	adds r0, r6, #0
	adds r0, #0xc8
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0802D9B6
	adds r1, r6, #0
	adds r1, #0xb6
	mov r3, r8
	ldrh r0, [r3, #2]
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	b _0802D9C0
_0802D9B6:
	mov r7, r8
	ldrh r0, [r7, #2]
	ldrh r1, [r6, #2]
	adds r0, r0, r1
	strh r0, [r6, #2]
_0802D9C0:
	adds r0, r6, #0
	bl sub_080360E0
	b _0802D9CE
_0802D9C8:
	adds r0, r6, #0
	bl sub_08035FE4
_0802D9CE:
	ldr r0, _0802D9F4 @ =gGame
	ldrb r0, [r0]
	cmp r0, #9
	bne _0802D9E6
	ldr r0, [r6, #0x30]
	cmp r0, #0
	bne _0802D9E6
	adds r0, r6, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033414
_0802D9E6:
	add sp, #0x20
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D9F4: .4byte gGame

	thumb_func_start sub_0802D9F8
sub_0802D9F8: @ 0x0802D9F8
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x8f
	movs r0, #0
	strb r0, [r1]
	mov r5, sp
	mov r2, sp
	adds r2, #2
	mov r1, sp
	bl sub_080270A0
	adds r0, r4, #0
	mov r1, sp
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802DA44
	adds r2, r4, #0
	adds r2, #0x96
	ldrh r1, [r2]
	mov r0, sp
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r1, r0
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldrh r1, [r2]
	movs r2, #2
	ldrsh r0, [r5, r2]
	muls r0, r1, r0
	ldrh r3, [r4, #2]
	adds r0, r0, r3
	strh r0, [r4, #2]
	b _0802DA4E
_0802DA44:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033414
_0802DA4E:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802DA58
sub_0802DA58: @ 0x0802DA58
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0xc4
	ldrh r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0802DABC
	adds r0, r4, #0
	adds r0, #0xc8
	ldrb r1, [r0]
	lsls r0, r1, #0x1a
	cmp r0, #0
	blt _0802DA88
	adds r0, r4, #0
	adds r0, #0xcd
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802DA88
	lsrs r0, r1, #7
	cmp r0, #0
	beq _0802DA88
	b _0802DB94
_0802DA88:
	adds r5, r4, #0
	adds r5, #0xca
	ldrb r0, [r5]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0802DAE6
	adds r2, r4, #0
	adds r2, #0xbd
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0802DAB8 @ =gGame
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802DB94
	adds r0, r4, #0
	adds r0, #0xbf
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _0802DB94
	.align 2, 0
_0802DAB8: .4byte gGame
_0802DABC:
	adds r0, r4, #0
	adds r0, #0xc8
	ldrb r1, [r0]
	lsls r0, r1, #0x1a
	cmp r0, #0
	blt _0802DADA
	adds r0, r4, #0
	adds r0, #0xcd
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802DADA
	lsrs r0, r1, #7
	cmp r0, #0
	bne _0802DB94
_0802DADA:
	adds r5, r4, #0
	adds r5, #0xca
	ldrb r1, [r5]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _0802DB40
_0802DAE6:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0802E6BC
	adds r1, r4, #0
	adds r1, #0xa2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802DB94
	ldrb r1, [r5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r5]
	adds r0, r4, #0
	bl sub_0800CBE0
	ldrb r1, [r5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	adds r0, r4, #0
	adds r0, #0xcb
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0802DB94
	adds r0, r4, #0
	adds r0, #0xc4
	ldrh r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x18
	movs r1, #8
	bl sub_08027DC4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802DB62
	b _0802DB94
_0802DB40:
	lsls r0, r1, #0x1d
	cmp r0, #0
	bge _0802DB62
	adds r1, r4, #0
	adds r1, #0xa2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802DB94
	ldrb r1, [r5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	b _0802DB94
_0802DB62:
	adds r0, r4, #0
	adds r0, #0xc4
	ldrb r1, [r0]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _0802DB88
	lsls r0, r1, #0x1e
	cmp r0, #0
	blt _0802DB8E
	adds r0, r4, #0
	bl sub_0802DB9C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802DB8E
	adds r0, r4, #0
	bl enemy_move
	b _0802DB8E
_0802DB88:
	adds r0, r4, #0
	bl enemy_move
_0802DB8E:
	adds r0, r4, #0
	bl sub_0802DDA0
_0802DB94:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802DB9C
sub_0802DB9C: @ 0x0802DB9C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0xc5
	ldrb r0, [r6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1b
	cmp r0, #0x13
	bne _0802DBB2
	movs r0, #0
	b _0802DC24
_0802DBB2:
	ldr r7, _0802DBD0 @ =gUnknown_08D2DF14
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	cmp r0, #0
	bne _0802DBD4
	adds r2, r5, #0
	adds r2, #0xc4
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0
	b _0802DC24
	.align 2, 0
_0802DBD0: .4byte gUnknown_08D2DF14
_0802DBD4:
	adds r0, r5, #0
	bl sub_0802DD04
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802DBE4
	movs r0, #1
	b _0802DC24
_0802DBE4:
	adds r4, r5, #0
	adds r4, #0xc4
	ldrh r0, [r4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x18
	ldrb r1, [r6]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1b
	bl sub_08027DC4
	adds r3, r0, #0
	ldrb r0, [r3]
	cmp r0, #0
	bne _0802DC0E
	ldrb r1, [r4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	movs r0, #0
	b _0802DC24
_0802DC0E:
	ldrb r1, [r6]
	movs r0, #0x7c
	ands r0, r1
	adds r0, r0, r7
	ldr r2, [r0]
	adds r0, r5, #0
	adds r1, r3, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0802DC24:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start enemy_move
enemy_move: @ 0x0802DC2C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r0, #0xc6
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0802DC4E
	movs r5, #0
	adds r0, r7, #0
	bl sub_0802DD04
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802DC50
_0802DC4E:
	movs r5, #0x13
_0802DC50:
	cmp r5, #0x13
	bhi _0802DCF6
	ldr r0, _0802DCDC @ =0x00004C01
	mov sb, r0
	movs r1, #0xc5
	adds r1, r1, r7
	mov r8, r1
_0802DC5E:
	ldr r0, _0802DCE0 @ =gUnknown_08D2DF14
	lsls r1, r5, #2
	adds r6, r1, r0
	ldr r0, [r6]
	cmp r0, #0
	beq _0802DCEC
	adds r4, r7, #0
	adds r4, #0xc4
	ldrh r0, [r4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	bl sub_08027DC4
	adds r1, r0, #0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802DCEC
	ldr r2, [r6]
	adds r0, r7, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802DCEC
	cmp r5, #0x13
	bne _0802DCA0
	ldrh r1, [r4]
	ldr r2, _0802DCE4 @ =0x00007C01
	adds r0, r2, #0
	ands r0, r1
	cmp r0, sb
	beq _0802DCD6
_0802DCA0:
	ldrb r0, [r4]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4]
	movs r0, #0x1f
	ands r5, r0
	lsls r2, r5, #2
	mov r3, r8
	ldrb r0, [r3]
	movs r3, #0x7d
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	mov r1, r8
	strb r0, [r1]
	ldr r0, [r4]
	ldr r1, _0802DCE8 @ =0xFFE07FFF
	ands r0, r1
	str r0, [r4]
	adds r1, r7, #0
	adds r1, #0x9a
	movs r0, #0
	strh r0, [r1]
	ldr r1, [r7, #0x2c]
	stm r1!, {r0}
	str r0, [r1]
_0802DCD6:
	movs r0, #1
	b _0802DCF8
	.align 2, 0
_0802DCDC: .4byte 0x00004C01
_0802DCE0: .4byte gUnknown_08D2DF14
_0802DCE4: .4byte 0x00007C01
_0802DCE8: .4byte 0xFFE07FFF
_0802DCEC:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x13
	bls _0802DC5E
_0802DCF6:
	movs r0, #0
_0802DCF8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0802DD04
sub_0802DD04: @ 0x0802DD04
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x28
	bl sub_08002998
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _0802DD8A
	cmp r1, #5
	bls _0802DD1C
	movs r1, #5
_0802DD1C:
	movs r2, #0
	movs r0, #0
	subs r1, #1
	cmp r1, #4
	bhi _0802DD86
	lsls r0, r1, #2
	ldr r1, _0802DD30 @ =_0802DD34
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802DD30: .4byte _0802DD34
_0802DD34: @ jump table
	.4byte _0802DD48 @ case 0
	.4byte _0802DD52 @ case 1
	.4byte _0802DD5C @ case 2
	.4byte _0802DD66 @ case 3
	.4byte _0802DD70 @ case 4
_0802DD48:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #1
	b _0802DD78
_0802DD52:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #3
	b _0802DD78
_0802DD5C:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #7
	b _0802DD78
_0802DD66:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0xf
	b _0802DD78
_0802DD70:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0x1f
_0802DD78:
	adds r2, r1, #0
	ands r2, r0
	ldr r0, _0802DD90 @ =gGame
	ldr r3, _0802DD94 @ =0x00009D10
	adds r0, r0, r3
	ldr r0, [r0]
	ands r0, r1
_0802DD86:
	cmp r0, r2
	bne _0802DD98
_0802DD8A:
	movs r0, #0
	b _0802DD9A
	.align 2, 0
_0802DD90: .4byte gGame
_0802DD94: .4byte 0x00009D10
_0802DD98:
	movs r0, #1
_0802DD9A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0802DDA0
sub_0802DDA0: @ 0x0802DDA0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #0xc4
	b _0802DDB2
_0802DDAA:
	ldr r0, _0802DE50 @ =gObjectContinue
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802DE4A
_0802DDB2:
	ldrh r0, [r4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x18
	adds r1, r6, #0
	adds r1, #0xc5
	ldrb r1, [r1]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1b
	bl sub_08027DC4
	adds r5, r0, #0
	ldr r1, [r4]
	lsls r1, r1, #0xb
	lsrs r1, r1, #0x1a
	bl sub_08027DE4
	adds r3, r0, #0
	ldr r1, _0802DE50 @ =gObjectContinue
	movs r0, #0
	strh r0, [r1]
	ldrb r0, [r5]
	cmp r0, #0
	beq _0802DE2C
	ldr r2, _0802DE54 @ =gUnknown_08D2DF64
	ldrh r0, [r3]
	lsls r1, r0, #0x17
	lsrs r0, r1, #0x18
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _0802DE2C
	lsrs r0, r1, #0x18
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r3, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802DE2C
	ldr r2, [r4]
	lsls r1, r2, #0xb
	lsrs r1, r1, #0x1a
	adds r1, #1
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #0xf
	ldr r0, _0802DE58 @ =0xFFE07FFF
	ands r0, r2
	orrs r0, r1
	str r0, [r4]
	adds r1, r6, #0
	adds r1, #0x9a
	movs r0, #0
	strh r0, [r1]
	ldr r1, [r6, #0x2c]
	stm r1!, {r0}
	str r0, [r1]
_0802DE2C:
	ldr r0, [r4]
	lsls r0, r0, #0xb
	lsrs r0, r0, #0x1a
	ldrb r5, [r5]
	cmp r0, r5
	blt _0802DDAA
	ldrb r0, [r4]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	subs r2, #1
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r4]
_0802DE4A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802DE50: .4byte gObjectContinue
_0802DE54: .4byte gUnknown_08D2DF64
_0802DE58: .4byte 0xFFE07FFF

	thumb_func_start sub_0802DE5C
sub_0802DE5C: @ 0x0802DE5C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, #0xc6
	ldrb r2, [r0]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	movs r4, #0
	adds r5, r0, #0
_0802DE70:
	ldr r0, _0802DE9C @ =gUnknown_08D2DF14
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0802DEA0
	adds r0, r6, #0
	adds r0, #0xc4
	ldrh r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x18
	adds r1, r4, #0
	bl sub_08027DC4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802DEA0
	ldrb r0, [r5]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r5]
	b _0802DEAA
	.align 2, 0
_0802DE9C: .4byte gUnknown_08D2DF14
_0802DEA0:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x12
	bls _0802DE70
_0802DEAA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0802DEB0
sub_0802DEB0: @ 0x0802DEB0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, #0xc8
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0802DF00
	movs r0, #0
	bl get_char_stats
	ldrb r2, [r0, #0x12]
	ldr r3, _0802DF04 @ =gMonsterData
	adds r0, r5, #0
	adds r0, #0x88
	ldrh r1, [r0]
	ldr r0, _0802DF08 @ =0xFFFFFF00
	adds r1, r1, r0
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	ldrb r0, [r0, #0x12]
	movs r3, #2
	ldrsh r1, [r4, r3]
	subs r2, r2, r0
	cmp r1, r2
	bgt _0802DF00
	movs r0, #4
	ldrsh r4, [r4, r0]
	lsls r4, r4, #0x14
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0
	bl sub_08036734
	cmp r0, r4
	blo _0802DF0C
_0802DF00:
	movs r0, #0
	b _0802DF0E
	.align 2, 0
_0802DF04: .4byte gMonsterData
_0802DF08: .4byte 0xFFFFFF00
_0802DF0C:
	movs r0, #1
_0802DF0E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0802DF14
sub_0802DF14: @ 0x0802DF14
	push {lr}
	adds r2, r1, #0
	ldr r0, _0802DF38 @ =gGame
	ldr r1, _0802DF3C @ =0x00008371
	adds r3, r0, r1
	adds r1, #1
	adds r0, r0, r1
	ldrb r1, [r3]
	ldrb r0, [r0]
	cmp r1, r0
	beq _0802DF40
	movs r3, #2
	ldrsh r0, [r2, r3]
	cmp r1, r0
	bgt _0802DF40
	movs r0, #1
	b _0802DF42
	.align 2, 0
_0802DF38: .4byte gGame
_0802DF3C: .4byte 0x00008371
_0802DF40:
	movs r0, #0
_0802DF42:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802DF48
sub_0802DF48: @ 0x0802DF48
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldrh r1, [r4, #2]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xe
	bhi _0802DF6E
	adds r0, r1, #0
	bl sub_0802B8C4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0802DF72
_0802DF6E:
	movs r0, #0
	b _0802DF8C
_0802DF72:
	movs r0, #4
	ldrsh r4, [r4, r0]
	lsls r4, r4, #0x14
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r2, #0
	bl sub_08036734
	cmp r0, r4
	bhs _0802DF6E
	movs r0, #1
_0802DF8C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802DF94
sub_0802DF94: @ 0x0802DF94
	push {lr}
	adds r2, r0, #0
	ldr r0, _0802DFA8 @ =gGame
	ldr r3, _0802DFAC @ =0x0000829B
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #3
	beq _0802DFB0
	movs r0, #0
	b _0802DFBA
	.align 2, 0
_0802DFA8: .4byte gGame
_0802DFAC: .4byte 0x0000829B
_0802DFB0:
	adds r0, r2, #0
	bl sub_0802DFC0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0802DFBA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802DFC0
sub_0802DFC0: @ 0x0802DFC0
	push {r4, lr}
	movs r2, #2
	ldrsh r4, [r1, r2]
	lsls r4, r4, #0x14
	lsrs r4, r4, #0x10
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0
	bl sub_08036734
	cmp r0, r4
	blo _0802DFDC
	movs r0, #0
	b _0802DFDE
_0802DFDC:
	movs r0, #1
_0802DFDE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0802DFE4
sub_0802DFE4: @ 0x0802DFE4
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r2, _0802E030 @ =gGame
	ldr r4, _0802E034 @ =0x00008495
	adds r0, r2, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0802E040
	movs r5, #2
	ldrsh r4, [r1, r5]
	lsls r4, r4, #0x14
	lsrs r4, r4, #0x10
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	ldr r5, _0802E038 @ =0x000083C0
	adds r1, r2, r5
	movs r5, #0
	ldrsh r1, [r1, r5]
	subs r0, r0, r1
	ldrh r1, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	ldr r3, _0802E03C @ =0x000083C2
	adds r2, r2, r3
	movs r5, #0
	ldrsh r2, [r2, r5]
	subs r1, r1, r2
	bl sub_0803329C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r4
	bhs _0802E040
	movs r0, #1
	b _0802E042
	.align 2, 0
_0802E030: .4byte gGame
_0802E034: .4byte 0x00008495
_0802E038: .4byte 0x000083C0
_0802E03C: .4byte 0x000083C2
_0802E040:
	movs r0, #0
_0802E042:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0802E048
sub_0802E048: @ 0x0802E048
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802DFC0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802E068
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r1, [r0]
	movs r0, #0
	bl sub_08036864
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0802E06A
_0802E068:
	movs r0, #0
_0802E06A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0802E070
sub_0802E070: @ 0x0802E070
	adds r0, #0xc6
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0

	thumb_func_start sub_0802E07C
sub_0802E07C: @ 0x0802E07C
	movs r1, #0xcb
	adds r1, r1, r0
	mov ip, r1
	ldrb r2, [r1]
	lsls r2, r2, #0x1d
	adds r0, #0xc4
	lsrs r2, r2, #0x1f
	lsls r2, r2, #1
	ldrb r3, [r0]
	movs r1, #3
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r0]
	mov r1, ip
	ldrb r0, [r1]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0

	thumb_func_start sub_0802E0A4
sub_0802E0A4: @ 0x0802E0A4
	movs r1, #0xcb
	adds r1, r1, r0
	mov ip, r1
	ldrb r1, [r1]
	adds r0, #0xc4
	movs r2, #2
	ands r2, r1
	ldrb r3, [r0]
	movs r1, #3
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r0]
	mov r2, ip
	ldrb r0, [r2]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_0802E0C8
sub_0802E0C8: @ 0x0802E0C8
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, _0802E0F0 @ =gGame
	ldr r4, _0802E0F4 @ =0x0000829B
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802E0F8
	adds r4, #0x1c
	adds r0, r2, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0802E0F8
	adds r0, r3, #0
	bl sub_0802DFC0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0802E0FA
	.align 2, 0
_0802E0F0: .4byte gGame
_0802E0F4: .4byte 0x0000829B
_0802E0F8:
	movs r0, #0
_0802E0FA:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0802E100
sub_0802E100: @ 0x0802E100
	movs r0, #1
	bx lr

	thumb_func_start sub_0802E104
sub_0802E104: @ 0x0802E104
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #2
	ldrsh r0, [r1, r2]
	cmp r0, #1
	bne _0802E11A
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033414
_0802E11A:
	ldr r0, _0802E138 @ =gGame
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802E130
	adds r0, r4, #0
	adds r0, #0xbf
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
_0802E130:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0802E138: .4byte gGame

	thumb_func_start sub_0802E13C
sub_0802E13C: @ 0x0802E13C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #0x2c]
	movs r1, #2
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0802E16A
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #4
	ldrsh r1, [r5, r2]
	bl sub_08002FD4
	ldr r2, [r4, #0x2c]
	ldrh r1, [r5, #2]
	adds r1, r1, r0
	strh r1, [r2]
	ldr r1, [r4, #0x2c]
	movs r0, #1
	strh r0, [r1, #2]
_0802E16A:
	adds r1, r4, #0
	adds r1, #0x9a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r1, [r1]
	ldr r0, [r4, #0x2c]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	ble _0802E184
	movs r0, #1
	b _0802E1F6
_0802E184:
	movs r1, #6
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0802E1DE
	adds r0, r4, #0
	adds r0, #0xc9
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802E1B0
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0xbc
	ldrb r2, [r1]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #1
	bl sub_080332AC
	b _0802E1DE
_0802E1B0:
	adds r0, r4, #0
	adds r0, #0xcb
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0802E1D4
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0xbc
	ldrb r2, [r1]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #3
	bl sub_080332AC
	b _0802E1DE
_0802E1D4:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033414
_0802E1DE:
	ldr r0, _0802E1FC @ =gGame
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802E1F4
	adds r0, r4, #0
	adds r0, #0xbf
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
_0802E1F4:
	movs r0, #0
_0802E1F6:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802E1FC: .4byte gGame

	thumb_func_start sub_0802E200
sub_0802E200: @ 0x0802E200
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r1, #0
	adds r0, #0xc8
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802E248
	adds r0, r3, #0
	adds r0, #0xbc
	ldrb r1, [r0]
	lsrs r1, r1, #7
	adds r0, #0xf
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	orrs r1, r0
	cmp r1, #0
	bne _0802E248
	ldr r1, [r3, #0x2c]
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _0802E236
	subs r0, r2, #1
	strh r0, [r1]
_0802E236:
	movs r1, #0
	ldr r0, [r3, #0x2c]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _0802E244
	movs r1, #1
_0802E244:
	adds r0, r1, #0
	b _0802E256
_0802E248:
	ldrh r1, [r2, #2]
	ldrh r2, [r2, #4]
	adds r0, r3, #0
	bl sub_0802F3B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0802E256:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0802E25C
sub_0802E25C: @ 0x0802E25C
	push {r4, lr}
	adds r2, r0, #0
	ldr r3, [r2, #0x2c]
	movs r4, #4
	ldrsh r0, [r3, r4]
	cmp r0, #0
	bne _0802E274
	ldrh r0, [r1, #2]
	strh r0, [r3, #2]
	ldr r1, [r2, #0x2c]
	movs r0, #1
	strh r0, [r1, #4]
_0802E274:
	adds r1, r2, #0
	adds r1, #0x9a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r1, [r1]
	ldr r0, [r2, #0x2c]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	bgt _0802E2B4
	ldr r4, _0802E2AC @ =gGame
	ldr r0, _0802E2B0 @ =0x00008382
	adds r4, r4, r0
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
	adds r0, r2, #0
	bl sub_0802F650
	ldrb r1, [r4]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	movs r0, #0
	b _0802E2B6
	.align 2, 0
_0802E2AC: .4byte gGame
_0802E2B0: .4byte 0x00008382
_0802E2B4:
	movs r0, #1
_0802E2B6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0802E2BC
sub_0802E2BC: @ 0x0802E2BC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r2, r1, #0
	ldr r1, [r5, #0x2c]
	movs r3, #4
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bne _0802E2D6
	ldrh r0, [r2, #4]
	strh r0, [r1, #2]
	ldr r1, [r5, #0x2c]
	movs r0, #1
	strh r0, [r1, #4]
_0802E2D6:
	movs r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #0
	ble _0802E2F4
	adds r1, r5, #0
	adds r1, #0x9a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r1, [r1]
	ldr r0, [r5, #0x2c]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	bgt _0802E30C
_0802E2F4:
	movs r0, #2
	ldrsh r4, [r2, r0]
	lsls r4, r4, #0x14
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0
	bl sub_08036734
	cmp r0, r4
	blo _0802E310
_0802E30C:
	movs r0, #1
	b _0802E330
_0802E310:
	ldr r4, _0802E338 @ =gGame
	ldr r1, _0802E33C @ =0x00008382
	adds r4, r4, r1
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_0802F650
	ldrb r1, [r4]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	movs r0, #0
_0802E330:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802E338: .4byte gGame
_0802E33C: .4byte 0x00008382

	thumb_func_start sub_0802E340
sub_0802E340: @ 0x0802E340
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r1, #0
	movs r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #0
	ble _0802E366
	adds r1, r3, #0
	adds r1, #0x9a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r1, [r1]
	movs r4, #4
	ldrsh r0, [r2, r4]
	cmp r1, r0
	ble _0802E366
	movs r0, #1
	b _0802E386
_0802E366:
	ldr r4, _0802E38C @ =gGame
	ldr r0, _0802E390 @ =0x00008382
	adds r4, r4, r0
	ldrb r0, [r4]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
	adds r0, r3, #0
	bl sub_0802F774
	ldrb r1, [r4]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	movs r0, #0
_0802E386:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0802E38C: .4byte gGame
_0802E390: .4byte 0x00008382

	thumb_func_start sub_0802E394
sub_0802E394: @ 0x0802E394
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r2, r1, #0
	movs r1, #2
	ldrsh r0, [r2, r1]
	lsls r0, r0, #0x14
	lsrs r4, r0, #0x10
	movs r3, #6
	ldrsh r0, [r2, r3]
	cmp r0, #0
	ble _0802E3BE
	adds r1, r5, #0
	adds r1, #0x9a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r1, [r1]
	movs r3, #6
	ldrsh r0, [r2, r3]
	cmp r1, r0
	bgt _0802E3CE
_0802E3BE:
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0
	bl sub_08036734
	cmp r0, r4
	blo _0802E3D2
_0802E3CE:
	movs r0, #1
	b _0802E3F2
_0802E3D2:
	ldr r4, _0802E3F8 @ =gGame
	ldr r0, _0802E3FC @ =0x00008382
	adds r4, r4, r0
	ldrb r0, [r4]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_0802F774
	ldrb r1, [r4]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	movs r0, #0
_0802E3F2:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802E3F8: .4byte gGame
_0802E3FC: .4byte 0x00008382

	thumb_func_start sub_0802E400
sub_0802E400: @ 0x0802E400
	push {lr}
	ldrh r1, [r1, #2]
	bl sub_0802F8A0
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802E410
sub_0802E410: @ 0x0802E410
	push {lr}
	ldrh r1, [r1, #2]
	bl sub_0802FA9C
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802E420
sub_0802E420: @ 0x0802E420
	push {lr}
	sub sp, #4
	movs r1, #0
	str r1, [sp]
	movs r2, #0
	movs r3, #0
	bl sub_0802FC98
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802E43C
sub_0802E43C: @ 0x0802E43C
	push {lr}
	sub sp, #4
	movs r3, #2
	ldrsh r2, [r1, r3]
	movs r1, #0
	str r1, [sp]
	movs r1, #1
	movs r3, #0
	bl sub_0802FC98
	movs r0, #0
	add sp, #4
	pop {r1}
	bx r1

	thumb_func_start sub_0802E458
sub_0802E458: @ 0x0802E458
	push {lr}
	sub sp, #4
	movs r1, #0
	str r1, [sp]
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0802FC98
	movs r0, #0
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802E474
sub_0802E474: @ 0x0802E474
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	ldrh r0, [r4, #6]
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0802FC98
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802E4B0
	ldrh r1, [r4, #2]
	lsls r1, r1, #0x18
	adds r2, r5, #0
	adds r2, #0x9a
	adds r0, r5, #0
	adds r0, #0x96
	ldrh r0, [r0]
	ldrh r3, [r2]
	adds r0, r0, r3
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, r1
	blo _0802E4B8
_0802E4AC:
	movs r0, #1
	b _0802E4BA
_0802E4B0:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #1
	beq _0802E4AC
_0802E4B8:
	movs r0, #0
_0802E4BA:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802E4C4
sub_0802E4C4: @ 0x0802E4C4
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r1, #2]
	cmp r1, #7
	bls _0802E4FA
	cmp r1, #8
	beq _0802E4D8
	cmp r1, #9
	beq _0802E4E2
	b _0802E4FA
_0802E4D8:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0
	b _0802E4EA
_0802E4E2:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r1, [r0]
	movs r0, #0
_0802E4EA:
	bl sub_080366C0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_0802E4FA:
	adds r0, r4, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0802E514
	adds r0, r1, #0
	bl sub_080270C8
	adds r1, r4, #0
	adds r1, #0x8f
	strb r0, [r1]
	b _0802E51E
_0802E514:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08036A1C
_0802E51E:
	ldr r1, _0802E52C @ =gObjectContinue
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0802E52C: .4byte gObjectContinue

	thumb_func_start sub_0802E530
sub_0802E530: @ 0x0802E530
	push {r4, lr}
	adds r4, r0, #0
	ldrh r2, [r1, #2]
	movs r0, #2
	ldrsh r1, [r1, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0802E570
	ldr r0, _0802E568 @ =gGame
	ldr r1, _0802E56C @ =0x000067AC
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_0801B498
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r2, [r1]
	subs r2, #5
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r1, [r0, #0x14]
	adds r0, r4, #0
	adds r0, #0x96
	strh r1, [r0]
	b _0802E576
	.align 2, 0
_0802E568: .4byte gGame
_0802E56C: .4byte 0x000067AC
_0802E570:
	adds r0, r4, #0
	adds r0, #0x96
	strh r2, [r0]
_0802E576:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802E580
sub_0802E580: @ 0x0802E580
	ldrh r1, [r1, #2]
	adds r0, #0x9a
	strh r1, [r0]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_0802E58C
sub_0802E58C: @ 0x0802E58C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #0x2c]
	movs r1, #2
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0802E5BA
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #4
	ldrsh r1, [r5, r2]
	bl sub_08002FD4
	ldr r2, [r4, #0x2c]
	ldrh r1, [r5, #2]
	adds r1, r1, r0
	strh r1, [r2]
	ldr r1, [r4, #0x2c]
	movs r0, #1
	strh r0, [r1, #2]
_0802E5BA:
	adds r1, r4, #0
	adds r1, #0x9a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r1, [r1]
	ldr r0, [r4, #0x2c]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	bgt _0802E5EA
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x8b
	ldrb r1, [r1]
	movs r2, #7
	ands r2, r1
	movs r1, #1
	bl sub_080332AC
	movs r0, #0
	b _0802E5EC
_0802E5EA:
	movs r0, #1
_0802E5EC:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802E5F4
sub_0802E5F4: @ 0x0802E5F4
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r5, #0x85
	ldrb r3, [r5]
	ldrh r1, [r4, #2]
	adds r0, #0x8b
	ldrb r0, [r0]
	movs r2, #7
	ands r2, r0
	adds r0, r3, #0
	bl sub_080332AC
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #1
	bne _0802E61C
	ldrb r0, [r5]
	bl sub_08033484
_0802E61C:
	ldr r1, _0802E62C @ =gObjectContinue
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802E62C: .4byte gObjectContinue

	thumb_func_start sub_0802E630
sub_0802E630: @ 0x0802E630
	push {lr}
	sub sp, #4
	movs r1, #0
	str r1, [sp]
	movs r2, #0
	movs r3, #1
	bl sub_0802FC98
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802E64C
sub_0802E64C: @ 0x0802E64C
	push {lr}
	sub sp, #4
	movs r3, #2
	ldrsh r2, [r1, r3]
	movs r1, #0
	str r1, [sp]
	movs r1, #1
	movs r3, #1
	bl sub_0802FC98
	movs r0, #0
	add sp, #4
	pop {r1}
	bx r1

	thumb_func_start sub_0802E668
sub_0802E668: @ 0x0802E668
	push {lr}
	sub sp, #4
	movs r1, #0
	str r1, [sp]
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0802FC98
	movs r0, #0
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802E684
sub_0802E684: @ 0x0802E684
	push {lr}
	adds r0, #0x85
	ldrb r0, [r0]
	ldrh r1, [r1, #2]
	bl sub_080334D0
	ldr r1, _0802E69C @ =gObjectContinue
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0802E69C: .4byte gObjectContinue

	thumb_func_start sub_0802E6A0
sub_0802E6A0: @ 0x0802E6A0
	push {lr}
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033548
	ldr r1, _0802E6B8 @ =gObjectContinue
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0802E6B8: .4byte gObjectContinue

	thumb_func_start sub_0802E6BC
sub_0802E6BC: @ 0x0802E6BC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x2c]
	movs r2, #2
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _0802E6E8
	movs r4, #1
	strh r4, [r1, #2]
	bl sub_080030A4
	ands r0, r4
	movs r2, #6
	cmp r0, #0
	beq _0802E6DC
	movs r2, #2
_0802E6DC:
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0
	bl sub_080332AC
_0802E6E8:
	adds r1, r5, #0
	adds r1, #0x9a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r0, [r1]
	movs r1, #0x1e
	bl __umodsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802E71E
	adds r0, r5, #0
	adds r0, #0x8b
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	movs r2, #2
	cmp r0, #2
	bne _0802E712
	movs r2, #6
_0802E712:
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0
	bl sub_080332AC
_0802E71E:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802E728
sub_0802E728: @ 0x0802E728
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r5, #0x2c]
	movs r1, #2
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0802E770
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #4
	ldrsh r1, [r4, r2]
	bl sub_08002FD4
	ldr r2, [r5, #0x2c]
	ldrh r1, [r4, #2]
	adds r1, r1, r0
	strh r1, [r2]
	ldr r0, [r5, #0x2c]
	movs r4, #1
	strh r4, [r0, #2]
	bl sub_080030A4
	ands r0, r4
	movs r2, #6
	cmp r0, #0
	beq _0802E764
	movs r2, #2
_0802E764:
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0
	bl sub_080332AC
_0802E770:
	adds r1, r5, #0
	adds r1, #0x9a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r1, [r1]
	ldr r0, [r5, #0x2c]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	ble _0802E78A
	movs r0, #1
	b _0802E7B8
_0802E78A:
	adds r0, r1, #0
	movs r1, #0x1e
	bl __umodsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802E7B6
	adds r0, r5, #0
	adds r0, #0x8b
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	movs r2, #2
	cmp r0, #2
	bne _0802E7AA
	movs r2, #6
_0802E7AA:
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0
	bl sub_080332AC
_0802E7B6:
	movs r0, #0
_0802E7B8:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802E7C0
sub_0802E7C0: @ 0x0802E7C0
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldr r1, [r3, #0x2c]
	movs r2, #2
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _0802E7DC
	ldrh r0, [r4, #4]
	strh r0, [r1]
	ldr r1, [r3, #0x2c]
	movs r0, #1
	strh r0, [r1, #2]
	b _0802E80A
_0802E7DC:
	adds r2, r3, #0
	adds r2, #0x9a
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldrh r1, [r2]
	ldr r0, [r3, #0x2c]
	movs r5, #0
	ldrsh r0, [r0, r5]
	cmp r1, r0
	ble _0802E828
	movs r0, #0
	strh r0, [r2]
	adds r0, r3, #0
	adds r0, #0x48
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0802E818
	ldr r1, [r3, #0x2c]
	ldrh r0, [r4, #4]
	strh r0, [r1]
_0802E80A:
	adds r0, r3, #0
	adds r0, #0x85
	ldrb r0, [r0]
	ldrh r1, [r4, #2]
	bl sub_080334D0
	b _0802E828
_0802E818:
	ldr r1, [r3, #0x2c]
	ldrh r0, [r4, #6]
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033548
_0802E828:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0802E830
sub_0802E830: @ 0x0802E830
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r2, #0
	ldr r1, _0802E880 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	str r0, [sp]
	mov r5, sp
	strh r2, [r5, #2]
	adds r0, r4, #0
	mov r1, sp
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802E874
	adds r2, r4, #0
	adds r2, #0x96
	ldrh r1, [r2]
	mov r0, sp
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r1, r0
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldrh r1, [r2]
	movs r2, #2
	ldrsh r0, [r5, r2]
	muls r0, r1, r0
	ldrh r3, [r4, #2]
	adds r0, r0, r3
	strh r0, [r4, #2]
_0802E874:
	movs r0, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802E880: .4byte 0xFFFF0000

	thumb_func_start sub_0802E884
sub_0802E884: @ 0x0802E884
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	adds r2, r1, #0
	ldr r1, [r5, #0x2c]
	movs r3, #2
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bne _0802E8E0
	ldrh r0, [r2, #4]
	strh r0, [r1]
	ldr r1, [r5, #0x2c]
	movs r0, #1
	strh r0, [r1, #2]
	ldr r1, [r5, #0x2c]
	ldrh r0, [r5]
	strh r0, [r1, #4]
	movs r1, #2
	ldrsh r0, [r2, r1]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x10
	adds r0, r5, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	cmp r0, #2
	beq _0802E8C8
	cmp r0, #6
	beq _0802E8D0
	b _0802E8D8
_0802E8C8:
	ldr r1, [r5, #0x2c]
	ldrh r0, [r1, #4]
	subs r0, r0, r2
	b _0802E8D6
_0802E8D0:
	ldr r1, [r5, #0x2c]
	ldrh r0, [r1, #4]
	adds r0, r2, r0
_0802E8D6:
	strh r0, [r1, #4]
_0802E8D8:
	ldrh r0, [r5]
	strh r0, [r5, #8]
	ldrh r0, [r5, #2]
	strh r0, [r5, #0xa]
_0802E8E0:
	movs r2, #8
	ldrsh r0, [r5, r2]
	ldr r3, [r5, #0x2c]
	movs r2, #4
	ldrsh r1, [r3, r2]
	adds r7, r5, #0
	adds r7, #0x9a
	ldrh r2, [r7]
	ldrh r3, [r3]
	bl sub_08002E34
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _0802E9AC @ =0xFFFF0000
	mov r8, r3
	ldr r1, [sp, #8]
	ands r1, r3
	orrs r1, r0
	str r1, [sp, #8]
	ldrh r2, [r7]
	ldr r0, [r5, #0x2c]
	ldrh r3, [r0]
	movs r0, #0
	movs r1, #0x80
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	lsls r0, r0, #4
	ldrh r1, [r5, #0xa]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _0802E9B0 @ =0x0000FFFF
	ldr r2, [sp, #8]
	ands r2, r3
	orrs r2, r1
	str r2, [sp, #8]
	ldr r4, _0802E9B4 @ =gGame
	ldrb r1, [r4, #8]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #8]
	add r6, sp, #8
	movs r1, #0
	ldrsh r0, [r6, r1]
	mov sb, r0
	movs r1, #0
	ldrsh r0, [r5, r1]
	mov r1, sb
	subs r1, r1, r0
	lsls r0, r1, #0xc
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r1, [sp, #4]
	mov r0, r8
	ands r1, r0
	mov r0, ip
	orrs r1, r0
	asrs r2, r2, #0x10
	mov r8, r2
	movs r2, #2
	ldrsh r0, [r5, r2]
	mov r2, r8
	subs r0, r2, r0
	lsls r2, r0, #0xc
	lsrs r2, r2, #0x10
	lsls r2, r2, #0x10
	ands r1, r3
	orrs r1, r2
	str r1, [sp, #4]
	add r1, sp, #4
	adds r0, r5, #0
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802E98C
	ldrh r0, [r6]
	strh r0, [r5]
	ldrh r0, [r6, #2]
	strh r0, [r5, #2]
_0802E98C:
	ldrb r0, [r4, #8]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #8]
	ldrh r0, [r7]
	adds r0, #1
	strh r0, [r7]
	ldrh r1, [r7]
	ldr r0, [r5, #0x2c]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r1, r0
	bgt _0802E9B8
	movs r0, #0
	b _0802E9BA
	.align 2, 0
_0802E9AC: .4byte 0xFFFF0000
_0802E9B0: .4byte 0x0000FFFF
_0802E9B4: .4byte gGame
_0802E9B8:
	movs r0, #1
_0802E9BA:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0802E9C8
sub_0802E9C8: @ 0x0802E9C8
	push {lr}
	ldrh r0, [r1, #2]
	adds r0, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_08036450
	ldr r1, _0802E9E4 @ =gObjectContinue
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0802E9E4: .4byte gObjectContinue

	thumb_func_start sub_0802E9E8
sub_0802E9E8: @ 0x0802E9E8
	push {lr}
	adds r0, #0x85
	ldrb r0, [r0]
	ldrh r1, [r1, #2]
	bl sub_08036480
	ldr r1, _0802EA00 @ =gObjectContinue
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0802EA00: .4byte gObjectContinue

	thumb_func_start sub_0802EA04
sub_0802EA04: @ 0x0802EA04
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	mov r8, r1
	movs r2, #6
	ldrsh r0, [r1, r2]
	movs r7, #1
	cmp r0, #1
	ble _0802EA1C
	ldrh r7, [r1, #6]
_0802EA1C:
	mov r1, r8
	movs r2, #8
	ldrsh r0, [r1, r2]
	movs r6, #1
	cmp r0, #1
	ble _0802EA2A
	ldrh r6, [r1, #8]
_0802EA2A:
	ldr r1, [r5, #0x2c]
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _0802EA6A
	movs r0, #1
	strh r0, [r1]
	ldr r1, [r5, #0x2c]
	adds r4, r5, #0
	adds r4, #0x85
	ldrb r0, [r4]
	strh r0, [r1, #4]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_080364B8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0802EAC2
	ldrb r0, [r4]
	mov r2, r8
	ldrh r1, [r2, #2]
	bl sub_08033374
	ldrb r0, [r4]
	bl sub_08033484
_0802EA6A:
	adds r0, r5, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0802EB2C
	ldr r1, [r5, #0x2c]
	movs r2, #2
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _0802EAC6
	ldrh r0, [r1, #4]
	bl get_obj_direct
	adds r6, r0, #0
	adds r2, r6, #0
	adds r2, #0xbf
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0xbc
	ldrb r2, [r1]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #1
	bl sub_080332AC
	adds r0, r6, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0xbc
	ldrb r2, [r1]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #1
	bl sub_080332AC
_0802EAC2:
	movs r0, #1
	b _0802EB50
_0802EAC6:
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_080364B8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0802EAC2
	adds r0, r4, #0
	bl get_obj_direct
	adds r6, r0, #0
	movs r0, #0x85
	adds r0, r0, r5
	mov sb, r0
	ldrb r0, [r0]
	mov r2, r8
	ldrh r1, [r2, #4]
	bl sub_08033374
	adds r7, r6, #0
	adds r7, #0x85
	ldrb r0, [r7]
	mov r2, r8
	ldrh r1, [r2, #4]
	bl sub_08033374
	mov r1, sb
	ldrb r0, [r1]
	bl sub_08033484
	ldrb r0, [r7]
	bl sub_08033484
	adds r2, r6, #0
	adds r2, #0xbf
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r5, #0x2c]
	movs r0, #1
	strh r0, [r1, #2]
	ldr r0, [r5, #0x2c]
	strh r4, [r0, #4]
	b _0802EB4E
_0802EB2C:
	ldr r0, [r5, #0x2c]
	movs r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _0802EB4E
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_080364B8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0802EAC2
_0802EB4E:
	movs r0, #0
_0802EB50:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0802EB5C
sub_0802EB5C: @ 0x0802EB5C
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	movs r0, #2
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0802EB94
	ldr r2, _0802EB8C @ =gMonsterData
	adds r0, r3, #0
	adds r0, #0x88
	ldrh r1, [r0]
	ldr r0, _0802EB90 @ =0xFFFFFF00
	adds r1, r1, r0
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrh r0, [r0, #8]
	bl play_sound
	b _0802EB9A
	.align 2, 0
_0802EB8C: .4byte gMonsterData
_0802EB90: .4byte 0xFFFFFF00
_0802EB94:
	ldrh r0, [r2, #2]
	bl play_sound
_0802EB9A:
	ldr r1, _0802EBA8 @ =gObjectContinue
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0802EBA8: .4byte gObjectContinue

	thumb_func_start sub_0802EBAC
sub_0802EBAC: @ 0x0802EBAC
	movs r3, #2
	ldrsh r2, [r1, r3]
	adds r0, #0xbc
	movs r1, #1
	ands r2, r1
	lsls r2, r2, #5
	ldrb r3, [r0]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r0]
	ldr r1, _0802EBD0 @ =gObjectContinue
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	bx lr
	.align 2, 0
_0802EBD0: .4byte gObjectContinue

	thumb_func_start sub_0802EBD4
sub_0802EBD4: @ 0x0802EBD4
	push {lr}
	bl sub_0802FDF8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802EBE4
sub_0802EBE4: @ 0x0802EBE4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #0x2c]
	movs r1, #2
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0802EC12
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #4
	ldrsh r1, [r5, r2]
	bl sub_08002FD4
	ldr r2, [r4, #0x2c]
	ldrh r1, [r5, #2]
	adds r1, r1, r0
	strh r1, [r2]
	ldr r1, [r4, #0x2c]
	movs r0, #1
	strh r0, [r1, #2]
_0802EC12:
	adds r1, r4, #0
	adds r1, #0x9a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r1, [r1]
	ldr r0, [r4, #0x2c]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	bgt _0802EC34
	adds r0, r4, #0
	bl sub_0802FDF8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0802EC36
_0802EC34:
	movs r0, #1
_0802EC36:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0802EC3C
sub_0802EC3C: @ 0x0802EC3C
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r1, #0
	movs r1, #2
	ldrsh r0, [r5, r1]
	cmp r0, #1
	beq _0802EC78
	cmp r0, #1
	bgt _0802EC54
	cmp r0, #0
	beq _0802EC5A
	b _0802ECBA
_0802EC54:
	cmp r0, #2
	beq _0802EC9E
	b _0802ECBA
_0802EC5A:
	movs r1, #4
	ldrsh r0, [r5, r1]
	adds r4, r2, #0
	adds r4, #0x85
	cmp r0, #1
	beq _0802EC6E
	ldrb r0, [r4]
	movs r1, #3
	bl sub_08033620
_0802EC6E:
	ldrb r0, [r4]
	movs r1, #5
	bl sub_08033620
	b _0802ECBA
_0802EC78:
	adds r4, r2, #0
	adds r4, #0x85
	ldrb r0, [r4]
	movs r1, #0
	bl sub_08033620
	ldrb r0, [r4]
	movs r1, #4
	bl sub_08033620
	movs r1, #6
	ldrsh r0, [r5, r1]
	cmp r0, #1
	beq _0802ECBA
	ldrb r0, [r4]
	movs r1, #2
	bl sub_08033620
	b _0802ECBA
_0802EC9E:
	movs r1, #4
	ldrsh r0, [r5, r1]
	adds r4, r2, #0
	adds r4, #0x85
	cmp r0, #1
	beq _0802ECB2
	ldrb r0, [r4]
	movs r1, #3
	bl sub_08033620
_0802ECB2:
	ldrb r0, [r4]
	movs r1, #0xe
	bl sub_08033620
_0802ECBA:
	ldr r1, _0802ECC8 @ =gObjectContinue
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802ECC8: .4byte gObjectContinue

	thumb_func_start sub_0802ECCC
sub_0802ECCC: @ 0x0802ECCC
	movs r3, #2
	ldrsh r2, [r1, r3]
	adds r0, #0xbc
	movs r1, #1
	ands r2, r1
	lsls r2, r2, #6
	ldrb r3, [r0]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r0]
	ldr r1, _0802ECF0 @ =gObjectContinue
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	bx lr
	.align 2, 0
_0802ECF0: .4byte gObjectContinue

	thumb_func_start sub_0802ECF4
sub_0802ECF4: @ 0x0802ECF4
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r5, #0x85
	ldrb r0, [r5]
	ldrh r1, [r4, #2]
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08033374
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #1
	bne _0802ED18
	ldrb r0, [r5]
	bl sub_08033484
_0802ED18:
	ldr r1, _0802ED28 @ =gObjectContinue
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802ED28: .4byte gObjectContinue

	thumb_func_start sub_0802ED2C
sub_0802ED2C: @ 0x0802ED2C
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0xc4
	ldrb r2, [r1, #2]
	lsls r2, r2, #2
	ldrh r3, [r4]
	ldr r1, _0802ED54 @ =0xFFFFFC03
	ands r1, r3
	orrs r1, r2
	strh r1, [r4]
	bl sub_0802DE5C
	ldr r1, _0802ED58 @ =gObjectContinue
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0802ED54: .4byte 0xFFFFFC03
_0802ED58: .4byte gObjectContinue

	thumb_func_start sub_0802ED5C
sub_0802ED5C: @ 0x0802ED5C
	push {r4, lr}
	adds r2, r0, #0
	movs r3, #0
	movs r4, #2
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bne _0802ED6C
	movs r3, #1
_0802ED6C:
	adds r2, #0xc7
	lsls r3, r3, #1
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	ldr r1, _0802ED8C @ =gObjectContinue
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0802ED8C: .4byte gObjectContinue

	thumb_func_start sub_0802ED90
sub_0802ED90: @ 0x0802ED90
	push {lr}
	adds r2, r0, #0
	movs r3, #2
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bne _0802EDA4
	adds r1, r2, #0
	adds r1, #0x75
	movs r0, #0xff
	b _0802EDAA
_0802EDA4:
	adds r1, r2, #0
	adds r1, #0x75
	movs r0, #3
_0802EDAA:
	strb r0, [r1]
	ldr r1, _0802EDB8 @ =gObjectContinue
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0802EDB8: .4byte gObjectContinue

	thumb_func_start sub_0802EDBC
sub_0802EDBC: @ 0x0802EDBC
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, [r5, #0x2c]
	movs r2, #2
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _0802EDD0
	b _0802EFFE
_0802EDD0:
	movs r2, #1
	movs r0, #1
	strh r0, [r1, #2]
	ldr r1, [r5, #0x2c]
	ldrh r0, [r1, #4]
	eors r0, r2
	strh r0, [r1, #4]
	ldr r2, [r5, #0x2c]
	movs r3, #6
	ldrsh r1, [r2, r3]
	cmp r1, #0
	beq _0802EE00
	cmp r1, #0
	bgt _0802EDF6
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0802EE14
	b _0802EF16
_0802EDF6:
	cmp r1, #3
	beq _0802EE00
	cmp r1, #6
	beq _0802EE00
	b _0802EF16
_0802EE00:
	ldrh r2, [r7, #2]
	movs r1, #4
	mov r0, sp
	strh r1, [r0]
	mov r1, sp
	adds r1, #2
	movs r0, #2
	strh r0, [r1]
	adds r4, r1, #0
	b _0802EF30
_0802EE14:
	ldrh r0, [r7, #2]
	strh r0, [r2]
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x64
	bl sub_08002FD4
	cmp r0, #0x4f
	bgt _0802EE4E
	add r4, sp, #4
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08036C24
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080367D8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r4, sp
	adds r4, #2
	mov r1, sp
	adds r2, r4, #0
	bl sub_080270A0
	b _0802EE6E
_0802EE4E:
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #8
	bl sub_08002FD4
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r4, sp
	adds r4, #2
	mov r1, sp
	adds r2, r4, #0
	bl sub_080270A0
_0802EE6E:
	ldrh r1, [r5]
	strh r1, [r5, #8]
	ldrh r0, [r5, #2]
	strh r0, [r5, #0xa]
	strh r1, [r5, #0xc]
	strh r0, [r5, #0xe]
	bl sub_08002FE8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r0, sp
	movs r3, #0
	ldrsh r1, [r0, r3]
	cmp r1, #0
	bge _0802EE8E
	rsbs r1, r1, #0
_0802EE8E:
	lsls r1, r1, #3
	adds r0, r2, #0
	bl sub_08002FD4
	adds r1, r0, #0
	mov r0, sp
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _0802EEA4
	rsbs r0, r0, #0
_0802EEA4:
	lsls r0, r0, #4
	adds r0, r0, r1
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x10
	ldr r1, _0802EEF4 @ =0xFFFF0000
	ands r6, r1
	orrs r6, r0
	bl sub_08002FE8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r4, r3]
	cmp r1, #0
	bge _0802EEC4
	rsbs r1, r1, #0
_0802EEC4:
	lsls r1, r1, #3
	bl sub_08002FD4
	adds r1, r0, #0
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _0802EED6
	rsbs r0, r0, #0
_0802EED6:
	lsls r0, r0, #4
	adds r0, r0, r1
	lsls r0, r0, #0x14
	ldr r1, _0802EEF8 @ =0x0000FFFF
	ands r6, r1
	orrs r6, r0
	mov r0, sp
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	ble _0802EEFC
	ldrh r0, [r5, #0xc]
	adds r0, r0, r6
	b _0802EF00
	.align 2, 0
_0802EEF4: .4byte 0xFFFF0000
_0802EEF8: .4byte 0x0000FFFF
_0802EEFC:
	ldrh r0, [r5, #0xc]
	subs r0, r0, r6
_0802EF00:
	strh r0, [r5, #0xc]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0802EF12
	asrs r0, r6, #0x10
	ldrh r2, [r5, #0xe]
	adds r0, r0, r2
	b _0802EFCA
_0802EF12:
	asrs r1, r6, #0x10
	b _0802EFC6
_0802EF16:
	movs r3, #2
	ldrsh r0, [r7, r3]
	movs r1, #3
	bl Divide
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r0, sp
	movs r1, #1
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r4, r0, #0
_0802EF30:
	ldr r0, [r5, #0x2c]
	strh r2, [r0]
	ldrh r1, [r5]
	strh r1, [r5, #8]
	ldrh r0, [r5, #2]
	strh r0, [r5, #0xa]
	strh r1, [r5, #0xc]
	strh r0, [r5, #0xe]
	bl sub_08002FE8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sp
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r1, r1, #3
	bl sub_08002FD4
	mov r1, sp
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r1, r1, #3
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0802EF9C @ =0xFFFF0000
	ands r6, r0
	orrs r6, r1
	bl sub_08002FE8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r1, r1, #3
	bl sub_08002FD4
	movs r3, #0
	ldrsh r1, [r4, r3]
	lsls r1, r1, #3
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, _0802EFA0 @ =0x0000FFFF
	ands r6, r0
	orrs r6, r1
	ldr r0, [r5, #0x2c]
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0802EFA4
	lsls r0, r6, #4
	ldrh r2, [r5, #0xc]
	adds r0, r0, r2
	b _0802EFAA
	.align 2, 0
_0802EF9C: .4byte 0xFFFF0000
_0802EFA0: .4byte 0x0000FFFF
_0802EFA4:
	lsls r1, r6, #4
	ldrh r0, [r5, #0xc]
	subs r0, r0, r1
_0802EFAA:
	strh r0, [r5, #0xc]
	bl sub_080030A4
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0802EFC2
	asrs r0, r6, #0x10
	lsls r0, r0, #4
	ldrh r3, [r5, #0xe]
	adds r0, r0, r3
	b _0802EFCA
_0802EFC2:
	asrs r1, r6, #0x10
	lsls r1, r1, #4
_0802EFC6:
	ldrh r0, [r5, #0xe]
	subs r0, r0, r1
_0802EFCA:
	strh r0, [r5, #0xe]
	adds r0, r5, #0
	adds r0, #8
	adds r1, r5, #0
	adds r1, #0xc
	bl sub_080367D8
	adds r1, r5, #0
	adds r1, #0x8f
	strb r0, [r1]
	ldrb r0, [r1]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r5, #0
	adds r3, #0xbc
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3]
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_0802EFFE:
	ldr r0, [r5, #0x2c]
	movs r2, #6
	ldrsh r1, [r0, r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0802F018
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_0802FF90
	b _0802F022
_0802F018:
	ldrh r1, [r7, #4]
	adds r0, r5, #0
	movs r2, #0
	bl sub_0802FF90
_0802F022:
	movs r0, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0802F02C
sub_0802F02C: @ 0x0802F02C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	mov r8, r1
	ldr r1, [r5, #0x2c]
	movs r2, #2
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _0802F044
	b _0802F1C8
_0802F044:
	movs r2, #1
	movs r0, #1
	strh r0, [r1, #2]
	ldr r1, [r5, #0x2c]
	ldrh r0, [r1, #4]
	eors r0, r2
	strh r0, [r1, #4]
	ldr r0, [r5, #0x2c]
	movs r1, #6
	ldrsh r0, [r0, r1]
	cmp r0, #3
	beq _0802F06A
	cmp r0, #3
	bgt _0802F066
	cmp r0, #0
	beq _0802F06A
	b _0802F074
_0802F066:
	cmp r0, #6
	bne _0802F074
_0802F06A:
	mov r2, r8
	ldrh r1, [r2, #2]
	movs r6, #4
	movs r7, #2
	b _0802F088
_0802F074:
	mov r1, r8
	movs r2, #2
	ldrsh r0, [r1, r2]
	movs r1, #3
	bl Divide
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r6, #1
	movs r7, #1
_0802F088:
	ldr r0, [r5, #0x2c]
	strh r1, [r0]
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x64
	bl sub_08002FD4
	cmp r0, #0x4f
	bgt _0802F118
	ldrh r0, [r5]
	strh r0, [r5, #8]
	ldrh r0, [r5, #2]
	strh r0, [r5, #0xa]
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0
	bl sub_080366C0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r4, sp
	mov r2, sp
	adds r2, #2
	mov r1, sp
	bl sub_080270A0
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	mov r1, sp
	strh r0, [r1]
	movs r2, #2
	ldrsh r0, [r4, r2]
	lsls r0, r0, #4
	strh r0, [r4, #2]
	bl sub_08002FE8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r6, #3
	bl sub_08002FD4
	mov r1, sp
	ldrh r1, [r1]
	adds r1, r1, r0
	mov r0, sp
	strh r1, [r0]
	bl sub_08002FE8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r7, #3
	bl sub_08002FD4
	ldrh r1, [r4, #2]
	adds r1, r1, r0
	strh r1, [r4, #2]
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #4
	ldrh r2, [r5, #8]
	adds r0, r0, r2
	strh r0, [r5, #0xc]
	lsls r1, r1, #4
	ldrh r0, [r5, #0xa]
	adds r1, r1, r0
	strh r1, [r5, #0xe]
	b _0802F196
_0802F118:
	ldrh r1, [r5]
	strh r1, [r5, #8]
	ldrh r0, [r5, #2]
	strh r0, [r5, #0xa]
	strh r1, [r5, #0xc]
	strh r0, [r5, #0xe]
	bl sub_08002FE8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r6, #3
	adds r1, r4, #0
	bl sub_08002FD4
	adds r4, r4, r0
	mov r0, sp
	strh r4, [r0]
	bl sub_08002FE8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r7, #3
	adds r1, r4, #0
	bl sub_08002FD4
	adds r4, r4, r0
	mov r0, sp
	strh r4, [r0, #2]
	ldr r0, [r5, #0x2c]
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0802F166
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #4
	ldrh r2, [r5, #0xc]
	adds r0, r0, r2
	b _0802F170
_0802F166:
	mov r0, sp
	ldrh r1, [r0]
	lsls r1, r1, #4
	ldrh r0, [r5, #0xc]
	subs r0, r0, r1
_0802F170:
	strh r0, [r5, #0xc]
	bl sub_080030A4
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0802F18A
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #4
	ldrh r1, [r5, #0xe]
	adds r0, r0, r1
	b _0802F194
_0802F18A:
	mov r0, sp
	ldrh r1, [r0, #2]
	lsls r1, r1, #4
	ldrh r0, [r5, #0xe]
	subs r0, r0, r1
_0802F194:
	strh r0, [r5, #0xe]
_0802F196:
	adds r0, r5, #0
	adds r0, #8
	adds r1, r5, #0
	adds r1, #0xc
	bl sub_080367D8
	adds r1, r5, #0
	adds r1, #0x8f
	strb r0, [r1]
	ldrb r0, [r1]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r5, #0
	adds r3, #0xbc
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3]
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_0802F1C8:
	mov r2, r8
	movs r0, #4
	ldrsh r4, [r2, r0]
	lsls r4, r4, #0x14
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0
	bl sub_08036734
	cmp r0, r4
	blo _0802F1E6
	movs r0, #1
	b _0802F1F2
_0802F1E6:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_0802FF90
	movs r0, #0
_0802F1F2:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802F200
sub_0802F200: @ 0x0802F200
	push {r4, lr}
	adds r2, r0, #0
	movs r3, #0
	movs r4, #2
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bne _0802F210
	movs r3, #1
_0802F210:
	adds r2, #0xbd
	lsls r3, r3, #2
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	ldr r1, _0802F230 @ =gObjectContinue
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0802F230: .4byte gObjectContinue

	thumb_func_start sub_0802F234
sub_0802F234: @ 0x0802F234
	push {lr}
	adds r3, r0, #0
	movs r2, #2
	ldrsh r0, [r1, r2]
	cmp r0, #1
	beq _0802F26A
	cmp r0, #1
	bgt _0802F24A
	cmp r0, #0
	beq _0802F254
	b _0802F2A4
_0802F24A:
	cmp r0, #2
	beq _0802F280
	cmp r0, #3
	beq _0802F28C
	b _0802F2A4
_0802F254:
	adds r2, r3, #0
	adds r2, #0xbc
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0xf
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	b _0802F2A2
_0802F26A:
	adds r2, r3, #0
	adds r2, #0xbc
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r2, #0xf
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	b _0802F2A2
_0802F280:
	adds r2, r3, #0
	adds r2, #0xbc
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	b _0802F296
_0802F28C:
	adds r2, r3, #0
	adds r2, #0xbc
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
_0802F296:
	strb r0, [r2]
	adds r2, #0xf
	ldrb r1, [r2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
_0802F2A2:
	strb r0, [r2]
_0802F2A4:
	ldr r1, _0802F2B0 @ =gObjectContinue
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0802F2B0: .4byte gObjectContinue

	thumb_func_start sub_0802F2B4
sub_0802F2B4: @ 0x0802F2B4
	adds r0, #0x96
	ldrh r1, [r1, #2]
	ldrh r2, [r0]
	adds r1, r1, r2
	strh r1, [r0]
	ldr r1, _0802F2C8 @ =gObjectContinue
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	bx lr
	.align 2, 0
_0802F2C8: .4byte gObjectContinue

	thumb_func_start sub_0802F2CC
sub_0802F2CC: @ 0x0802F2CC
	adds r3, r0, #0
	movs r0, #0xc7
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	movs r2, #1
	orrs r0, r2
	mov r2, ip
	strb r0, [r2]
	ldrh r1, [r1, #2]
	adds r0, r3, #0
	adds r0, #0xba
	strb r1, [r0]
	movs r0, #0xff
	ands r0, r1
	adds r1, r3, #0
	adds r1, #0xb9
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	ldr r1, _0802F300 @ =gObjectContinue
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	bx lr
	.align 2, 0
_0802F300: .4byte gObjectContinue

	thumb_func_start sub_0802F304
sub_0802F304: @ 0x0802F304
	push {lr}
	adds r2, r0, #0
	movs r3, #2
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bne _0802F320
	adds r2, #0xbe
	ldrh r1, [r2]
	ldr r0, _0802F31C @ =0xFFFFF87F
	ands r0, r1
	b _0802F330
	.align 2, 0
_0802F31C: .4byte 0xFFFFF87F
_0802F320:
	adds r2, #0xbe
	ldrh r1, [r2]
	ldr r0, _0802F340 @ =0xFFFFF87F
	ands r0, r1
	movs r3, #0x90
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
_0802F330:
	strh r0, [r2]
	ldr r1, _0802F344 @ =gObjectContinue
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0802F340: .4byte 0xFFFFF87F
_0802F344: .4byte gObjectContinue

	thumb_func_start sub_0802F348
sub_0802F348: @ 0x0802F348
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0802FC98
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802F37E
	adds r1, r4, #0
	adds r1, #0x9a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r1, [r1]
	movs r2, #2
	ldrsh r0, [r5, r2]
	cmp r1, r0
	blt _0802F386
_0802F37A:
	movs r0, #1
	b _0802F388
_0802F37E:
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #1
	beq _0802F37A
_0802F386:
	movs r0, #0
_0802F388:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0802F390
sub_0802F390: @ 0x0802F390
	ldrh r2, [r1, #2]
	adds r2, #8
	lsls r2, r2, #0x10
	ldrh r1, [r1, #4]
	adds r1, #8
	lsls r1, r1, #0x10
	lsrs r3, r2, #0x10
	orrs r3, r1
	lsls r1, r3, #4
	strh r1, [r0]
	asrs r1, r3, #0x10
	lsls r1, r1, #4
	strh r1, [r0, #2]
	ldr r1, _0802F3B4 @ =gObjectContinue
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	bx lr
	.align 2, 0
_0802F3B4: .4byte gObjectContinue

	thumb_func_start sub_0802F3B8
sub_0802F3B8: @ 0x0802F3B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	ldr r0, [r5, #0x2c]
	movs r1, #2
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0802F49A
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r4, #0
	bl sub_08002FD4
	ldr r3, [r5, #0x2c]
	adds r1, r5, #0
	adds r1, #0xc3
	ldrb r2, [r1]
	lsrs r2, r2, #3
	adds r2, #1
	lsls r1, r2, #4
	subs r1, r1, r2
	adds r1, r1, r0
	strh r1, [r3]
	ldr r1, [r5, #0x2c]
	movs r0, #1
	strh r0, [r1, #2]
	bl sub_080031E0
	movs r1, #7
	ands r1, r0
	adds r0, r5, #0
	adds r0, #0xc9
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802F420
	adds r0, r1, #1
	adds r1, r5, #0
	adds r1, #0x8f
	strb r0, [r1]
	b _0802F42A
_0802F420:
	movs r0, #1
	orrs r1, r0
	adds r0, r5, #0
	adds r0, #0x8f
	strb r1, [r0]
_0802F42A:
	adds r7, r5, #0
	adds r7, #0x8f
	ldrb r0, [r7]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r5, #0
	adds r2, #0xbc
	movs r3, #7
	mov sl, r3
	mov r1, sl
	ands r0, r1
	lsls r0, r0, #2
	ldrb r3, [r2]
	movs r1, #0x1d
	rsbs r1, r1, #0
	mov sb, r1
	ands r1, r3
	orrs r1, r0
	strb r1, [r2]
	adds r6, r2, #0
	mov r2, r8
	cmp r2, #0
	beq _0802F49A
	add r4, sp, #4
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08036C24
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08036830
	mov r3, r8
	lsls r1, r3, #4
	cmp r0, r1
	bls _0802F49A
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080367D8
	strb r0, [r7]
	ldrb r0, [r7]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sl
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r6]
	mov r1, sb
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
_0802F49A:
	adds r0, r5, #0
	adds r0, #0x8f
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	bne _0802F4A8
	b _0802F614
_0802F4A8:
	ldrb r0, [r7]
	add r4, sp, #8
	mov r2, sp
	adds r2, #0xa
	adds r1, r4, #0
	bl sub_080270A0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802F5C0
	adds r2, r5, #0
	adds r2, #0x98
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r4, r3]
	muls r0, r1, r0
	ldrh r1, [r5]
	adds r0, r0, r1
	movs r3, #0
	strh r0, [r5]
	ldrh r1, [r2]
	movs r2, #2
	ldrsh r0, [r4, r2]
	muls r0, r1, r0
	ldrh r1, [r5, #2]
	adds r0, r0, r1
	strh r0, [r5, #2]
	mov r0, sp
	strh r3, [r0]
	adds r0, r5, #0
	bl sub_08035AEC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802F502
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
	adds r6, r5, #0
	adds r6, #0xbc
	b _0802F54C
_0802F502:
	adds r6, r5, #0
	adds r6, #0xbc
	mov r2, r8
	cmp r2, #0
	beq _0802F54C
	add r4, sp, #4
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08036C24
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08036830
	mov r3, r8
	lsls r1, r3, #4
	cmp r0, r1
	bls _0802F54C
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080367D8
	strb r0, [r7]
	ldrb r0, [r7]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r6]
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
_0802F54C:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802F592
	bl sub_080031E0
	movs r1, #7
	ands r1, r0
	adds r0, r5, #0
	adds r0, #0xc9
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802F56E
	adds r0, r1, #1
	strb r0, [r7]
	b _0802F574
_0802F56E:
	movs r0, #1
	orrs r1, r0
	strb r1, [r7]
_0802F574:
	ldrb r0, [r7]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r6]
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
	b _0802F5B6
_0802F592:
	ldrb r0, [r7]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrb r2, [r6]
	lsls r0, r2, #0x1b
	lsrs r0, r0, #0x1d
	cmp r0, r1
	beq _0802F5B6
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #2
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6]
_0802F5B6:
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	ldrb r2, [r6]
	b _0802F5D8
_0802F5C0:
	adds r0, r5, #0
	adds r0, #0xc9
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802F5E4
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0xbc
	ldrb r2, [r1]
_0802F5D8:
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #1
	bl sub_080332AC
	b _0802F61E
_0802F5E4:
	adds r0, r5, #0
	adds r0, #0xcb
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0802F608
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0xbc
	ldrb r2, [r1]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #3
	bl sub_080332AC
	b _0802F61E
_0802F608:
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033414
	b _0802F61E
_0802F614:
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033414
_0802F61E:
	ldr r1, [r5, #0x2c]
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _0802F62E
	subs r0, r2, #1
	strh r0, [r1]
_0802F62E:
	movs r1, #0
	ldr r0, [r5, #0x2c]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _0802F63C
	movs r1, #1
_0802F63C:
	adds r0, r1, #0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802F650
sub_0802F650: @ 0x0802F650
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x2c]
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0802F6A4
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0
	bl sub_080366C0
	adds r1, r4, #0
	adds r1, #0x8f
	strb r0, [r1]
	ldrb r0, [r1]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r4, #0
	adds r3, #0xbc
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3]
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldr r2, [r4, #0x2c]
	adds r0, r4, #0
	adds r0, #0xc3
	ldrb r1, [r0]
	lsrs r1, r1, #3
	adds r1, #1
	lsls r0, r1, #4
	subs r0, r0, r1
	strh r0, [r2]
_0802F6A4:
	adds r0, r4, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	mov r5, sp
	mov r2, sp
	adds r2, #2
	mov r1, sp
	bl sub_080270A0
	adds r0, r4, #0
	mov r1, sp
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802F6EE
	adds r2, r4, #0
	adds r2, #0x96
	ldrh r1, [r2]
	mov r0, sp
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r1, r0
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldrh r1, [r2]
	movs r2, #2
	ldrsh r0, [r5, r2]
	muls r0, r1, r0
	ldrh r3, [r4, #2]
	adds r0, r0, r3
	strh r0, [r4, #2]
	adds r0, r4, #0
	bl sub_08035AEC
	b _0802F6FA
_0802F6EE:
	adds r0, r4, #0
	adds r0, #0xc9
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802F718
_0802F6FA:
	adds r0, r4, #0
	adds r0, #0xbc
	ldrb r2, [r0]
	lsls r0, r2, #0x19
	cmp r0, #0
	blt _0802F74C
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #1
	bl sub_080332AC
	b _0802F74C
_0802F718:
	adds r0, r4, #0
	adds r0, #0xcb
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0802F742
	adds r0, r4, #0
	adds r0, #0xbc
	ldrb r2, [r0]
	lsls r0, r2, #0x19
	cmp r0, #0
	blt _0802F74C
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #3
	bl sub_080332AC
	b _0802F74C
_0802F742:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033414
_0802F74C:
	ldr r1, [r4, #0x2c]
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _0802F75C
	subs r0, r2, #1
	strh r0, [r1]
_0802F75C:
	movs r1, #0
	ldr r0, [r4, #0x2c]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _0802F76A
	movs r1, #1
_0802F76A:
	adds r0, r1, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0802F774
sub_0802F774: @ 0x0802F774
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x2c]
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0802F7D0
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0
	bl sub_080366C0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080270E8
	adds r1, r4, #0
	adds r1, #0x8f
	strb r0, [r1]
	ldrb r0, [r1]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r4, #0
	adds r3, #0xbc
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3]
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldr r2, [r4, #0x2c]
	adds r0, r4, #0
	adds r0, #0xc3
	ldrb r1, [r0]
	lsrs r1, r1, #3
	adds r1, #1
	lsls r0, r1, #4
	subs r0, r0, r1
	strh r0, [r2]
_0802F7D0:
	adds r0, r4, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	mov r5, sp
	mov r2, sp
	adds r2, #2
	mov r1, sp
	bl sub_080270A0
	adds r0, r4, #0
	mov r1, sp
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802F81A
	adds r2, r4, #0
	adds r2, #0x98
	ldrh r1, [r2]
	mov r0, sp
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r1, r0
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldrh r1, [r2]
	movs r2, #2
	ldrsh r0, [r5, r2]
	muls r0, r1, r0
	ldrh r3, [r4, #2]
	adds r0, r0, r3
	strh r0, [r4, #2]
	adds r0, r4, #0
	bl sub_08035AEC
	b _0802F826
_0802F81A:
	adds r0, r4, #0
	adds r0, #0xc9
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802F844
_0802F826:
	adds r0, r4, #0
	adds r0, #0xbc
	ldrb r2, [r0]
	lsls r0, r2, #0x19
	cmp r0, #0
	blt _0802F878
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #1
	bl sub_080332AC
	b _0802F878
_0802F844:
	adds r0, r4, #0
	adds r0, #0xcb
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0802F86E
	adds r0, r4, #0
	adds r0, #0xbc
	ldrb r2, [r0]
	lsls r0, r2, #0x19
	cmp r0, #0
	blt _0802F878
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #3
	bl sub_080332AC
	b _0802F878
_0802F86E:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033414
_0802F878:
	ldr r1, [r4, #0x2c]
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _0802F888
	subs r0, r2, #1
	strh r0, [r1]
_0802F888:
	movs r1, #0
	ldr r0, [r4, #0x2c]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _0802F896
	movs r1, #1
_0802F896:
	adds r0, r1, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0802F8A0
sub_0802F8A0: @ 0x0802F8A0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	mov r0, sp
	strh r1, [r0]
	ldr r2, [r5, #0x2c]
	movs r1, #2
	ldrsh r0, [r2, r1]
	add r6, sp, #4
	cmp r0, #0
	bne _0802F900
	movs r1, #1
	movs r0, #1
	strh r0, [r2, #2]
	adds r0, r5, #0
	adds r0, #0x8f
	strb r1, [r0]
	movs r7, #0
	adds r4, r0, #0
	b _0802F8DA
_0802F8CE:
	ldrb r0, [r4]
	adds r0, #2
	strb r0, [r4]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0802F8DA:
	cmp r7, #3
	bhi _0802F900
	ldrb r0, [r4]
	bl sub_08027164
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r2, r6, #2
	adds r1, r6, #0
	bl sub_080270A0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802F8CE
_0802F900:
	ldr r0, [r5, #0x2c]
	movs r2, #4
	ldrsh r0, [r0, r2]
	cmp r0, #0
	ble _0802F96A
	adds r0, r5, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	adds r2, r6, #2
	adds r1, r6, #0
	bl sub_080270A0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802F962
	adds r2, r5, #0
	adds r2, #0x96
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r6, r3]
	muls r0, r1, r0
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	ldrh r1, [r2]
	movs r2, #2
	ldrsh r0, [r6, r2]
	muls r0, r1, r0
	ldrh r3, [r5, #2]
	adds r0, r0, r3
	strh r0, [r5, #2]
	adds r0, r5, #0
	bl sub_08035AEC
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0xbc
	ldrb r2, [r1]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #1
	bl sub_080332AC
_0802F962:
	ldr r1, [r5, #0x2c]
	ldrh r0, [r1, #4]
	subs r0, #1
	b _0802FA88
_0802F96A:
	adds r7, r5, #0
	adds r7, #0x8f
	ldrb r0, [r7]
	bl sub_08027164
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r4, r6, #0
	adds r0, r4, #2
	mov sb, r0
	mov r0, r8
	adds r1, r4, #0
	mov r2, sb
	bl sub_080270A0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802FA20
	adds r0, r5, #0
	adds r0, #0xbf
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _0802FA8A
	ldrb r0, [r7]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r6, r5, #0
	adds r6, #0xbc
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r6]
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
	ldrb r0, [r7]
	adds r1, r4, #0
	mov r2, sb
	bl sub_080270A0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802FA16
	adds r2, r5, #0
	adds r2, #0x96
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r4, r3]
	muls r0, r1, r0
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	ldrh r1, [r2]
	movs r2, #2
	ldrsh r0, [r4, r2]
	muls r0, r1, r0
	ldrh r3, [r5, #2]
	adds r0, r0, r3
	strh r0, [r5, #2]
	adds r0, r5, #0
	bl sub_08035AEC
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	ldrb r2, [r6]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #1
	bl sub_080332AC
	b _0802FA8A
_0802FA16:
	ldrb r0, [r7]
	bl sub_08027138
	strb r0, [r7]
	b _0802FA8A
_0802FA20:
	ldrb r0, [r7]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, r5, #0
	adds r4, #0xbc
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r4]
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	adds r2, r5, #0
	adds r2, #0x96
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r6, r3]
	muls r0, r1, r0
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	ldrh r1, [r2]
	movs r2, #2
	ldrsh r0, [r6, r2]
	muls r0, r1, r0
	ldrh r3, [r5, #2]
	adds r0, r0, r3
	strh r0, [r5, #2]
	adds r0, r5, #0
	bl sub_08035AEC
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	ldrb r2, [r4]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #1
	bl sub_080332AC
	mov r0, r8
	strb r0, [r7]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802FA8A
	ldr r1, [r5, #0x2c]
	movs r0, #7
_0802FA88:
	strh r0, [r1, #4]
_0802FA8A:
	movs r0, #0
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802FA9C
sub_0802FA9C: @ 0x0802FA9C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	mov r0, sp
	strh r1, [r0]
	ldr r2, [r5, #0x2c]
	movs r1, #2
	ldrsh r0, [r2, r1]
	add r6, sp, #4
	cmp r0, #0
	bne _0802FAFC
	movs r1, #1
	movs r0, #1
	strh r0, [r2, #2]
	adds r0, r5, #0
	adds r0, #0x8f
	strb r1, [r0]
	movs r7, #0
	adds r4, r0, #0
	b _0802FAD6
_0802FACA:
	ldrb r0, [r4]
	adds r0, #2
	strb r0, [r4]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0802FAD6:
	cmp r7, #3
	bhi _0802FAFC
	ldrb r0, [r4]
	bl sub_08027138
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r2, r6, #2
	adds r1, r6, #0
	bl sub_080270A0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802FACA
_0802FAFC:
	ldr r0, [r5, #0x2c]
	movs r2, #4
	ldrsh r0, [r0, r2]
	cmp r0, #0
	ble _0802FB66
	adds r0, r5, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	adds r2, r6, #2
	adds r1, r6, #0
	bl sub_080270A0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802FB5E
	adds r2, r5, #0
	adds r2, #0x96
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r6, r3]
	muls r0, r1, r0
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	ldrh r1, [r2]
	movs r2, #2
	ldrsh r0, [r6, r2]
	muls r0, r1, r0
	ldrh r3, [r5, #2]
	adds r0, r0, r3
	strh r0, [r5, #2]
	adds r0, r5, #0
	bl sub_08035AEC
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0xbc
	ldrb r2, [r1]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #1
	bl sub_080332AC
_0802FB5E:
	ldr r1, [r5, #0x2c]
	ldrh r0, [r1, #4]
	subs r0, #1
	b _0802FC84
_0802FB66:
	adds r7, r5, #0
	adds r7, #0x8f
	ldrb r0, [r7]
	bl sub_08027138
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r4, r6, #0
	adds r0, r4, #2
	mov sb, r0
	mov r0, r8
	adds r1, r4, #0
	mov r2, sb
	bl sub_080270A0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802FC1C
	adds r0, r5, #0
	adds r0, #0xbf
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _0802FC86
	ldrb r0, [r7]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r6, r5, #0
	adds r6, #0xbc
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r6]
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
	ldrb r0, [r7]
	adds r1, r4, #0
	mov r2, sb
	bl sub_080270A0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802FC12
	adds r2, r5, #0
	adds r2, #0x96
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r4, r3]
	muls r0, r1, r0
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	ldrh r1, [r2]
	movs r2, #2
	ldrsh r0, [r4, r2]
	muls r0, r1, r0
	ldrh r3, [r5, #2]
	adds r0, r0, r3
	strh r0, [r5, #2]
	adds r0, r5, #0
	bl sub_08035AEC
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	ldrb r2, [r6]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #1
	bl sub_080332AC
	b _0802FC86
_0802FC12:
	ldrb r0, [r7]
	bl sub_08027164
	strb r0, [r7]
	b _0802FC86
_0802FC1C:
	ldrb r0, [r7]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, r5, #0
	adds r4, #0xbc
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r4]
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	adds r2, r5, #0
	adds r2, #0x96
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r6, r3]
	muls r0, r1, r0
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	ldrh r1, [r2]
	movs r2, #2
	ldrsh r0, [r6, r2]
	muls r0, r1, r0
	ldrh r3, [r5, #2]
	adds r0, r0, r3
	strh r0, [r5, #2]
	adds r0, r5, #0
	bl sub_08035AEC
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	ldrb r2, [r4]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #1
	bl sub_080332AC
	mov r0, r8
	strb r0, [r7]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802FC86
	ldr r1, [r5, #0x2c]
	movs r0, #7
_0802FC84:
	strh r0, [r1, #4]
_0802FC86:
	movs r0, #0
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802FC98
sub_0802FC98: @ 0x0802FC98
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r4, [sp, #0x28]
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	mov r0, sp
	strh r3, [r0]
	mov r1, sp
	adds r1, #2
	strh r4, [r1]
	ldr r2, [r5, #0x2c]
	movs r3, #2
	ldrsh r0, [r2, r3]
	mov r8, r1
	cmp r0, #0
	bne _0802FCE4
	movs r0, #1
	strh r0, [r2, #2]
	adds r0, r5, #0
	adds r0, #0xbc
	ldrb r1, [r0]
	lsls r0, r1, #0x1a
	cmp r0, #0
	blt _0802FCE4
	lsls r0, r1, #0x1b
	lsrs r0, r0, #0x1d
	bl sub_080270C8
	adds r1, r5, #0
	adds r1, #0x8f
	strb r0, [r1]
_0802FCE4:
	adds r0, r5, #0
	adds r0, #0x8f
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	beq _0802FD7C
	ldrb r0, [r6]
	add r4, sp, #8
	mov r2, sp
	adds r2, #0xa
	adds r1, r4, #0
	bl sub_080270A0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802FD62
	mov r1, r8
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802FD1A
	adds r2, r5, #0
	adds r2, #0x96
	b _0802FD1E
_0802FD1A:
	adds r2, r5, #0
	adds r2, #0x98
_0802FD1E:
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r4, r3]
	muls r0, r1, r0
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	ldrh r1, [r2]
	movs r2, #2
	ldrsh r0, [r4, r2]
	muls r0, r1, r0
	ldrh r3, [r5, #2]
	adds r0, r0, r3
	strh r0, [r5, #2]
	adds r0, r5, #0
	bl sub_08035AEC
	adds r0, r5, #0
	adds r0, #0xbc
	ldrb r2, [r0]
	lsls r0, r2, #0x19
	cmp r0, #0
	blt _0802FD5C
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #1
	bl sub_080332AC
_0802FD5C:
	add r1, sp, #4
	movs r0, #0
	b _0802FD80
_0802FD62:
	cmp r7, #3
	beq _0802FD7C
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _0802FD7C
	add r1, sp, #4
	adds r0, r5, #0
	adds r0, #0xbf
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	b _0802FD80
_0802FD7C:
	add r1, sp, #4
	movs r0, #1
_0802FD80:
	strh r0, [r1]
	cmp r7, #1
	beq _0802FD9C
	cmp r7, #1
	bgt _0802FD90
	cmp r7, #0
	beq _0802FD98
	b _0802FDE6
_0802FD90:
	cmp r7, #2
	beq _0802FDB0
	cmp r7, #3
	bne _0802FDE6
_0802FD98:
	ldrh r0, [r1]
	b _0802FDE8
_0802FD9C:
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802FDE6
	ldrb r0, [r6]
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	bl sub_080270F8
	b _0802FDBC
_0802FDB0:
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802FDE6
	ldrb r0, [r6]
	bl sub_080270E8
_0802FDBC:
	strb r0, [r6]
	adds r4, r5, #0
	adds r4, #0xbc
	ldrb r0, [r4]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _0802FDE6
	ldrb r0, [r6]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r4]
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
_0802FDE6:
	movs r0, #0
_0802FDE8:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802FDF8
sub_0802FDF8: @ 0x0802FDF8
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	mov r1, sp
	bl sub_08036C24
	adds r0, r4, #0
	mov r1, sp
	bl sub_08036830
	cmp r0, #0xf
	bhi _0802FE14
	movs r0, #1
	b _0802FF88
_0802FE14:
	ldr r0, [r4, #0x2c]
	movs r1, #6
	ldrsh r0, [r0, r1]
	adds r6, r4, #0
	adds r6, #0x8f
	cmp r0, #0
	bne _0802FEB2
	bl sub_080031E0
	ldr r3, [r4, #0x2c]
	adds r5, r4, #0
	adds r5, #0xc3
	ldrb r1, [r5]
	lsrs r1, r1, #3
	adds r1, #1
	lsls r2, r1, #4
	subs r2, r2, r1
	movs r1, #0x3f
	ands r1, r0
	adds r2, r2, r1
	strh r2, [r3, #4]
	ldr r2, [r4, #0x2c]
	ldrb r1, [r5]
	lsrs r1, r1, #3
	adds r1, #1
	lsls r0, r1, #4
	subs r0, r0, r1
	adds r0, #7
	strh r0, [r2, #4]
	ldr r1, [r4, #0x2c]
	movs r0, #1
	strh r0, [r1, #6]
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x64
	bl sub_08002FD4
	cmp r0, #0x4f
	bgt _0802FE72
	adds r0, r4, #0
	mov r1, sp
	bl sub_080367D8
	strb r0, [r6]
	b _0802FE92
_0802FE72:
	bl sub_080031E0
	movs r1, #7
	ands r1, r0
	adds r0, r4, #0
	adds r0, #0xc9
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802FE8C
	adds r0, r1, #1
	strb r0, [r6]
	b _0802FE92
_0802FE8C:
	movs r0, #1
	orrs r1, r0
	strb r1, [r6]
_0802FE92:
	ldrb r0, [r6]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r4, #0
	adds r3, #0xbc
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r3]
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_0802FEB2:
	ldrb r0, [r6]
	cmp r0, #0
	beq _0802FF60
	add r5, sp, #4
	mov r2, sp
	adds r2, #6
	adds r1, r5, #0
	bl sub_080270A0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800C694
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _0802FEFC
	adds r2, r4, #0
	adds r2, #0x96
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r5, r3]
	muls r0, r1, r0
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldrh r1, [r2]
	movs r2, #2
	ldrsh r0, [r5, r2]
	muls r0, r1, r0
	ldrh r3, [r4, #2]
	adds r0, r0, r3
	strh r0, [r4, #2]
	adds r0, r4, #0
	bl sub_08035AEC
	b _0802FF0C
_0802FEFC:
	ldr r0, [r4, #0x2c]
	strh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xc9
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802FF2A
_0802FF0C:
	adds r0, r4, #0
	adds r0, #0xbc
	ldrb r2, [r0]
	lsls r0, r2, #0x19
	cmp r0, #0
	blt _0802FF6A
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #1
	bl sub_080332AC
	b _0802FF6A
_0802FF2A:
	adds r0, r4, #0
	adds r0, #0xcb
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0802FF54
	adds r0, r4, #0
	adds r0, #0xbc
	ldrb r2, [r0]
	lsls r0, r2, #0x19
	cmp r0, #0
	blt _0802FF6A
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #3
	bl sub_080332AC
	b _0802FF6A
_0802FF54:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033414
	b _0802FF6A
_0802FF60:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033414
_0802FF6A:
	ldr r1, [r4, #0x2c]
	ldrh r2, [r1, #4]
	movs r3, #4
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _0802FF7A
	subs r0, r2, #1
	strh r0, [r1, #4]
_0802FF7A:
	ldr r0, [r4, #0x2c]
	movs r2, #4
	ldrsh r1, [r0, r2]
	cmp r1, #0
	bne _0802FF86
	strh r1, [r0, #6]
_0802FF86:
	movs r0, #0
_0802FF88:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0802FF90
sub_0802FF90: @ 0x0802FF90
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	add r0, sp, #4
	strh r2, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802FFD0
	adds r4, r5, #0
	adds r4, #0x9a
	ldrh r2, [r4]
	ldr r0, [r5, #0x2c]
	ldrh r3, [r0]
	movs r0, #0x40
	movs r1, #0x80
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	rsbs r3, r0, #0
	movs r0, #0x80
	lsls r0, r0, #1
	adds r3, r3, r0
	b _0802FFEE
_0802FFD0:
	adds r4, r5, #0
	adds r4, #0x9a
	ldrh r2, [r4]
	ldr r0, [r5, #0x2c]
	ldrh r3, [r0]
	movs r0, #0
	movs r1, #0x40
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
_0802FFEE:
	adds r6, r4, #0
	cmp r3, #0
	bge _0802FFF8
	movs r3, #0
	b _08030002
_0802FFF8:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r3, r0
	ble _08030002
	adds r3, r0, #0
_08030002:
	adds r0, r5, #0
	adds r0, #8
	adds r1, r5, #0
	adds r1, #0xc
	add r4, sp, #8
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	str r2, [sp]
	adds r2, r4, #0
	bl sub_08002E8C
	mov r8, r4
	cmp r7, #0
	beq _08030050
	add r4, sp, #0xc
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08036C24
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08036830
	lsls r1, r7, #4
	cmp r0, r1
	bls _08030050
	movs r1, #0
	strh r1, [r6]
	ldr r0, [r5, #0x2c]
	strh r1, [r0, #2]
	ldr r1, [r5, #0x2c]
	ldr r0, _0803004C @ =0x0000FFFF
	strh r0, [r1, #6]
	b _0803015C
	.align 2, 0
_0803004C: .4byte 0x0000FFFF
_08030050:
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	subs r0, r0, r1
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x10
	ldr r1, _080300C4 @ =0xFFFF0000
	ldr r2, [sp, #0x10]
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #0x10]
	add r4, sp, #8
	movs r1, #2
	ldrsh r0, [r4, r1]
	movs r3, #2
	ldrsh r1, [r5, r3]
	subs r0, r0, r1
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	ldr r1, _080300C8 @ =0x0000FFFF
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x10]
	cmp r1, #0
	beq _080300BC
	add r1, sp, #0x10
	adds r0, r5, #0
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080300CC
	adds r0, r5, #0
	adds r0, #0xbc
	ldrb r2, [r0]
	lsls r0, r2, #0x19
	cmp r0, #0
	blt _080300B2
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #1
	bl sub_080332AC
_080300B2:
	mov r1, r8
	ldrh r0, [r1]
	strh r0, [r5]
	ldrh r0, [r4, #2]
	strh r0, [r5, #2]
_080300BC:
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	b _08030132
	.align 2, 0
_080300C4: .4byte 0xFFFF0000
_080300C8: .4byte 0x0000FFFF
_080300CC:
	ldr r0, [r5, #0x2c]
	ldrh r0, [r0]
	adds r0, #1
	strh r0, [r6]
	adds r0, r5, #0
	adds r0, #0xc9
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _080300FE
	adds r0, r5, #0
	adds r0, #0xbc
	ldrb r2, [r0]
	lsls r0, r2, #0x19
	cmp r0, #0
	blt _08030132
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #1
	bl sub_080332AC
	b _08030132
_080300FE:
	adds r0, r5, #0
	adds r0, #0xcb
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _08030128
	adds r0, r5, #0
	adds r0, #0xbc
	ldrb r2, [r0]
	lsls r0, r2, #0x19
	cmp r0, #0
	blt _08030132
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #3
	bl sub_080332AC
	b _08030132
_08030128:
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033414
_08030132:
	ldrh r0, [r6]
	ldr r1, [r5, #0x2c]
	movs r2, #0
	ldrsh r1, [r1, r2]
	cmp r0, r1
	bgt _08030142
	movs r0, #0
	b _0803015E
_08030142:
	movs r1, #0
	strh r1, [r6]
	ldr r0, [r5, #0x2c]
	strh r1, [r0, #2]
	ldr r1, [r5, #0x2c]
	ldrh r0, [r1, #6]
	adds r0, #1
	strh r0, [r1, #6]
	ldr r2, [r5, #0x2c]
	ldrh r1, [r2, #6]
	movs r0, #7
	ands r0, r1
	strh r0, [r2, #6]
_0803015C:
	movs r0, #1
_0803015E:
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803016C
sub_0803016C: @ 0x0803016C
	movs r0, #1
	bx lr

	thumb_func_start sub_08030170
sub_08030170: @ 0x08030170
	movs r0, #1
	bx lr

	thumb_func_start sub_08030174
sub_08030174: @ 0x08030174
	movs r0, #1
	bx lr

	thumb_func_start sub_08030178
sub_08030178: @ 0x08030178
	movs r0, #1
	bx lr

	thumb_func_start sub_0803017C
sub_0803017C: @ 0x0803017C
	movs r0, #1
	bx lr

	thumb_func_start sub_08030180
sub_08030180: @ 0x08030180
	push {lr}
	bl sub_08030190
	bl sub_0803042C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08030190
sub_08030190: @ 0x08030190
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _0803023C @ =gGame
	ldr r0, _08030240 @ =0x00008376
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08030244 @ =0x00008378
	adds r0, r4, r1
	movs r1, #0xa
	bl memclear
	ldr r2, _08030248 @ =0x00009D08
	adds r0, r4, r2
	ldr r0, [r0]
	mov r8, r0
	ldr r3, _0803024C @ =0x00009D0C
	adds r4, r4, r3
	ldrh r7, [r4]
	movs r0, #0
	mov sl, r0
_080301C0:
	mov r0, sl
	bl get_obj_direct
	adds r5, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080301D4
	b _08030316
_080301D4:
	adds r4, r5, #0
	adds r4, #0x88
	ldrh r0, [r4]
	bl sub_08036D18
	adds r6, r0, #0
	ldrh r0, [r4]
	bl sub_08036D3C
	mov sb, r0
	adds r1, r5, #0
	adds r1, #0x8c
	ldr r0, _08030250 @ =0x0000FFFF
	strh r0, [r1]
	movs r0, #0
	str r0, [r5, #0x1c]
	adds r2, r5, #0
	adds r2, #0xc8
	ldrb r1, [r2]
	movs r3, #9
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r1, r0
	subs r3, #8
	adds r0, r3, #0
	ands r1, r0
	strb r1, [r2]
	ldrb r0, [r6, #1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r1, r5, #0
	adds r1, #0x8a
	strb r0, [r1]
	ldrb r0, [r6, #1]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08030258
	ldrh r1, [r4]
	cmp r1, #0xff
	bls _08030258
	ldr r0, _08030254 @ =0x0000026B
	cmp r1, r0
	bhi _08030258
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_08030354
	b _08030270
	.align 2, 0
_0803023C: .4byte gGame
_08030240: .4byte 0x00008376
_08030244: .4byte 0x00008378
_08030248: .4byte 0x00009D08
_0803024C: .4byte 0x00009D0C
_08030250: .4byte 0x0000FFFF
_08030254: .4byte 0x0000026B
_08030258:
	ldr r1, _08030344 @ =0xFFFFFD30
	adds r0, r1, #0
	ldrh r3, [r4]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	bhi _08030270
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
_08030270:
	adds r1, r5, #0
	adds r1, #0x90
	movs r0, #0
	strb r0, [r1]
	ldrh r0, [r4]
	bl sub_08036D60
	str r0, [r5, #0x24]
	mov r0, r8
	str r0, [r5, #0x28]
	adds r0, r5, #0
	adds r0, #0x94
	strh r7, [r0]
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	adds r3, r5, #0
	adds r3, #0xc9
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #1
	ldrb r1, [r3]
	movs r2, #7
	rsbs r2, r2, #0
	mov sb, r2
	mov r2, sb
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldrb r2, [r6, #1]
	lsrs r2, r2, #7
	lsls r2, r2, #3
	mov sb, r2
	movs r2, #9
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r1, r0
	mov r0, sb
	orrs r1, r0
	strb r1, [r3]
	ldrh r1, [r4]
	movs r0, #0x9b
	lsls r0, r0, #2
	cmp r1, r0
	bne _080302D8
	adds r2, r5, #0
	adds r2, #0xcd
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_080302D8:
	ldrb r1, [r6, #4]
	adds r0, r5, #0
	adds r0, #0x81
	strb r1, [r0]
	ldrb r0, [r6, #5]
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x82
	strb r1, [r0]
	ldrb r0, [r6, #6]
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x83
	strb r1, [r0]
	ldrb r0, [r6, #7]
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x84
	strb r1, [r0]
	ldrb r1, [r6]
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, #1
	lsrs r1, r1, #4
	adds r1, #1
	muls r0, r1, r0
	lsls r1, r0, #5
	add r8, r1
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08030316:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #0x18
	bhi _08030326
	b _080301C0
_08030326:
	ldr r0, _08030348 @ =gGame
	ldr r2, _0803034C @ =0x00009D08
	adds r1, r0, r2
	mov r3, r8
	str r3, [r1]
	ldr r1, _08030350 @ =0x00009D0C
	adds r0, r0, r1
	strh r7, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030344: .4byte 0xFFFFFD30
_08030348: .4byte gGame
_0803034C: .4byte 0x00009D08
_08030350: .4byte 0x00009D0C

	thumb_func_start sub_08030354
sub_08030354: @ 0x08030354
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	movs r6, #0
	ldr r0, _080303E4 @ =gGame
	ldr r1, _080303E8 @ =0x00008378
	adds r3, r0, r1
	adds r2, r7, #0
	adds r2, #0x88
	ldrh r1, [r3]
	adds r4, r0, #0
	ldrh r2, [r2]
	cmp r1, r2
	beq _0803041A
	ldr r0, _080303EC @ =gUnknown_020281E0
	mov r8, r0
_08030376:
	lsls r0, r6, #1
	adds r2, r0, r3
	ldrh r0, [r2]
	cmp r0, #0
	bne _08030400
	ldr r3, _080303F0 @ =0x00008376
	adds r1, r4, r3
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r5, r7, #0
	adds r5, #0x88
	ldrh r0, [r5]
	strh r0, [r2]
	ldr r1, _080303F4 @ =0x0000FF01
	adds r0, r1, #0
	ldrh r3, [r5]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08036DDC
	adds r2, r0, #0
	lsls r0, r6, #2
	ldr r3, _080303F8 @ =0x0000835C
	adds r1, r4, r3
	adds r0, r0, r1
	str r2, [r0]
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0803041A
	adds r0, r6, #0
	adds r0, #0x17
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r2, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl sub_08016F4C
	ldr r3, _080303FC @ =0xFFFFFDD9
	adds r0, r3, #0
	ldrh r5, [r5]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bhi _0803041A
	adds r0, r4, #0
	movs r1, #1
	bl sub_0803B688
	b _0803041A
	.align 2, 0
_080303E4: .4byte gGame
_080303E8: .4byte 0x00008378
_080303EC: .4byte gUnknown_020281E0
_080303F0: .4byte 0x00008376
_080303F4: .4byte 0x0000FF01
_080303F8: .4byte 0x0000835C
_080303FC: .4byte 0xFFFFFDD9
_08030400:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #4
	bhi _0803041A
	lsls r0, r6, #1
	adds r0, r0, r3
	adds r1, r7, #0
	adds r1, #0x88
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08030376
_0803041A:
	adds r1, r6, #7
	adds r0, r7, #0
	adds r0, #0x8a
	strb r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0803042C
sub_0803042C: @ 0x0803042C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080304F0 @ =gGame
	ldr r2, _080304F4 @ =0x00009D08
	adds r1, r0, r2
	ldr r1, [r1]
	mov r8, r1
	adds r2, #4
	adds r1, r0, r2
	ldrh r7, [r1]
	movs r1, #0
	mov sb, r1
	ldr r2, _080304F8 @ =0x00005AA0
	adds r6, r0, r2
	ldr r0, _080304FC @ =gUnknown_08D2E044
	mov sl, r0
_08030452:
	mov r0, sb
	movs r1, #3
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r1, _08030500 @ =gUnknown_08D2E03C
	adds r0, r0, r1
	ldrh r4, [r0]
	adds r0, r4, #0
	bl sub_08036D18
	adds r5, r0, #0
	strh r4, [r6, #0xc]
	ldrb r0, [r5, #1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	strb r0, [r6, #0xe]
	strh r7, [r6, #0x14]
	mov r0, sb
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	add r0, sl
	ldr r0, [r0]
	strb r0, [r6, #0xf]
	ldr r0, _08030504 @ =0x0000FFFF
	strh r0, [r6, #0x10]
	movs r2, #0
	strb r2, [r6, #0x12]
	ldrh r0, [r6, #0xc]
	bl sub_08036D60
	str r0, [r6, #4]
	mov r0, r8
	str r0, [r6, #8]
	ldrh r0, [r6, #0xc]
	ldrb r1, [r6, #0xf]
	bl sub_0803050C
	str r0, [r6]
	ldrb r1, [r5]
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, #1
	lsrs r1, r1, #4
	adds r1, #1
	muls r0, r1, r0
	lsls r1, r0, #5
	add r8, r1
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	adds r6, #0x38
	cmp r0, #5
	bls _08030452
	ldr r0, _080304F0 @ =gGame
	ldr r2, _080304F4 @ =0x00009D08
	adds r1, r0, r2
	mov r2, r8
	str r2, [r1]
	ldr r1, _08030508 @ =0x00009D0C
	adds r0, r0, r1
	strh r7, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080304F0: .4byte gGame
_080304F4: .4byte 0x00009D08
_080304F8: .4byte 0x00005AA0
_080304FC: .4byte gUnknown_08D2E044
_08030500: .4byte gUnknown_08D2E03C
_08030504: .4byte 0x0000FFFF
_08030508: .4byte 0x00009D0C

	thumb_func_start sub_0803050C
sub_0803050C: @ 0x0803050C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl sub_08036DF4
	adds r4, r0, #0
	bl sub_08002C4C
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_08002C54
	movs r2, #0
	mov r1, sp
	strh r2, [r1]
	adds r1, r5, #0
	mov r2, sp
	bl sub_08002B1C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_08002ABC
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08030550
sub_08030550: @ 0x08030550
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	mov r8, r4
	mov r0, sp
	strh r2, [r0]
	adds r7, r5, #0
	adds r7, #0x88
	ldrh r0, [r7]
	cmp r0, r4
	bne _08030572
	b _08030696
_08030572:
	adds r0, r4, #0
	bl sub_08036D18
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_08036D3C
	ldrb r2, [r6, #1]
	lsls r2, r2, #0x1a
	adds r4, r5, #0
	adds r4, #0xc7
	lsrs r2, r2, #0x1f
	lsls r2, r2, #3
	ldrb r3, [r4]
	movs r1, #9
	rsbs r1, r1, #0
	mov sb, r1
	ands r1, r3
	orrs r1, r2
	strb r1, [r4]
	ldrb r1, [r0]
	lsls r1, r1, #0x1a
	adds r4, #2
	lsrs r1, r1, #0x1d
	lsls r1, r1, #4
	ldrb r3, [r4]
	movs r2, #0x71
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	strb r2, [r4]
	ldrb r1, [r0, #1]
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x1f
	lsls r1, r1, #7
	movs r3, #0x7f
	ands r2, r3
	orrs r2, r1
	strb r2, [r4]
	ldrb r2, [r0, #1]
	lsls r2, r2, #0x1e
	adds r4, #2
	lsrs r2, r2, #0x1f
	lsls r2, r2, #5
	ldrb r3, [r4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r4]
	ldrb r1, [r0, #2]
	lsrs r1, r1, #1
	adds r3, r5, #0
	adds r3, #0xa6
	movs r4, #0
	strh r1, [r3]
	ldrb r0, [r0, #3]
	lsrs r1, r0, #1
	adds r2, r5, #0
	adds r2, #0xa8
	strh r1, [r2]
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	bne _080305FA
	adds r0, r1, #4
	strh r0, [r2]
_080305FA:
	ldrh r0, [r3]
	lsls r0, r0, #4
	adds r1, r5, #0
	adds r1, #0xaa
	strh r0, [r1]
	ldrh r0, [r2]
	lsls r0, r0, #4
	adds r1, #2
	strh r0, [r1]
	strh r4, [r5, #4]
	strh r4, [r5, #6]
	ldrb r0, [r6]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x19
	adds r0, #8
	strh r0, [r5, #0x14]
	ldrb r0, [r6]
	lsrs r0, r0, #4
	adds r0, #1
	lsls r0, r0, #3
	strh r0, [r5, #0x16]
	adds r0, r5, #0
	adds r0, #0x74
	movs r2, #1
	rsbs r2, r2, #0
	movs r1, #0xd
	bl sub_08001B54
	mov r0, r8
	strh r0, [r7]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08030696
	ldr r0, _080306A4 @ =gSomeBlend
	ldr r1, _080306A8 @ =0x000121B8
	adds r4, r0, r1
	ldrb r0, [r4]
	movs r1, #8
	orrs r0, r1
	strb r0, [r4]
	ldr r0, _080306AC @ =0x000002DE
	bl get_flag
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08030670
	ldr r0, _080306B0 @ =gGame
	ldr r1, _080306B4 @ =0x000067AC
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0xdd
	lsls r0, r0, #1
	cmp r1, r0
	bne _08030670
	ldrb r1, [r4]
	mov r0, sb
	ands r0, r1
	strb r0, [r4]
_08030670:
	ldr r1, _080306B0 @ =gGame
	ldr r0, _080306B8 @ =0x00009D08
	adds r2, r1, r0
	ldr r0, _080306BC @ =0x06010000
	str r0, [r2]
	ldr r0, _080306C0 @ =0x00009D0C
	adds r1, r1, r0
	movs r0, #0
	strh r0, [r1]
	bl sub_08030180
	ldr r1, _080306A4 @ =gSomeBlend
	ldr r0, _080306A8 @ =0x000121B8
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
_08030696:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080306A4: .4byte gSomeBlend
_080306A8: .4byte 0x000121B8
_080306AC: .4byte 0x000002DE
_080306B0: .4byte gGame
_080306B4: .4byte 0x000067AC
_080306B8: .4byte 0x00009D08
_080306BC: .4byte 0x06010000
_080306C0: .4byte 0x00009D0C

	thumb_func_start sub_080306C4
sub_080306C4: @ 0x080306C4
	push {r4, lr}
	ldr r4, _0803070C @ =0x06016000
	ldr r0, _08030710 @ =gGame
	ldr r1, _08030714 @ =0x000067AC
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _08030718 @ =0x0000010F
	cmp r1, r0
	bne _080306D8
	ldr r4, _0803071C @ =0x06016800
_080306D8:
	movs r0, #0xfe
	bl sub_08036D60
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r4, #0
	bl sub_08001B18
	movs r0, #0xa6
	bl sub_08036D60
	ldr r1, _08030720 @ =0x06017800
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
	movs r0, #0
	bl sub_08036DDC
	movs r1, #0x10
	movs r2, #0xe0
	bl sub_08016F4C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803070C: .4byte 0x06016000
_08030710: .4byte gGame
_08030714: .4byte 0x000067AC
_08030718: .4byte 0x0000010F
_0803071C: .4byte 0x06016800
_08030720: .4byte 0x06017800

	thumb_func_start draw_sprites
draw_sprites: @ 0x08030724
	push {r4, r5, lr}
	ldr r0, _0803073C @ =gGame
	ldr r1, _08030740 @ =0x000067AC
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0x95
	bne _08030748
	ldr r1, _08030744 @ =gUnknown_02001008
	movs r2, #0xe
	rsbs r2, r2, #0
	b _0803074E
	.align 2, 0
_0803073C: .4byte gGame
_08030740: .4byte 0x000067AC
_08030744: .4byte gUnknown_02001008
_08030748:
	ldr r1, _08030768 @ =gUnknown_02001008
	movs r2, #0x10
	rsbs r2, r2, #0
_0803074E:
	adds r0, r2, #0
	strh r0, [r1]
	ldr r3, _0803076C @ =gSomeBlend
	ldr r1, _08030770 @ =0x0000566C
	adds r0, r3, r1
	ldrb r0, [r0]
	movs r5, #1
	ands r5, r0
	cmp r5, #0
	beq _08030774
	bl sub_080307DC
	b _080307BA
	.align 2, 0
_08030768: .4byte gUnknown_02001008
_0803076C: .4byte gSomeBlend
_08030770: .4byte 0x0000566C
_08030774:
	ldrh r1, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ldrh r2, [r3, #8]
	orrs r0, r1
	strh r0, [r3, #8]
	ldr r0, _080307C0 @ =gUnknown_02001004
	bl sub_0801A530
	ldr r4, _080307C4 @ =gGame
	ldr r1, _080307C8 @ =0x000082B6
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0803079E
	ldr r2, _080307CC @ =0x00007C18
	adds r0, r4, r2
	bl sub_08030810
_0803079E:
	ldr r1, _080307D0 @ =0x000082BC
	adds r0, r4, r1
	bl sub_08030A00
	ldr r2, _080307D4 @ =0x00005990
	adds r0, r4, r2
	bl sub_08030B70
	ldr r1, _080307D8 @ =0x000067A8
	adds r0, r4, r1
	strh r5, [r0]
	strh r5, [r0, #2]
	bl sub_0803699C
_080307BA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080307C0: .4byte gUnknown_02001004
_080307C4: .4byte gGame
_080307C8: .4byte 0x000082B6
_080307CC: .4byte 0x00007C18
_080307D0: .4byte 0x000082BC
_080307D4: .4byte 0x00005990
_080307D8: .4byte 0x000067A8

	thumb_func_start sub_080307DC
sub_080307DC: @ 0x080307DC
	push {lr}
	ldr r1, _08030804 @ =gSomeBlend
	ldrh r2, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	ldrh r3, [r1, #8]
	orrs r0, r2
	strh r0, [r1, #8]
	ldr r0, _08030808 @ =gUnknown_02001004
	bl sub_0801A530
	ldr r0, _0803080C @ =gUnknown_0200DEBC
	bl sub_08030A00
	bl sub_0803699C
	pop {r0}
	bx r0
	.align 2, 0
_08030804: .4byte gSomeBlend
_08030808: .4byte gUnknown_02001004
_0803080C: .4byte gUnknown_0200DEBC

	thumb_func_start sub_08030810
sub_08030810: @ 0x08030810
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	movs r0, #0
	bl get_obj_direct
	adds r7, r0, #0
	ldr r0, _08030830 @ =gGame
	ldr r1, _08030834 @ =0x0000829B
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #6
	bne _08030838
	bl sub_0803092C
	b _08030922
	.align 2, 0
_08030830: .4byte gGame
_08030834: .4byte 0x0000829B
_08030838:
	movs r6, #0
	mov r5, sp
_0803083C:
	adds r0, r6, #0
	bl get_obj_direct
	adds r4, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08030918
	adds r0, r4, #0
	adds r0, #0xc7
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt _08030918
	adds r0, r7, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08030872
	adds r0, r4, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08030884
_08030872:
	ldr r0, _080308A4 @ =gGame
	ldr r1, _080308A8 @ =0x00009D10
	adds r0, r0, r1
	ldr r0, [r0]
	lsrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08030918
_08030884:
	adds r0, r4, #0
	adds r0, #0xcb
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _080308AC
	adds r0, r4, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sp
	bl sub_0801A548
	b _080308B6
	.align 2, 0
_080308A4: .4byte gGame
_080308A8: .4byte 0x00009D10
_080308AC:
	ldr r0, _080308F8 @ =gUnknown_02001004
	ldrh r1, [r0]
	strh r1, [r5]
	ldrh r0, [r0, #2]
	strh r0, [r5, #2]
_080308B6:
	ldrh r2, [r5]
	ldr r1, _080308FC @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	ldrh r0, [r5, #2]
	add r1, sp, #4
	strh r0, [r1, #2]
	movs r0, #0xf0
	strh r0, [r1, #4]
	movs r0, #0xa0
	strh r0, [r1, #6]
	adds r0, r4, #0
	adds r0, #0xcc
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _08030900
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_08035600
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08030900
	adds r0, r4, #0
	adds r0, #0xc8
	ldrb r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0]
	b _08030918
	.align 2, 0
_080308F8: .4byte gUnknown_02001004
_080308FC: .4byte 0xFFFF0000
_08030900:
	adds r2, r4, #0
	adds r2, #0xc8
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_080359DC
	adds r0, r4, #0
	bl sub_08030D34
_08030918:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #4
	bls _0803083C
_08030922:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803092C
sub_0803092C: @ 0x0803092C
	push {r4, lr}
	sub sp, #0xc
	movs r0, #0
	bl get_obj_direct
	adds r4, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080309F8
	adds r0, r4, #0
	adds r0, #0xc7
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt _080309F8
	adds r0, r4, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0803096C
	ldr r0, _0803098C @ =gGame
	ldr r1, _08030990 @ =0x00009D10
	adds r0, r0, r1
	ldr r0, [r0]
	lsrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080309F8
_0803096C:
	adds r0, r4, #0
	adds r0, #0xcb
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08030994
	adds r0, r4, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sp
	bl sub_0801A548
	b _080309A0
	.align 2, 0
_0803098C: .4byte gGame
_08030990: .4byte 0x00009D10
_08030994:
	ldr r2, _080309D8 @ =gUnknown_02001004
	ldrh r1, [r2]
	mov r0, sp
	strh r1, [r0]
	ldrh r1, [r2, #2]
	strh r1, [r0, #2]
_080309A0:
	mov r0, sp
	ldrh r2, [r0]
	ldr r1, _080309DC @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	mov r0, sp
	ldrh r1, [r0, #2]
	add r0, sp, #4
	strh r1, [r0, #2]
	movs r1, #0xf0
	strh r1, [r0, #4]
	movs r1, #0xa0
	strh r1, [r0, #6]
	adds r1, r4, #0
	bl sub_08035600
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080309E0
	adds r0, r4, #0
	adds r0, #0xc8
	ldrb r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0]
	b _080309F8
	.align 2, 0
_080309D8: .4byte gUnknown_02001004
_080309DC: .4byte 0xFFFF0000
_080309E0:
	adds r2, r4, #0
	adds r2, #0xc8
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_080359DC
	adds r0, r4, #0
	bl sub_08030D34
_080309F8:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08030A00
sub_08030A00: @ 0x08030A00
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	mov r8, r0
	movs r7, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	cmp r7, r0
	blo _08030A16
	b _08030B64
_08030A16:
	mov r6, sp
_08030A18:
	adds r0, r7, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xcb
	ldrb r0, [r5]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _08030A36
	adds r0, r4, #0
	bl sub_08032CC8
_08030A36:
	adds r0, r4, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08030A44
	b _08030B52
_08030A44:
	adds r0, r4, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08030A62
	ldr r0, _08030A7C @ =gGame
	ldr r1, _08030A80 @ =0x00009D10
	adds r0, r0, r1
	ldr r0, [r0]
	lsrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08030B52
_08030A62:
	ldrb r0, [r5]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08030A84
	adds r0, r4, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sp
	bl sub_0801A548
	b _08030A8E
	.align 2, 0
_08030A7C: .4byte gGame
_08030A80: .4byte 0x00009D10
_08030A84:
	ldr r0, _08030AD0 @ =gUnknown_02001004
	ldrh r1, [r0]
	strh r1, [r6]
	ldrh r0, [r0, #2]
	strh r0, [r6, #2]
_08030A8E:
	ldrh r2, [r6]
	ldr r1, _08030AD4 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	ldrh r0, [r6, #2]
	add r1, sp, #4
	strh r0, [r1, #2]
	movs r0, #0xf0
	strh r0, [r1, #4]
	movs r0, #0xa0
	strh r0, [r1, #6]
	adds r0, r4, #0
	adds r0, #0xc7
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _08030AFA
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_08035600
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08030AD8
	adds r0, r4, #0
	adds r0, #0xc8
	ldrb r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0]
	b _08030B52
	.align 2, 0
_08030AD0: .4byte gUnknown_02001004
_08030AD4: .4byte 0xFFFF0000
_08030AD8:
	adds r2, r4, #0
	adds r2, #0xc8
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08030B52
	adds r0, r4, #0
	bl sub_08031480
	b _08030B52
_08030AFA:
	adds r0, r4, #0
	adds r0, #0xcc
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _08030B2E
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_08035600
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08030B2E
	adds r0, r4, #0
	adds r0, #0xc8
	ldrb r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0]
	lsls r1, r1, #0x1a
	cmp r1, #0
	bge _08030B52
	adds r0, r4, #0
	bl sub_08032B34
	b _08030B52
_08030B2E:
	adds r0, r4, #0
	bl sub_08035A88
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08030B52
	adds r2, r4, #0
	adds r2, #0xc8
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_080359DC
	adds r0, r4, #0
	bl sub_08030D34
_08030B52:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r0, r8
	adds r0, #0xb4
	ldrb r0, [r0]
	cmp r7, r0
	bhs _08030B64
	b _08030A18
_08030B64:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08030B70
sub_08030B70: @ 0x08030B70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r6, r0, #0
	mov r4, sp
	mov r0, sp
	bl sub_0801A530
	mov r0, sp
	ldrh r1, [r0]
	ldr r3, _08030BB8 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r3
	orrs r0, r1
	str r0, [sp, #4]
	ldrh r0, [r4, #2]
	add r2, sp, #4
	strh r0, [r2, #2]
	movs r0, #0xf0
	strh r0, [r2, #4]
	movs r0, #0xa0
	strh r0, [r2, #6]
	movs r1, #0x20
	ldr r0, [sp, #0xc]
	ands r0, r3
	orrs r0, r1
	str r0, [sp, #0xc]
	add r3, sp, #0xc
	strh r1, [r3, #2]
	movs r0, #0
	str r0, [sp, #0x10]
	b _08030D12
	.align 2, 0
_08030BB8: .4byte 0xFFFF0000
_08030BBC:
	ldr r0, _08030BD8 @ =gGame
	ldrb r1, [r0, #0x11]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08030BDC
	adds r4, r6, #4
	add r0, sp, #4
	adds r1, r4, #0
	add r2, sp, #0xc
	movs r3, #0
	bl sub_08035820
	b _08030BE8
	.align 2, 0
_08030BD8: .4byte gGame
_08030BDC:
	adds r4, r6, #4
	add r0, sp, #4
	adds r1, r4, #0
	add r2, sp, #0xc
	bl sub_080357D0
_08030BE8:
	lsls r0, r0, #0x10
	mov sb, r4
	cmp r0, #0
	bne _08030BF2
	b _08030D02
_08030BF2:
	ldrb r2, [r6, #0xa]
	movs r0, #4
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _08030CC0
	ldr r0, [r6]
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	movs r1, #0xa8
	muls r0, r1, r0
	ldr r1, _08030CB8 @ =gUnknown_0200B6F0
	mov sl, r1
	adds r5, r0, r1
	ldrh r0, [r5, #0x2c]
	bl sub_08036DF4
	adds r4, r0, #0
	bl sub_08002C4C
	adds r7, r0, #0
	adds r0, r4, #0
	bl sub_08002C54
	mov r8, r0
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r1, [r4]
	adds r2, r6, #0
	adds r2, #8
	bl sub_08002B1C
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r2, #0x30
	ldrsh r0, [r5, r2]
	cmp r0, r1
	beq _08030C52
	strh r1, [r5, #0x30]
	adds r0, r7, #0
	bl sub_08002ABC
	str r0, [r5, #0x20]
	adds r1, r5, #0
	bl sub_08032ADC
_08030C52:
	ldr r0, [r6]
	ldrb r2, [r0]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1e
	adds r0, r5, #0
	mov r1, sb
	bl sub_08031730
	ldrb r1, [r4]
	mov r0, r8
	bl sub_08002BA4
	bl sub_08002BF4
	lsls r0, r0, #0x10
	ldrh r1, [r6, #8]
	adds r1, #1
	strh r1, [r6, #8]
	lsls r1, r1, #0x10
	cmp r1, r0
	blo _08030D02
	ldr r2, _08030CBC @ =0x000029A4
	add r2, sl
	ldrb r1, [r2]
	movs r3, #3
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r6, #0xa]
	movs r2, #5
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r1, r0
	strb r1, [r6, #0xa]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08030D02
	adds r0, r1, #0
	ands r0, r3
	subs r2, #4
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r6, #0xa]
	ldr r0, [r6]
	ldrh r0, [r0, #0xc]
	movs r1, #0
	bl sub_080029F8
	b _08030D02
	.align 2, 0
_08030CB8: .4byte gUnknown_0200B6F0
_08030CBC: .4byte 0x000029A4
_08030CC0:
	ldr r0, [r6]
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r2, #0x1e
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08030D30 @ =gUnknown_0200B680
	adds r5, r0, r1
	movs r0, #0x30
	ldrsh r1, [r5, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08030CF2
	strh r3, [r5, #0x30]
	ldr r0, [r5, #0x20]
	adds r1, r5, #0
	bl sub_08032ADC
_08030CF2:
	ldr r0, [r6]
	ldrb r2, [r0]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1e
	adds r0, r5, #0
	mov r1, sb
	bl sub_08031730
_08030D02:
	ldr r0, [sp, #0x10]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	adds r6, #0xc
	cmp r0, #0x13
	bhi _08030D1E
_08030D12:
	ldrb r1, [r6, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08030D1E
	b _08030BBC
_08030D1E:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030D30: .4byte gUnknown_0200B680

	thumb_func_start sub_08030D34
sub_08030D34: @ 0x08030D34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r5, r0, #0
	adds r0, #0xcc
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _08030D60
	movs r2, #0
	ldr r1, _08030D5C @ =0xFFFF0000
	ldr r0, [sp, #0x10]
	ands r0, r1
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	strh r2, [r0, #2]
	b _08030D8E
	.align 2, 0
_08030D5C: .4byte 0xFFFF0000
_08030D60:
	adds r0, r5, #0
	adds r0, #0xcb
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08030D82
	adds r0, r5, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_0801A548
	mov r8, r4
	b _08030D90
_08030D82:
	ldr r2, _08030E38 @ =gUnknown_02001004
	ldrh r1, [r2]
	add r0, sp, #0x10
	strh r1, [r0]
	ldrh r1, [r2, #2]
	strh r1, [r0, #2]
_08030D8E:
	mov r8, r0
_08030D90:
	movs r0, #0
	ldrsh r2, [r5, r0]
	movs r1, #4
	ldrsh r0, [r5, r1]
	adds r2, r2, r0
	lsls r2, r2, #0xc
	movs r3, #2
	ldrsh r0, [r5, r3]
	movs r4, #6
	ldrsh r1, [r5, r4]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0xb6
	movs r6, #0
	ldrsh r1, [r1, r6]
	adds r0, r0, r1
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	ldr r6, _08030E3C @ =0x0000FFFF
	lsrs r4, r2, #0x10
	orrs r4, r0
	str r4, [sp, #0x14]
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r1, _08030E40 @ =gGame
	ldr r0, [r1]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	mov sb, r1
	cmp r0, #0
	ble _08030E12
	ldr r0, [r5, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _08030E12
	adds r1, r5, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #4
	bhi _08030E12
	asrs r3, r4, #0x10
	ldr r2, _08030E44 @ =gUnknown_080C2112
	ldr r0, _08030E48 @ =0x00009D10
	add r0, sb
	ldr r0, [r0]
	lsrs r0, r0, #3
	ldrb r1, [r1]
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r3
	lsls r0, r0, #0x10
	ands r4, r6
	orrs r4, r0
	str r4, [sp, #0x14]
_08030E12:
	mov r1, sb
	ldrb r0, [r1, #0x11]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _08030EBC
	adds r0, r5, #0
	adds r0, #0xcb
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08030E4C
	adds r0, r5, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	bl sub_0801A61C
	b _08030E50
	.align 2, 0
_08030E38: .4byte gUnknown_02001004
_08030E3C: .4byte 0x0000FFFF
_08030E40: .4byte gGame
_08030E44: .4byte gUnknown_080C2112
_08030E48: .4byte 0x00009D10
_08030E4C:
	bl sub_0801A5EC
_08030E50:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r3, r8
	ldrh r0, [r3]
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	add r0, sp, #0x10
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r0, r2, #0
	subs r0, #0xf0
	add r7, sp, #0x14
	cmp r1, r0
	blt _08030E98
	ldrh r1, [r7]
	movs r6, #0
	ldrsh r0, [r7, r6]
	cmp r0, #0xef
	bgt _08030E98
	adds r0, r3, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08030E90 @ =0xFFFF0000
	ldr r1, [sp, #0x14]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x14]
	ldr r0, _08030E94 @ =gGame
	mov sb, r0
	b _08030ED6
	.align 2, 0
_08030E90: .4byte 0xFFFF0000
_08030E94: .4byte gGame
_08030E98:
	mov r1, r8
	ldrh r0, [r1]
	ldrh r1, [r7]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _08030EB4 @ =0xFFFF0000
	ldr r0, [sp, #0x14]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x14]
	ldr r2, _08030EB8 @ =gGame
	mov sb, r2
	b _08030ED6
	.align 2, 0
_08030EB4: .4byte 0xFFFF0000
_08030EB8: .4byte gGame
_08030EBC:
	mov r3, r8
	ldrh r0, [r3]
	add r3, sp, #0x14
	ldrh r1, [r3]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _08030EFC @ =0xFFFF0000
	ldr r0, [sp, #0x14]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x14]
	adds r7, r3, #0
_08030ED6:
	mov r4, sb
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08030F80
	adds r0, r5, #0
	adds r0, #0xcb
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08030F00
	adds r0, r5, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	bl sub_0801A638
	b _08030F04
	.align 2, 0
_08030EFC: .4byte 0xFFFF0000
_08030F00:
	bl sub_0801A604
_08030F04:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r6, r8
	ldrh r0, [r6, #2]
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r0, #2
	ldrsh r1, [r6, r0]
	adds r0, r2, #0
	subs r0, #0xa0
	cmp r1, r0
	blt _08030F4C
	ldr r2, [sp, #0x14]
	asrs r0, r2, #0x10
	cmp r0, #0x9f
	bgt _08030F4C
	adds r0, r3, r0
	lsls r0, r0, #0x10
	ldr r1, _08030F44 @ =0x0000FFFF
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #0x14]
	mov r1, sl
	adds r0, r3, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r2, _08030F48 @ =gGame
	mov sb, r2
	b _08030FA4
	.align 2, 0
_08030F44: .4byte 0x0000FFFF
_08030F48: .4byte gGame
_08030F4C:
	ldr r2, [sp, #0x14]
	asrs r0, r2, #0x10
	mov r3, r8
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	ldr r1, _08030F78 @ =0x0000FFFF
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #0x14]
	ldrh r1, [r3, #2]
	mov r4, sl
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r6, _08030F7C @ =gGame
	mov sb, r6
	b _08030FA4
	.align 2, 0
_08030F78: .4byte 0x0000FFFF
_08030F7C: .4byte gGame
_08030F80:
	ldr r2, [sp, #0x14]
	asrs r0, r2, #0x10
	mov r3, r8
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	ldr r1, _08031058 @ =0x0000FFFF
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #0x14]
	ldrh r1, [r3, #2]
	mov r4, sl
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_08030FA4:
	ldr r1, _0803105C @ =0x000067A8
	add r1, sb
	ldrh r0, [r7]
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08031060 @ =0xFFFF0000
	ldr r1, [sp, #0x14]
	ands r1, r2
	orrs r1, r0
	asrs r2, r1, #0x10
	ldr r0, _08031064 @ =0x000067AA
	add r0, sb
	ldrh r3, [r0]
	adds r2, r3, r2
	lsls r2, r2, #0x10
	ldr r4, _08031058 @ =0x0000FFFF
	ands r1, r4
	orrs r1, r2
	str r1, [sp, #0x14]
	mov r6, sl
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	adds r0, r5, #0
	adds r0, #0xae
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _08030FFC
	adds r0, r5, #0
	bl sub_08034A10
	ldr r1, [sp, #0x14]
	asrs r2, r1, #0x10
	adds r0, r0, r2
	lsls r0, r0, #0x10
	ands r1, r4
	orrs r1, r0
	str r1, [sp, #0x14]
_08030FFC:
	adds r1, r5, #0
	adds r1, #0xc8
	ldrb r0, [r1]
	lsls r0, r0, #0x1b
	str r1, [sp, #0x20]
	cmp r0, #0
	bge _0803107E
	adds r0, r5, #0
	bl sub_08032AA8
	adds r0, r5, #0
	adds r0, #0x94
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x8a
	ldrb r1, [r1]
	adds r2, r5, #0
	adds r2, #0xb9
	ldrh r3, [r7]
	subs r3, #0xc
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	ldr r4, [sp, #0x14]
	asrs r4, r4, #0x10
	subs r4, #0x14
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r4, [sp]
	bl sub_080324D0
	add r0, sp, #0x14
	movs r2, #0
	ldrsh r3, [r0, r2]
	adds r0, r5, #0
	adds r0, #0xc7
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _08031068
	adds r1, r5, #0
	adds r1, #0xb4
	ldr r0, [sp, #0x14]
	asrs r0, r0, #0x10
	ldrb r1, [r1]
	adds r0, r0, r1
	b _08031070
	.align 2, 0
_08031058: .4byte 0x0000FFFF
_0803105C: .4byte 0x000067A8
_08031060: .4byte 0xFFFF0000
_08031064: .4byte 0x000067AA
_08031068:
	adds r0, r5, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	add r0, sl
_08031070:
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, #0
	adds r1, r3, #0
	bl sub_08032824
	b _08031470
_0803107E:
	adds r3, r5, #0
	adds r3, #0xcc
	str r3, [sp, #0x24]
	adds r4, r5, #0
	adds r4, #0x8b
	str r4, [sp, #0x1c]
	movs r6, #0xca
	adds r6, r6, r5
	mov sb, r6
	movs r0, #0x88
	adds r0, r0, r5
	mov r8, r0
_08031096:
	ldr r2, [sp, #0x1c]
	ldrb r1, [r2]
	adds r0, r5, #0
	bl sub_08035C64
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #5
	ldrb r1, [r6]
	movs r3, #0x61
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
	mov r4, r8
	ldrh r0, [r4]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1e
	bl sub_08036E0C
	adds r4, r0, #0
	bl sub_08002C4C
	str r0, [sp, #0x18]
	adds r0, r4, #0
	bl sub_08002C54
	adds r1, r5, #0
	bl sub_080318A4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08031096
	ldr r2, [sp, #0x24]
	ldrb r0, [r2]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _080310F8
	adds r0, r5, #0
	bl sub_08032B34
	b _08031470
_080310F8:
	mov r3, sb
	ldrb r0, [r3]
	lsls r0, r0, #0x19
	lsrs r1, r0, #0x1e
	cmp r1, #0
	bne _08031108
	ldr r0, [r5, #0x24]
	b _08031110
_08031108:
	mov r6, r8
	ldrh r0, [r6]
	bl sub_08036D78
_08031110:
	str r0, [r5, #0x20]
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bgt _08031124
	cmp r4, #0
	bne _08031124
	b _08031464
_08031124:
	ldr r0, _08031198 @ =gUnknown_02001000
	ldrh r2, [r0]
	add r1, sp, #0xc
	movs r0, #0
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x8c
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, r2
	beq _0803114C
	strh r2, [r1]
	ldr r0, [sp, #0x18]
	adds r1, r2, #0
	bl sub_08002AF4
	str r0, [r5, #0x1c]
	add r1, sp, #0xc
	movs r0, #1
	strh r0, [r1]
_0803114C:
	adds r1, r5, #0
	adds r1, #0xcb
	ldrb r0, [r1]
	lsls r0, r0, #0x1f
	adds r2, r1, #0
	cmp r0, #0
	beq _080311A4
	adds r0, r5, #0
	adds r0, #0xa2
	ldrh r0, [r0]
	cmp r0, #0
	beq _080311A4
	ldr r0, _0803119C @ =gGame
	ldr r4, _080311A0 @ =0x00009D10
	adds r0, r0, r4
	ldr r0, [r0]
	lsrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080311A4
	movs r6, #0
	ldrsh r1, [r7, r6]
	ldr r2, [sp, #0x14]
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_0803253C
	add r0, sp, #0xc
	ldrh r0, [r0]
	cmp r0, #0
	bne _0803118E
	b _08031464
_0803118E:
	ldr r0, [r5, #0x1c]
	adds r1, r5, #0
	bl sub_08032A44
	b _08031464
	.align 2, 0
_08031198: .4byte gUnknown_02001000
_0803119C: .4byte gGame
_080311A0: .4byte 0x00009D10
_080311A4:
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _08031200
	mov sb, r7
	adds r0, r5, #0
	adds r0, #0x94
	ldrh r2, [r0]
	subs r0, #0xa
	ldrb r3, [r0]
	adds r0, #0x2f
	str r0, [sp]
	adds r1, r5, #0
	adds r1, #0xc7
	ldrb r0, [r1]
	lsls r0, r0, #0x1d
	mov r8, r1
	cmp r0, #0
	bge _080311D4
	subs r1, #0x13
	ldrh r0, [r7, #2]
	ldrb r4, [r1]
	adds r0, r0, r4
	b _080311DC
_080311D4:
	adds r1, r5, #0
	adds r1, #0xb4
	ldrb r0, [r1]
	add r0, sl
_080311DC:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	adds r4, r1, #0
	movs r1, #0
	ldr r6, [sp, #0x20]
	ldrb r0, [r6]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bne _080311F4
	movs r1, #1
_080311F4:
	str r1, [sp, #8]
	adds r0, r5, #0
	mov r1, sb
	bl sub_080322D8
	b _08031426
_08031200:
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	beq _080312BC
	add r0, sp, #0xc
	ldrh r0, [r0]
	cmp r0, #0
	beq _08031262
	mov sb, r7
	adds r0, r5, #0
	adds r0, #0x94
	ldrh r2, [r0]
	subs r0, #0xa
	ldrb r3, [r0]
	adds r0, #0x2f
	str r0, [sp]
	adds r1, r5, #0
	adds r1, #0xc7
	ldrb r0, [r1]
	lsls r0, r0, #0x1d
	mov r8, r1
	cmp r0, #0
	bge _08031236
	subs r1, #0x13
	ldrh r0, [r7, #2]
	ldrb r4, [r1]
	adds r0, r0, r4
	b _0803123E
_08031236:
	adds r1, r5, #0
	adds r1, #0xb4
	ldrb r0, [r1]
	add r0, sl
_0803123E:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	adds r4, r1, #0
	movs r1, #0
	ldr r6, [sp, #0x20]
	ldrb r0, [r6]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bne _08031256
	movs r1, #1
_08031256:
	str r1, [sp, #8]
	adds r0, r5, #0
	mov r1, sb
	bl sub_08031DE0
	b _080312B4
_08031262:
	mov sb, r7
	adds r0, r5, #0
	adds r0, #0x94
	ldrh r2, [r0]
	subs r0, #0xa
	ldrb r3, [r0]
	adds r0, #0x2f
	str r0, [sp]
	adds r1, r5, #0
	adds r1, #0xc7
	ldrb r0, [r1]
	lsls r0, r0, #0x1d
	mov r8, r1
	cmp r0, #0
	bge _0803128A
	subs r1, #0x13
	ldrh r0, [r7, #2]
	ldrb r4, [r1]
	adds r0, r0, r4
	b _08031292
_0803128A:
	adds r1, r5, #0
	adds r1, #0xb4
	ldrb r0, [r1]
	add r0, sl
_08031292:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	adds r4, r1, #0
	movs r1, #0
	ldr r6, [sp, #0x20]
	ldrb r0, [r6]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bne _080312AA
	movs r1, #1
_080312AA:
	str r1, [sp, #8]
	adds r0, r5, #0
	mov r1, sb
	bl sub_08031C34
_080312B4:
	adds r0, r5, #0
	bl sub_080363A0
	b _08031426
_080312BC:
	adds r0, r5, #0
	adds r0, #0xcd
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08031378
	add r0, sp, #0xc
	ldrh r0, [r0]
	cmp r0, #0
	beq _08031324
	mov sb, r7
	adds r0, r5, #0
	adds r0, #0x94
	ldrh r2, [r0]
	subs r0, #0xa
	ldrb r3, [r0]
	adds r0, #0x2f
	str r0, [sp]
	adds r1, r5, #0
	adds r1, #0xc7
	ldrb r0, [r1]
	lsls r0, r0, #0x1d
	mov r8, r1
	cmp r0, #0
	bge _080312F8
	subs r1, #0x13
	ldrh r0, [r7, #2]
	ldrb r4, [r1]
	adds r0, r0, r4
	b _08031300
_080312F8:
	adds r1, r5, #0
	adds r1, #0xb4
	ldrb r0, [r1]
	add r0, sl
_08031300:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	adds r4, r1, #0
	movs r1, #0
	ldr r6, [sp, #0x20]
	ldrb r0, [r6]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bne _08031318
	movs r1, #1
_08031318:
	str r1, [sp, #8]
	adds r0, r5, #0
	mov r1, sb
	bl sub_08032128
	b _08031426
_08031324:
	mov sb, r7
	adds r0, r5, #0
	adds r0, #0x94
	ldrh r2, [r0]
	subs r0, #0xa
	ldrb r3, [r0]
	adds r0, #0x2f
	str r0, [sp]
	adds r1, r5, #0
	adds r1, #0xc7
	ldrb r0, [r1]
	lsls r0, r0, #0x1d
	mov r8, r1
	cmp r0, #0
	bge _0803134C
	subs r1, #0x13
	ldrh r0, [r7, #2]
	ldrb r4, [r1]
	adds r0, r0, r4
	b _08031354
_0803134C:
	adds r1, r5, #0
	adds r1, #0xb4
	ldrb r0, [r1]
	add r0, sl
_08031354:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	adds r4, r1, #0
	movs r1, #0
	ldr r6, [sp, #0x20]
	ldrb r0, [r6]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bne _0803136C
	movs r1, #1
_0803136C:
	str r1, [sp, #8]
	adds r0, r5, #0
	mov r1, sb
	bl sub_08031FCC
	b _08031426
_08031378:
	add r0, sp, #0xc
	ldrh r0, [r0]
	cmp r0, #0
	beq _080313D4
	mov sb, r7
	adds r0, r5, #0
	adds r0, #0x94
	ldrh r2, [r0]
	subs r0, #0xa
	ldrb r3, [r0]
	adds r0, #0x2f
	str r0, [sp]
	adds r1, r5, #0
	adds r1, #0xc7
	ldrb r0, [r1]
	lsls r0, r0, #0x1d
	mov r8, r1
	cmp r0, #0
	bge _080313A8
	subs r1, #0x13
	ldrh r0, [r7, #2]
	ldrb r4, [r1]
	adds r0, r0, r4
	b _080313B0
_080313A8:
	adds r1, r5, #0
	adds r1, #0xb4
	ldrb r0, [r1]
	add r0, sl
_080313B0:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	adds r4, r1, #0
	movs r1, #0
	ldr r6, [sp, #0x20]
	ldrb r0, [r6]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bne _080313C8
	movs r1, #1
_080313C8:
	str r1, [sp, #8]
	adds r0, r5, #0
	mov r1, sb
	bl sub_08031AB8
	b _08031426
_080313D4:
	mov sb, r7
	adds r0, r5, #0
	adds r0, #0x94
	ldrh r2, [r0]
	subs r0, #0xa
	ldrb r3, [r0]
	adds r0, #0x2f
	str r0, [sp]
	adds r1, r5, #0
	adds r1, #0xc7
	ldrb r0, [r1]
	lsls r0, r0, #0x1d
	mov r8, r1
	cmp r0, #0
	bge _080313FC
	subs r1, #0x13
	ldrh r0, [r7, #2]
	ldrb r4, [r1]
	adds r0, r0, r4
	b _08031404
_080313FC:
	adds r1, r5, #0
	adds r1, #0xb4
	ldrb r0, [r1]
	add r0, sl
_08031404:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	adds r4, r1, #0
	movs r1, #0
	ldr r6, [sp, #0x20]
	ldrb r0, [r6]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bne _0803141C
	movs r1, #1
_0803141C:
	str r1, [sp, #8]
	adds r0, r5, #0
	mov r1, sb
	bl sub_08031970
_08031426:
	movs r0, #0
	ldrsh r1, [r7, r0]
	add r6, sp, #0x14
	movs r3, #2
	ldrsh r2, [r6, r3]
	adds r0, r5, #0
	bl sub_0803253C
	ldr r0, [r5, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _08031464
	movs r0, #0
	ldrsh r1, [r7, r0]
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _08031456
	ldrh r0, [r6, #2]
	ldrb r4, [r4]
	adds r0, r0, r4
	b _0803145A
_08031456:
	ldrb r0, [r4]
	add r0, sl
_0803145A:
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, #0
	bl sub_08032824
_08031464:
	movs r0, #0
	strh r0, [r5, #4]
	strh r0, [r5, #6]
	adds r0, r5, #0
	bl sub_08032B34
_08031470:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08031480
sub_08031480: @ 0x08031480
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r0, #0xcc
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _080314AC
	movs r2, #0
	ldr r1, _080314A8 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	str r0, [sp]
	mov r0, sp
	strh r2, [r0, #2]
	adds r7, r5, #0
	adds r7, #0xcb
	b _080314D8
	.align 2, 0
_080314A8: .4byte 0xFFFF0000
_080314AC:
	adds r1, r5, #0
	adds r1, #0xcb
	ldrb r0, [r1]
	lsrs r0, r0, #7
	adds r7, r1, #0
	cmp r0, #0
	beq _080314CC
	adds r0, r5, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sp
	bl sub_0801A548
	b _080314D8
_080314CC:
	ldr r2, _0803156C @ =gUnknown_02001004
	ldrh r1, [r2]
	mov r0, sp
	strh r1, [r0]
	ldrh r1, [r2, #2]
	strh r1, [r0, #2]
_080314D8:
	movs r0, #0
	ldrsh r2, [r5, r0]
	movs r1, #4
	ldrsh r0, [r5, r1]
	adds r2, r2, r0
	lsls r2, r2, #0xc
	movs r3, #2
	ldrsh r0, [r5, r3]
	movs r6, #6
	ldrsh r1, [r5, r6]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0xb6
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r0, r0, r1
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	ldr r6, _08031570 @ =0x0000FFFF
	lsrs r4, r2, #0x10
	orrs r4, r0
	ldr r1, _08031574 @ =gGame
	ldr r0, [r1]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	mov r8, r1
	cmp r0, #0
	ble _0803154A
	ldr r0, [r5, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _0803154A
	adds r1, r5, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #4
	bhi _0803154A
	asrs r3, r4, #0x10
	ldr r2, _08031578 @ =gUnknown_080C2112
	ldr r0, _0803157C @ =0x00009D10
	add r0, r8
	ldr r0, [r0]
	lsrs r0, r0, #3
	ldrb r1, [r1]
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r3
	lsls r0, r0, #0x10
	ands r4, r6
	orrs r4, r0
_0803154A:
	mov r6, r8
	ldrb r0, [r6, #0x11]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _080315E4
	ldrb r0, [r7]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08031580
	adds r0, r5, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	bl sub_0801A61C
	b _08031584
	.align 2, 0
_0803156C: .4byte gUnknown_02001004
_08031570: .4byte 0x0000FFFF
_08031574: .4byte gGame
_08031578: .4byte gUnknown_080C2112
_0803157C: .4byte 0x00009D10
_08031580:
	bl sub_0801A5EC
_08031584:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r0, sp
	ldrh r0, [r0]
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov r0, sp
	movs r6, #0
	ldrsh r1, [r0, r6]
	adds r0, r2, #0
	subs r0, #0xf0
	cmp r1, r0
	blt _080315C4
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	bgt _080315C4
	adds r0, r3, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080315BC @ =0xFFFF0000
	ands r4, r1
	orrs r4, r0
	ldr r0, _080315C0 @ =gGame
	mov r8, r0
	b _080315F4
	.align 2, 0
_080315BC: .4byte 0xFFFF0000
_080315C0: .4byte gGame
_080315C4:
	mov r0, sp
	ldrh r0, [r0]
	subs r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080315DC @ =0xFFFF0000
	ands r4, r1
	orrs r4, r0
	ldr r1, _080315E0 @ =gGame
	mov r8, r1
	b _080315F4
	.align 2, 0
_080315DC: .4byte 0xFFFF0000
_080315E0: .4byte gGame
_080315E4:
	mov r0, sp
	ldrh r0, [r0]
	subs r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08031618 @ =0xFFFF0000
	ands r4, r1
	orrs r4, r0
_080315F4:
	mov r3, r8
	ldrb r0, [r3, #0x11]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08031678
	ldrb r0, [r7]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0803161C
	adds r0, r5, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	bl sub_0801A638
	b _08031620
	.align 2, 0
_08031618: .4byte 0xFFFF0000
_0803161C:
	bl sub_0801A604
_08031620:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r1, sp
	ldrh r0, [r1, #2]
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r6, #2
	ldrsh r1, [r1, r6]
	adds r0, r2, #0
	subs r0, #0xa0
	cmp r1, r0
	blt _08031658
	asrs r0, r4, #0x10
	cmp r0, #0x9f
	bgt _08031658
	adds r0, r3, r0
	lsls r0, r0, #0x10
	ldr r1, _08031650 @ =0x0000FFFF
	ands r4, r1
	orrs r4, r0
	ldr r0, _08031654 @ =gGame
	mov r8, r0
	b _08031688
	.align 2, 0
_08031650: .4byte 0x0000FFFF
_08031654: .4byte gGame
_08031658:
	asrs r1, r4, #0x10
	mov r0, sp
	ldrh r0, [r0, #2]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, _08031670 @ =0x0000FFFF
	ands r4, r0
	orrs r4, r1
	ldr r1, _08031674 @ =gGame
	mov r8, r1
	b _08031688
	.align 2, 0
_08031670: .4byte 0x0000FFFF
_08031674: .4byte gGame
_08031678:
	asrs r1, r4, #0x10
	mov r0, sp
	ldrh r0, [r0, #2]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, _080316FC @ =0x0000FFFF
	ands r4, r0
	orrs r4, r1
_08031688:
	mov r2, r8
	ldr r3, _08031700 @ =0x000067A8
	adds r0, r2, r3
	ldrh r0, [r0]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08031704 @ =0xFFFF0000
	ands r4, r1
	orrs r4, r0
	ldr r6, _08031708 @ =0x000067AA
	adds r2, r2, r6
	asrs r0, r4, #0x10
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	ldr r6, _080316FC @ =0x0000FFFF
	ands r4, r6
	orrs r4, r0
	adds r0, r5, #0
	adds r0, #0xae
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _080316CA
	adds r0, r5, #0
	bl sub_08034A10
	asrs r1, r4, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	ands r4, r6
	orrs r4, r0
_080316CA:
	ldrb r0, [r7]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08031710
	adds r0, r5, #0
	adds r0, #0xa2
	ldrh r0, [r0]
	cmp r0, #0
	beq _08031710
	ldr r0, _0803170C @ =0x00009D10
	add r0, r8
	ldr r0, [r0]
	lsrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08031710
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	asrs r2, r4, #0x10
	adds r0, r5, #0
	bl sub_0803253C
	b _0803171C
	.align 2, 0
_080316FC: .4byte 0x0000FFFF
_08031700: .4byte 0x000067A8
_08031704: .4byte 0xFFFF0000
_08031708: .4byte 0x000067AA
_0803170C: .4byte 0x00009D10
_08031710:
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	asrs r2, r4, #0x10
	adds r0, r5, #0
	bl sub_0803253C
_0803171C:
	movs r0, #0
	strh r0, [r5, #4]
	strh r0, [r5, #6]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08031730
sub_08031730: @ 0x08031730
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	mov sb, r0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	add r0, sp, #8
	bl sub_0801A530
	ldr r0, _0803179C @ =0xFFFF0000
	mov r8, r0
	ldrh r0, [r4, #2]
	lsls r0, r0, #0x10
	ldrh r5, [r4]
	orrs r5, r0
	ldr r0, _080317A0 @ =gGame
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _080317B8
	adds r0, r6, #0
	bl sub_08036CD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r1, sp, #8
	ldrh r1, [r1]
	subs r1, r0, r1
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	add r1, sp, #8
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r0, #0xf0
	cmp r1, r0
	blt _080317A4
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	bgt _080317A4
	adds r0, r3, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r7, r8
	ands r5, r7
	b _080317C6
	.align 2, 0
_0803179C: .4byte 0xFFFF0000
_080317A0: .4byte gGame
_080317A4:
	add r0, sp, #8
	ldrh r0, [r0]
	subs r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080317B4 @ =0xFFFF0000
	b _080317C4
	.align 2, 0
_080317B4: .4byte 0xFFFF0000
_080317B8:
	add r0, sp, #8
	ldrh r0, [r0]
	subs r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, r8
_080317C4:
	ands r5, r1
_080317C6:
	orrs r5, r0
	ldr r1, _0803180C @ =gGame
	ldrb r0, [r1, #0x11]
	lsls r0, r0, #0x1b
	adds r4, r1, #0
	cmp r0, #0
	bge _08031830
	adds r0, r6, #0
	bl sub_08036CD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r2, sp, #8
	ldrh r1, [r2, #2]
	subs r1, r0, r1
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	movs r7, #2
	ldrsh r1, [r2, r7]
	subs r0, #0xa0
	asrs r2, r5, #0x10
	cmp r1, r0
	blt _08031814
	cmp r2, #0x9f
	bgt _08031814
	adds r0, r3, r2
	lsls r0, r0, #0x10
	ldr r1, _08031810 @ =0x0000FFFF
	ands r5, r1
	orrs r5, r0
	b _08031840
	.align 2, 0
_0803180C: .4byte gGame
_08031810: .4byte 0x0000FFFF
_08031814:
	add r0, sp, #8
	ldrh r0, [r0, #2]
	subs r0, r2, r0
	lsls r0, r0, #0x10
	ldr r1, _08031828 @ =0x0000FFFF
	ands r5, r1
	orrs r5, r0
	ldr r4, _0803182C @ =gGame
	b _08031840
	.align 2, 0
_08031828: .4byte 0x0000FFFF
_0803182C: .4byte gGame
_08031830:
	asrs r1, r5, #0x10
	add r0, sp, #8
	ldrh r0, [r0, #2]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, _08031894 @ =0x0000FFFF
	ands r5, r0
	orrs r5, r1
_08031840:
	ldr r1, _08031898 @ =0x000067A8
	adds r0, r4, r1
	ldrh r0, [r0]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0803189C @ =0xFFFF0000
	ands r5, r1
	orrs r5, r0
	ldr r2, _080318A0 @ =0x000067AA
	adds r1, r4, r2
	asrs r0, r5, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	ldr r1, _08031894 @ =0x0000FFFF
	ands r5, r1
	orrs r5, r0
	movs r3, #3
	subs r3, r3, r6
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r7, sb
	ldr r0, [r7, #0x20]
	ldrh r1, [r7, #0x34]
	mov r2, sb
	adds r2, #0x2e
	ldrb r2, [r2]
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	str r4, [sp]
	asrs r4, r5, #0x10
	str r4, [sp, #4]
	bl sub_08032958
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031894: .4byte 0x0000FFFF
_08031898: .4byte 0x000067A8
_0803189C: .4byte 0xFFFF0000
_080318A0: .4byte 0x000067AA

	thumb_func_start sub_080318A4
sub_080318A4: @ 0x080318A4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r1, #0
	adds r1, #0x8b
	ldrb r1, [r1]
	mov r8, r1
	movs r1, #1
	add r8, r1
	mov r1, r8
	bl sub_08002BCC
	adds r7, r0, #0
	ldr r4, _08031910 @ =gUnknown_02001002
	bl sub_08002C20
	lsls r1, r0, #0x10
	lsrs r3, r1, #0x10
	strh r0, [r4]
	adds r2, r6, #0
	adds r2, #0x92
	ldrh r0, [r2]
	cmp r0, r3
	blo _08031924
	adds r4, r6, #0
	adds r4, #0xca
	ldrb r0, [r4]
	movs r1, #8
	orrs r0, r1
	strb r0, [r4]
	adds r5, r6, #0
	adds r5, #0xcc
	ldrb r0, [r5]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _08031914
	adds r0, r6, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033414
	ldrb r2, [r4]
	movs r1, #9
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4]
	ldrb r0, [r5]
	ands r1, r0
	strb r1, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	b _08031962
	.align 2, 0
_08031910: .4byte gUnknown_02001002
_08031914:
	adds r0, r6, #0
	adds r0, #0xbf
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08031922
	subs r0, r3, #1
_08031922:
	strh r0, [r2]
_08031924:
	ldrh r1, [r7]
	cmp r1, #0
	bne _08031938
	ldr r0, _08031934 @ =gUnknown_02001000
	strh r1, [r0]
	movs r0, #0
	b _08031962
	.align 2, 0
_08031934: .4byte gUnknown_02001000
_08031938:
	adds r3, r7, #2
	ldrb r2, [r3, #1]
	adds r0, r6, #0
	adds r0, #0x92
	ldrh r0, [r0]
	ldr r5, _0803196C @ =gUnknown_02001000
	mov r1, r8
	lsls r4, r1, #0x10
	cmp r2, r0
	bhs _0803195C
	adds r1, r0, #0
_0803194E:
	adds r3, #2
	ldrb r0, [r3, #1]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r1
	blo _0803194E
_0803195C:
	ldrb r0, [r3]
	strh r0, [r5]
	asrs r0, r4, #0x10
_08031962:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803196C: .4byte gUnknown_02001000

	thumb_func_start sub_08031970
sub_08031970: @ 0x08031970
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #4]
	mov sb, r1
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, sp
	strh r1, [r0]
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x1c]
	ldrh r0, [r1]
	cmp r0, #4
	bls _080319A4
	movs r0, #4
_080319A4:
	mov sl, r0
	mov r2, r8
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r4, r1, #2
	movs r5, #0
	str r5, [sp, #0xc]
	cmp r5, sl
	bhs _08031A9C
	b _08031A90
_080319BA:
	ldr r1, _080319E0 @ =0x000121B0
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #3
	ldr r1, _080319E4 @ =gUnknown_030038F0
	adds r0, r0, r1
	mov ip, r0
	ldr r0, _080319E8 @ =gUnknown_02001008
	movs r1, #0
	ldrsb r1, [r4, r1]
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldrb r2, [r4]
	cmp r1, r0
	blt _080319EC
	ldr r5, [sp, #0x34]
	ldrb r3, [r5, #1]
	b _080319F0
	.align 2, 0
_080319E0: .4byte 0x000121B0
_080319E4: .4byte gUnknown_030038F0
_080319E8: .4byte gUnknown_02001008
_080319EC:
	ldr r7, [sp, #0x34]
	ldrb r3, [r7]
_080319F0:
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	str r2, [sp, #0x10]
	mov r1, sb
	movs r2, #2
	ldrsh r0, [r1, r2]
	ldr r5, [sp, #0x10]
	adds r2, r5, r0
	movs r0, #0xff
	ands r2, r0
	ldr r0, [r4]
	lsrs r0, r0, #0x1e
	lsls r0, r0, #0xe
	orrs r2, r0
	movs r0, #1
	ldrsb r0, [r4, r0]
	movs r7, #0
	ldrsh r1, [r1, r7]
	adds r0, r0, r1
	ldr r1, _08031A48 @ =0x000001FF
	ands r0, r1
	lsls r0, r0, #0x10
	orrs r2, r0
	ldrh r1, [r4, #2]
	movs r5, #0xf0
	lsls r5, r5, #6
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #0x12
	orrs r2, r0
	mov r7, ip
	str r2, [r7]
	lsls r0, r3, #0xa
	orrs r0, r6
	mov r1, r8
	orrs r0, r1
	strh r0, [r7, #4]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08031A4C
	movs r0, #0
	b _08031A66
	.align 2, 0
_08031A48: .4byte 0x000001FF
_08031A4C:
	ldr r2, [sp, #8]
	lsls r0, r2, #0x10
	ldr r1, [sp, #4]
	adds r1, #0xbb
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldr r5, _08031AAC @ =0xFF600000
	adds r0, r0, r5
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_08031A66:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r3, #0
	bl sub_08032DAC
	ldm r4!, {r1}
	lsrs r0, r1, #0x1e
	lsls r1, r1, #2
	lsrs r1, r1, #0x1e
	bl sub_08002760
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, [sp, #0xc]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	cmp r0, sl
	bhs _08031A9C
_08031A90:
	ldr r0, _08031AB0 @ =gSomeBlend
	ldr r7, _08031AB4 @ =0x000121B0
	adds r1, r0, r7
	ldrh r1, [r1]
	cmp r1, #0x7f
	bls _080319BA
_08031A9C:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031AAC: .4byte 0xFF600000
_08031AB0: .4byte gSomeBlend
_08031AB4: .4byte 0x000121B0

	thumb_func_start sub_08031AB8
sub_08031AB8: @ 0x08031AB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r7, r0, #0
	str r1, [sp, #4]
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	mov r0, sp
	strh r1, [r0]
	ldr r0, [r7, #0x1c]
	ldrh r0, [r0]
	movs r1, #4
	cmp r0, #4
	bhi _08031AEE
	adds r1, r0, #0
_08031AEE:
	adds r0, r7, #0
	adds r0, #0x90
	strb r1, [r0]
	ldr r2, [sp, #8]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x10
	str r1, [sp, #8]
	ldr r1, [r7, #0x1c]
	adds r4, r1, #2
	adds r6, r7, #0
	adds r6, #0x54
	movs r5, #0
	mov sl, r5
	str r0, [sp, #0x10]
	ldrb r0, [r0]
	cmp sl, r0
	blo _08031B12
	b _08031C18
_08031B12:
	ldr r1, [r7, #0x20]
	mov r8, r1
	b _08031C0A
_08031B18:
	ldr r5, _08031B3C @ =0x000121B0
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #3
	ldr r1, _08031B40 @ =gUnknown_030038F0
	adds r0, r0, r1
	mov ip, r0
	ldr r0, _08031B44 @ =gUnknown_02001008
	movs r1, #0
	ldrsb r1, [r4, r1]
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldrb r2, [r4]
	cmp r1, r0
	blt _08031B48
	ldr r5, [sp, #0x3c]
	ldrb r3, [r5, #1]
	b _08031B4C
	.align 2, 0
_08031B3C: .4byte 0x000121B0
_08031B40: .4byte gUnknown_030038F0
_08031B44: .4byte gUnknown_02001008
_08031B48:
	ldr r0, [sp, #0x3c]
	ldrb r3, [r0]
_08031B4C:
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	str r2, [sp, #0x14]
	ldr r1, [sp, #4]
	movs r2, #2
	ldrsh r0, [r1, r2]
	ldr r5, [sp, #0x14]
	adds r2, r5, r0
	movs r0, #0xff
	ands r2, r0
	ldr r0, [r4]
	lsrs r0, r0, #0x1e
	lsls r0, r0, #0xe
	orrs r2, r0
	movs r0, #1
	ldrsb r0, [r4, r0]
	movs r5, #0
	ldrsh r1, [r1, r5]
	adds r0, r0, r1
	ldr r1, _08031BA8 @ =0x000001FF
	ands r0, r1
	lsls r0, r0, #0x10
	orrs r2, r0
	ldrh r1, [r4, #2]
	movs r5, #0xf0
	lsls r5, r5, #6
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #0x12
	orrs r2, r0
	mov r0, ip
	str r2, [r0]
	lsls r0, r3, #0xa
	mov r1, sb
	orrs r0, r1
	ldr r2, [sp, #8]
	orrs r0, r2
	mov r5, ip
	strh r0, [r5, #4]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08031BAC
	movs r0, #0
	b _08031BC6
	.align 2, 0
_08031BA8: .4byte 0x000001FF
_08031BAC:
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x10
	adds r1, r7, #0
	adds r1, #0xbb
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldr r2, _08031C28 @ =0xFF600000
	adds r0, r0, r2
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_08031BC6:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r3, #0
	bl sub_08032DAC
	ldr r0, [r4]
	lsls r0, r0, #6
	lsrs r0, r0, #0x16
	lsls r0, r0, #5
	add r0, r8
	str r0, [r6]
	ldm r4!, {r1}
	lsrs r0, r1, #0x1e
	lsls r1, r1, #2
	lsrs r1, r1, #0x1e
	bl sub_08002760
	strh r0, [r6, #4]
	add r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	adds r6, #8
	ldr r5, [sp, #0x10]
	ldrb r5, [r5]
	cmp sl, r5
	bhs _08031C18
	ldr r0, [r7, #0x20]
	mov r8, r0
_08031C0A:
	ldr r0, _08031C2C @ =gSomeBlend
	ldr r2, _08031C30 @ =0x000121B0
	adds r1, r0, r2
	ldrh r1, [r1]
	cmp r1, #0x7f
	bhi _08031C18
	b _08031B18
_08031C18:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031C28: .4byte 0xFF600000
_08031C2C: .4byte gSomeBlend
_08031C30: .4byte 0x000121B0

	thumb_func_start sub_08031C34
sub_08031C34: @ 0x08031C34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	mov r0, sp
	strh r1, [r0]
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x1c]
	ldrh r0, [r1]
	cmp r0, #4
	bls _08031C6A
	movs r0, #4
_08031C6A:
	str r0, [sp, #0x18]
	ldr r2, [sp, #0xc]
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	adds r5, r1, #2
	movs r3, #0
	str r3, [sp, #0x14]
	ldr r4, [sp, #0x18]
	cmp r3, r4
	blo _08031C82
	b _08031DC2
_08031C82:
	b _08031DB4
_08031C84:
	ldr r3, _08031CA8 @ =0x000121B0
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #3
	ldr r1, _08031CAC @ =gUnknown_030038F0
	adds r0, r0, r1
	mov sb, r0
	ldr r0, _08031CB0 @ =gUnknown_02001008
	movs r1, #0
	ldrsb r1, [r5, r1]
	movs r4, #0
	ldrsh r0, [r0, r4]
	ldrb r2, [r5]
	cmp r1, r0
	blt _08031CB4
	ldr r0, [sp, #0x3c]
	ldrb r6, [r0, #1]
	b _08031CB8
	.align 2, 0
_08031CA8: .4byte 0x000121B0
_08031CAC: .4byte gUnknown_030038F0
_08031CB0: .4byte gUnknown_02001008
_08031CB4:
	ldr r1, [sp, #0x3c]
	ldrb r6, [r1]
_08031CB8:
	lsls r0, r2, #0x18
	asrs r0, r0, #8
	lsrs r7, r0, #0x10
	movs r0, #1
	ldrsb r0, [r5, r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r2, [sp, #4]
	ldr r3, [r2, #0x3c]
	movs r4, #0xc
	ldrsh r1, [r3, r4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08031CDE
	ldrh r4, [r3]
	ldrh r3, [r3, #2]
	b _08031D0A
_08031CDE:
	movs r1, #0
	ldrsh r0, [r3, r1]
	movs r2, #4
	ldrsh r1, [r3, r2]
	ldrh r2, [r3, #0xe]
	ldrh r3, [r3, #0xc]
	bl sub_08002E34
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, [sp, #4]
	ldr r3, [r0, #0x3c]
	movs r1, #2
	ldrsh r0, [r3, r1]
	movs r2, #6
	ldrsh r1, [r3, r2]
	ldrh r2, [r3, #0xe]
	ldrh r3, [r3, #0xc]
	bl sub_08002E34
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08031D0A:
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r2, r1, #0
	muls r2, r0, r2
	lsls r2, r2, #8
	mov r4, r8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	muls r1, r0, r1
	lsls r1, r1, #8
	asrs r2, r2, #0x10
	ldr r3, [sp, #8]
	movs r4, #2
	ldrsh r0, [r3, r4]
	adds r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	ldr r0, [r5]
	lsrs r0, r0, #0x1e
	lsls r0, r0, #0xe
	orrs r2, r0
	asrs r1, r1, #0x10
	movs r4, #0
	ldrsh r0, [r3, r4]
	adds r1, r1, r0
	ldr r0, _08031D78 @ =0x000001FF
	ands r1, r0
	lsls r1, r1, #0x10
	orrs r2, r1
	ldrh r1, [r5, #2]
	movs r3, #0xf0
	lsls r3, r3, #6
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0x12
	orrs r2, r0
	mov r4, sb
	str r2, [r4]
	lsls r0, r6, #0xa
	mov r1, sl
	orrs r0, r1
	ldr r2, [sp, #0xc]
	orrs r0, r2
	strh r0, [r4, #4]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08031D7C
	movs r0, #0
	b _08031D86
	.align 2, 0
_08031D78: .4byte 0x000001FF
_08031D7C:
	ldr r3, [sp, #0x10]
	lsls r0, r3, #0x10
	ldr r4, _08031DD4 @ =0xFF600000
	adds r0, r0, r4
	lsrs r0, r0, #0x10
_08031D86:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_08032DAC
	ldm r5!, {r1}
	lsrs r0, r1, #0x1e
	lsls r1, r1, #2
	lsrs r1, r1, #0x1e
	bl sub_08002760
	add r0, sl
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [sp, #0x14]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	cmp r0, r1
	bhs _08031DC2
_08031DB4:
	ldr r0, _08031DD8 @ =gSomeBlend
	ldr r2, _08031DDC @ =0x000121B0
	adds r1, r0, r2
	ldrh r1, [r1]
	cmp r1, #0x7f
	bhi _08031DC2
	b _08031C84
_08031DC2:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031DD4: .4byte 0xFF600000
_08031DD8: .4byte gSomeBlend
_08031DDC: .4byte 0x000121B0

	thumb_func_start sub_08031DE0
sub_08031DE0: @ 0x08031DE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r7, r0, #0
	str r1, [sp, #4]
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x4c]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #8]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	mov r0, sp
	strh r1, [r0]
	ldr r0, [r7, #0x1c]
	ldrh r0, [r0]
	movs r1, #4
	cmp r0, #4
	bhi _08031E16
	adds r1, r0, #0
_08031E16:
	adds r0, r7, #0
	adds r0, #0x90
	strb r1, [r0]
	ldr r2, [sp, #0xc]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x10
	str r1, [sp, #0xc]
	ldr r1, [r7, #0x1c]
	adds r5, r1, #2
	movs r3, #0x54
	adds r3, r3, r7
	mov sl, r3
	movs r4, #0
	str r4, [sp, #0x18]
	str r0, [sp, #0x20]
	ldrb r0, [r0]
	cmp r4, r0
	blo _08031E3C
	b _08031FB0
_08031E3C:
	ldr r1, [r7, #0x20]
	str r1, [sp, #0x14]
	ldr r0, _08031E48 @ =gSomeBlend
	ldr r2, _08031E4C @ =0x000121B0
	adds r1, r0, r2
	b _08031FA8
	.align 2, 0
_08031E48: .4byte gSomeBlend
_08031E4C: .4byte 0x000121B0
_08031E50:
	ldr r3, _08031E74 @ =0x000121B0
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #3
	ldr r1, _08031E78 @ =gUnknown_030038F0
	adds r0, r0, r1
	str r0, [sp, #0x1c]
	ldr r0, _08031E7C @ =gUnknown_02001008
	movs r1, #0
	ldrsb r1, [r5, r1]
	movs r4, #0
	ldrsh r0, [r0, r4]
	ldrb r2, [r5]
	cmp r1, r0
	blt _08031E80
	ldr r0, [sp, #0x44]
	ldrb r6, [r0, #1]
	b _08031E84
	.align 2, 0
_08031E74: .4byte 0x000121B0
_08031E78: .4byte gUnknown_030038F0
_08031E7C: .4byte gUnknown_02001008
_08031E80:
	ldr r1, [sp, #0x44]
	ldrb r6, [r1]
_08031E84:
	lsls r0, r2, #0x18
	asrs r0, r0, #8
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r0, #1
	ldrsb r0, [r5, r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r3, [r7, #0x3c]
	movs r2, #0xc
	ldrsh r1, [r3, r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08031EAA
	ldrh r4, [r3]
	ldrh r3, [r3, #2]
	b _08031ED4
_08031EAA:
	movs r4, #0
	ldrsh r0, [r3, r4]
	movs r2, #4
	ldrsh r1, [r3, r2]
	ldrh r2, [r3, #0xe]
	ldrh r3, [r3, #0xc]
	bl sub_08002E34
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r3, [r7, #0x3c]
	movs r1, #2
	ldrsh r0, [r3, r1]
	movs r2, #6
	ldrsh r1, [r3, r2]
	ldrh r2, [r3, #0xe]
	ldrh r3, [r3, #0xc]
	bl sub_08002E34
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08031ED4:
	mov r0, r8
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r2, r1, #0
	muls r2, r0, r2
	lsls r2, r2, #8
	mov r4, sb
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	muls r1, r0, r1
	lsls r1, r1, #8
	asrs r2, r2, #0x10
	ldr r3, [sp, #4]
	movs r4, #2
	ldrsh r0, [r3, r4]
	adds r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	ldr r0, [r5]
	lsrs r0, r0, #0x1e
	lsls r0, r0, #0xe
	orrs r2, r0
	asrs r1, r1, #0x10
	movs r4, #0
	ldrsh r0, [r3, r4]
	adds r1, r1, r0
	ldr r0, _08031F44 @ =0x000001FF
	ands r1, r0
	lsls r1, r1, #0x10
	orrs r2, r1
	ldrh r1, [r5, #2]
	movs r3, #0xf0
	lsls r3, r3, #6
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0x12
	orrs r2, r0
	ldr r4, [sp, #0x1c]
	str r2, [r4]
	lsls r0, r6, #0xa
	ldr r1, [sp, #8]
	orrs r0, r1
	ldr r2, [sp, #0xc]
	orrs r0, r2
	strh r0, [r4, #4]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08031F48
	movs r0, #0
	b _08031F52
	.align 2, 0
_08031F44: .4byte 0x000001FF
_08031F48:
	ldr r3, [sp, #0x10]
	lsls r0, r3, #0x10
	ldr r4, _08031FC0 @ =0xFF600000
	adds r0, r0, r4
	lsrs r0, r0, #0x10
_08031F52:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_08032DAC
	ldr r0, [r5]
	lsls r0, r0, #6
	lsrs r0, r0, #0x16
	lsls r0, r0, #5
	ldr r1, [sp, #0x14]
	adds r0, r1, r0
	mov r2, sl
	str r0, [r2]
	ldm r5!, {r1}
	lsrs r0, r1, #0x1e
	lsls r1, r1, #2
	lsrs r1, r1, #0x1e
	bl sub_08002760
	mov r3, sl
	strh r0, [r3, #4]
	ldr r4, [sp, #8]
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
	movs r0, #8
	add sl, r0
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x20]
	ldrb r1, [r1]
	cmp r2, r1
	bhs _08031FB0
	ldr r2, [r7, #0x20]
	str r2, [sp, #0x14]
	ldr r0, _08031FC4 @ =gSomeBlend
	ldr r3, _08031FC8 @ =0x000121B0
	adds r1, r0, r3
_08031FA8:
	ldrh r1, [r1]
	cmp r1, #0x7f
	bhi _08031FB0
	b _08031E50
_08031FB0:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031FC0: .4byte 0xFF600000
_08031FC4: .4byte gSomeBlend
_08031FC8: .4byte 0x000121B0

	thumb_func_start sub_08031FCC
sub_08031FCC: @ 0x08031FCC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #4]
	adds r6, r1, #0
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x38]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0xc]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, sp
	strh r1, [r0]
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x1c]
	ldrh r0, [r1]
	cmp r0, #4
	bls _08032002
	movs r0, #4
_08032002:
	mov sl, r0
	mov r2, sb
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x10
	mov sb, r0
	adds r4, r1, #2
	movs r7, #0
	mov r8, r7
	cmp r8, sl
	blo _08032018
	b _08032110
_08032018:
	ldr r0, _08032020 @ =gSomeBlend
	ldr r2, _08032024 @ =0x000121B0
	adds r1, r0, r2
	b _0803210A
	.align 2, 0
_08032020: .4byte gSomeBlend
_08032024: .4byte 0x000121B0
_08032028:
	movs r7, #0
	ldrsh r1, [r6, r7]
	movs r0, #2
	ldrsh r2, [r6, r0]
	adds r0, r4, #0
	bl sub_08035940
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080320E4
	ldr r1, _0803205C @ =gSceneObjCount
	ldrh r0, [r1]
	lsls r0, r0, #3
	ldr r1, _08032060 @ =gUnknown_030038F0
	adds r5, r0, r1
	ldr r0, _08032064 @ =gUnknown_02001008
	movs r1, #0
	ldrsb r1, [r4, r1]
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldrb r2, [r4]
	cmp r1, r0
	blt _08032068
	ldr r7, [sp, #0x30]
	ldrb r3, [r7, #1]
	b _0803206C
	.align 2, 0
_0803205C: .4byte gSceneObjCount
_08032060: .4byte gUnknown_030038F0
_08032064: .4byte gUnknown_02001008
_08032068:
	ldr r0, [sp, #0x30]
	ldrb r3, [r0]
_0803206C:
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	movs r1, #2
	ldrsh r0, [r6, r1]
	adds r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	ldr r0, [r4]
	lsrs r0, r0, #0x1e
	lsls r0, r0, #0xe
	orrs r2, r0
	movs r0, #1
	ldrsb r0, [r4, r0]
	movs r7, #0
	ldrsh r1, [r6, r7]
	adds r0, r0, r1
	ldr r1, _080320BC @ =0x000001FF
	ands r0, r1
	lsls r0, r0, #0x10
	orrs r2, r0
	ldrh r1, [r4, #2]
	movs r7, #0xf0
	lsls r7, r7, #6
	adds r0, r7, #0
	ands r0, r1
	lsls r0, r0, #0x12
	orrs r2, r0
	str r2, [r5]
	lsls r0, r3, #0xa
	ldr r1, [sp, #0xc]
	orrs r0, r1
	mov r2, sb
	orrs r0, r2
	strh r0, [r5, #4]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _080320C0
	movs r0, #0
	b _080320DA
	.align 2, 0
_080320BC: .4byte 0x000001FF
_080320C0:
	ldr r7, [sp, #8]
	lsls r0, r7, #0x10
	ldr r1, [sp, #4]
	adds r1, #0xbb
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldr r2, _08032120 @ =0xFF600000
	adds r0, r0, r2
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_080320DA:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r3, #0
	bl sub_08032DAC
_080320E4:
	ldm r4!, {r1}
	lsrs r0, r1, #0x1e
	lsls r1, r1, #2
	lsrs r1, r1, #0x1e
	bl sub_08002760
	ldr r7, [sp, #0xc]
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r8, sl
	bhs _08032110
	ldr r1, _08032124 @ =gSceneObjCount
_0803210A:
	ldrh r0, [r1]
	cmp r0, #0x7f
	bls _08032028
_08032110:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032120: .4byte 0xFF600000
_08032124: .4byte gSceneObjCount

	thumb_func_start sub_08032128
sub_08032128: @ 0x08032128
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r7, r0, #0
	mov r8, r1
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, sp
	strh r1, [r0]
	ldr r0, [r7, #0x1c]
	ldrh r0, [r0]
	movs r1, #4
	cmp r0, #4
	bhi _0803215E
	adds r1, r0, #0
_0803215E:
	adds r0, r7, #0
	adds r0, #0x90
	strb r1, [r0]
	ldr r2, [sp, #4]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	ldr r1, [r7, #0x1c]
	adds r4, r1, #2
	adds r6, r7, #0
	adds r6, #0x54
	movs r3, #0
	str r3, [sp, #0xc]
	str r0, [sp, #0x10]
	ldrb r5, [r0]
	cmp r3, r5
	blo _08032182
	b _080322A8
_08032182:
	ldr r0, [r7, #0x20]
	mov sb, r0
	ldr r0, _08032190 @ =gSomeBlend
	ldr r2, _08032194 @ =0x000121B0
	adds r1, r0, r2
	b _080322A0
	.align 2, 0
_08032190: .4byte gSomeBlend
_08032194: .4byte 0x000121B0
_08032198:
	mov r3, r8
	movs r5, #0
	ldrsh r1, [r3, r5]
	movs r0, #2
	ldrsh r2, [r3, r0]
	adds r0, r4, #0
	bl sub_08035940
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08032264
	ldr r1, _080321D0 @ =gSceneObjCount
	ldrh r0, [r1]
	lsls r0, r0, #3
	ldr r1, _080321D4 @ =gUnknown_030038F0
	adds r0, r0, r1
	mov ip, r0
	ldr r0, _080321D8 @ =gUnknown_02001008
	movs r1, #0
	ldrsb r1, [r4, r1]
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldrb r2, [r4]
	cmp r1, r0
	blt _080321DC
	ldr r5, [sp, #0x3c]
	ldrb r3, [r5, #1]
	b _080321E0
	.align 2, 0
_080321D0: .4byte gSceneObjCount
_080321D4: .4byte gUnknown_030038F0
_080321D8: .4byte gUnknown_02001008
_080321DC:
	ldr r0, [sp, #0x3c]
	ldrb r3, [r0]
_080321E0:
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	str r2, [sp, #0x14]
	mov r1, r8
	movs r2, #2
	ldrsh r0, [r1, r2]
	ldr r5, [sp, #0x14]
	adds r2, r5, r0
	movs r0, #0xff
	ands r2, r0
	ldr r0, [r4]
	lsrs r0, r0, #0x1e
	lsls r0, r0, #0xe
	orrs r2, r0
	movs r0, #1
	ldrsb r0, [r4, r0]
	movs r5, #0
	ldrsh r1, [r1, r5]
	adds r0, r0, r1
	ldr r1, _0803223C @ =0x000001FF
	ands r0, r1
	lsls r0, r0, #0x10
	orrs r2, r0
	ldrh r1, [r4, #2]
	movs r5, #0xf0
	lsls r5, r5, #6
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #0x12
	orrs r2, r0
	mov r0, ip
	str r2, [r0]
	lsls r0, r3, #0xa
	mov r1, sl
	orrs r0, r1
	ldr r2, [sp, #4]
	orrs r0, r2
	mov r5, ip
	strh r0, [r5, #4]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08032240
	movs r0, #0
	b _0803225A
	.align 2, 0
_0803223C: .4byte 0x000001FF
_08032240:
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	adds r1, r7, #0
	adds r1, #0xbb
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldr r2, _080322B8 @ =0xFF600000
	adds r0, r0, r2
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0803225A:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r3, #0
	bl sub_08032DAC
_08032264:
	ldr r0, [r4]
	lsls r0, r0, #6
	lsrs r0, r0, #0x16
	lsls r0, r0, #5
	add r0, sb
	str r0, [r6]
	ldm r4!, {r1}
	lsrs r0, r1, #0x1e
	lsls r1, r1, #2
	lsrs r1, r1, #0x1e
	bl sub_08002760
	strh r0, [r6, #4]
	add r0, sl
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [sp, #0xc]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	adds r6, #8
	ldr r3, [sp, #0x10]
	ldrb r3, [r3]
	cmp r0, r3
	bhs _080322A8
	ldr r5, [r7, #0x20]
	mov sb, r5
	ldr r1, _080322BC @ =gSceneObjCount
_080322A0:
	ldrh r0, [r1]
	cmp r0, #0x7f
	bhi _080322A8
	b _08032198
_080322A8:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080322B8: .4byte 0xFF600000
_080322BC: .4byte gSceneObjCount

	thumb_func_start sub_080322C0
sub_080322C0: @ 0x080322C0
	sub sp, #4
	ldr r1, [sp, #0xc]
	mov r0, sp
	strh r1, [r0]
	add sp, #4
	bx lr

	thumb_func_start sub_080322CC
sub_080322CC: @ 0x080322CC
	sub sp, #4
	ldr r1, [sp, #0xc]
	mov r0, sp
	strh r1, [r0]
	add sp, #4
	bx lr

	thumb_func_start sub_080322D8
sub_080322D8: @ 0x080322D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov r8, r0
	mov sb, r1
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0x40]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, sp
	strh r1, [r0]
	mov r1, r8
	ldr r0, [r1, #0x1c]
	ldrh r0, [r0]
	movs r1, #4
	cmp r0, #4
	bhi _08032310
	adds r1, r0, #0
_08032310:
	mov r0, r8
	adds r0, #0x90
	strb r1, [r0]
	ldr r2, [sp, #4]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	mov r3, r8
	ldr r1, [r3, #0x1c]
	adds r4, r1, #2
	mov r7, r8
	adds r7, #0x54
	movs r1, #0
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	ldrb r2, [r0]
	cmp r1, r2
	blo _08032336
	b _080324B4
_08032336:
	ldr r3, [r3, #0x20]
	str r3, [sp, #0xc]
	b _080324A6
_0803233C:
	ldr r3, _0803235C @ =0x000121B0
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #3
	ldr r1, _08032360 @ =gUnknown_030038F0
	adds r5, r0, r1
	ldr r0, _08032364 @ =gUnknown_02001008
	movs r1, #0
	ldrsb r1, [r4, r1]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	blt _08032368
	ldr r3, [sp, #0x38]
	ldrb r6, [r3, #1]
	b _0803236C
	.align 2, 0
_0803235C: .4byte 0x000121B0
_08032360: .4byte gUnknown_030038F0
_08032364: .4byte gUnknown_02001008
_08032368:
	ldr r0, [sp, #0x38]
	ldrb r6, [r0]
_0803236C:
	mov r2, sp
	adds r2, #2
	movs r0, #0
	strh r0, [r2]
	mov r0, r8
	adds r0, #0x8b
	ldrb r0, [r0]
	lsrs r1, r0, #3
	movs r3, #7
	ands r3, r0
	cmp r1, #0xc
	bhi _0803238C
	cmp r3, #0
	beq _0803238C
	cmp r3, #4
	bne _08032390
_0803238C:
	movs r0, #1
	strh r0, [r2]
_08032390:
	ldrh r0, [r2]
	cmp r0, #0
	beq _080323FC
	ldr r1, [r4]
	lsrs r0, r1, #0x1e
	lsls r1, r1, #2
	lsrs r1, r1, #0x1e
	bl sub_0800279C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #1
	ldrsb r1, [r4, r1]
	rsbs r1, r1, #0
	subs r1, r1, r0
	movs r2, #0
	ldrsb r2, [r4, r2]
	mov ip, r2
	mov r3, sb
	movs r2, #2
	ldrsh r0, [r3, r2]
	mov r3, ip
	adds r2, r3, r0
	movs r0, #0xff
	ands r2, r0
	ldr r0, [r4]
	lsrs r0, r0, #0x1e
	lsls r0, r0, #0xe
	orrs r2, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov ip, r1
	mov r1, sb
	movs r3, #0
	ldrsh r0, [r1, r3]
	mov r3, ip
	adds r1, r3, r0
	ldr r0, _080323F8 @ =0x000001FF
	ands r1, r0
	lsls r1, r1, #0x10
	orrs r2, r1
	ldrh r1, [r4, #2]
	movs r3, #0xf0
	lsls r3, r3, #6
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0x12
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x15
	eors r2, r0
	b _08032436
	.align 2, 0
_080323F8: .4byte 0x000001FF
_080323FC:
	movs r2, #0
	ldrsb r2, [r4, r2]
	mov r1, sb
	movs r3, #2
	ldrsh r0, [r1, r3]
	adds r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	ldr r0, [r4]
	lsrs r0, r0, #0x1e
	lsls r0, r0, #0xe
	orrs r2, r0
	movs r0, #1
	ldrsb r0, [r4, r0]
	movs r3, #0
	ldrsh r1, [r1, r3]
	mov ip, r1
	add r0, ip
	ldr r1, _08032450 @ =0x000001FF
	ands r0, r1
	lsls r0, r0, #0x10
	orrs r2, r0
	ldrh r1, [r4, #2]
	movs r3, #0xf0
	lsls r3, r3, #6
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0x12
	orrs r2, r0
_08032436:
	str r2, [r5]
	lsls r0, r6, #0xa
	mov r1, sl
	orrs r0, r1
	ldr r2, [sp, #4]
	orrs r0, r2
	strh r0, [r5, #4]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08032454
	movs r0, #0
	b _0803245E
	.align 2, 0
_08032450: .4byte 0x000001FF
_08032454:
	ldr r3, [sp, #8]
	lsls r0, r3, #0x10
	ldr r1, _080324C4 @ =0xFF600000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
_0803245E:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_08032DAC
	ldr r0, [r4]
	lsls r0, r0, #6
	lsrs r0, r0, #0x16
	lsls r0, r0, #5
	ldr r2, [sp, #0xc]
	adds r0, r2, r0
	str r0, [r7]
	ldm r4!, {r1}
	lsrs r0, r1, #0x1e
	lsls r1, r1, #2
	lsrs r1, r1, #0x1e
	bl sub_08002760
	strh r0, [r7, #4]
	add r0, sl
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [sp, #0x10]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	adds r7, #8
	ldr r3, [sp, #0x14]
	ldrb r3, [r3]
	cmp r0, r3
	bhs _080324B4
	mov r0, r8
	ldr r0, [r0, #0x20]
	str r0, [sp, #0xc]
_080324A6:
	ldr r0, _080324C8 @ =gSomeBlend
	ldr r2, _080324CC @ =0x000121B0
	adds r1, r0, r2
	ldrh r1, [r1]
	cmp r1, #0x7f
	bhi _080324B4
	b _0803233C
_080324B4:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080324C4: .4byte 0xFF600000
_080324C8: .4byte gSomeBlend
_080324CC: .4byte 0x000121B0

	thumb_func_start sub_080324D0
sub_080324D0: @ 0x080324D0
	push {r4, r5, r6, r7, lr}
	adds r5, r2, #0
	ldr r2, [sp, #0x14]
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, _0803252C @ =gSomeBlend
	ldr r4, _08032530 @ =0x000121B0
	adds r1, r0, r4
	ldrh r0, [r1]
	cmp r0, #0x7f
	bhi _08032526
	adds r4, r0, #0
	lsls r4, r4, #3
	ldr r0, _08032534 @ =gUnknown_030038F0
	adds r4, r4, r0
	ldrb r1, [r5]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xff
	ands r2, r0
	strh r2, [r4]
	lsls r2, r3, #0x17
	lsrs r2, r2, #0x17
	ldr r5, _08032538 @ =0xFFFF8000
	adds r3, r5, #0
	orrs r2, r3
	strh r2, [r4, #2]
	lsls r2, r1, #0xa
	orrs r2, r7
	lsls r3, r6, #0xc
	orrs r2, r3
	strh r2, [r4, #4]
	subs r0, #0xa0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08032DAC
_08032526:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803252C: .4byte gSomeBlend
_08032530: .4byte 0x000121B0
_08032534: .4byte gUnknown_030038F0
_08032538: .4byte 0xFFFF8000

	thumb_func_start sub_0803253C
sub_0803253C: @ 0x0803253C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #8]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0xc]
	ldr r2, _08032580 @ =gSomeBlend
	ldr r1, _08032584 @ =0x000035BA
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	mov sb, r2
	cmp r0, #0
	beq _0803256C
	b _08032738
_0803256C:
	adds r0, r6, #0
	adds r0, #0x48
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08032588
	adds r5, r6, #0
	adds r5, #0x44
	b _080325FC
	.align 2, 0
_08032580: .4byte gSomeBlend
_08032584: .4byte 0x000035BA
_08032588:
	adds r0, r6, #0
	adds r0, #0x50
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08032598
	b _08032738
_08032598:
	ldr r1, _08032624 @ =gGame
	ldr r2, _08032628 @ =0x0000829B
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #6
	bne _080325A6
	b _08032738
_080325A6:
	ldrb r0, [r1]
	cmp r0, #5
	bgt _080325B2
	cmp r0, #3
	blt _080325B2
	b _08032738
_080325B2:
	ldr r4, _0803262C @ =0x00008494
	adds r0, r1, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080325E2
	ldr r2, _08032630 @ =0x00009486
	adds r0, r1, r2
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080325E2
	add r1, sp, #4
	ldr r0, _08032634 @ =0x04000200
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r1, #0
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080325E2
	b _08032738
_080325E2:
	adds r5, r6, #0
	adds r5, #0x4c
	adds r1, r6, #0
	adds r1, #0xb9
	movs r0, #3
	ldrb r1, [r1]
	ands r1, r0
	ldrb r2, [r5, #5]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #5]
_080325FC:
	ldrb r0, [r5, #4]
	lsrs r0, r0, #3
	cmp r0, #0x1f
	bne _0803263C
	ldr r4, _08032638 @ =0x000121A4
	add r4, sb
	ldr r0, [r4]
	bl sub_08002C4C
	mov sl, r0
	ldr r0, [r4]
	bl sub_08002C54
	adds r4, r0, #0
	movs r7, #0
	movs r0, #0x80
	lsls r0, r0, #2
	mov r8, r0
	movs r6, #8
	b _080326AE
	.align 2, 0
_08032624: .4byte gGame
_08032628: .4byte 0x0000829B
_0803262C: .4byte 0x00008494
_08032630: .4byte 0x00009486
_08032634: .4byte 0x04000200
_08032638: .4byte 0x000121A4
_0803263C:
	ldr r4, _08032694 @ =0x000121A0
	add r4, sb
	ldr r0, [r4]
	bl sub_08002C4C
	mov sl, r0
	ldr r0, [r4]
	bl sub_08002C54
	adds r4, r0, #0
	ldrb r0, [r5, #4]
	lsrs r7, r0, #3
	movs r1, #0xc0
	lsls r1, r1, #2
	mov r8, r1
	ldr r0, _08032698 @ =0x0000566C
	add r0, sb
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803266E
	movs r2, #0xd0
	lsls r2, r2, #2
	mov r8, r2
_0803266E:
	adds r0, r6, #0
	adds r0, #0xa8
	ldrh r1, [r0]
	subs r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0
	bne _08032682
	subs r0, r1, #4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_08032682:
	cmp r1, #7
	bls _080326A0
	ldr r2, _0803269C @ =0x0000FFEC
	adds r0, r2, #0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _080326A2
	.align 2, 0
_08032694: .4byte 0x000121A0
_08032698: .4byte 0x0000566C
_0803269C: .4byte 0x0000FFEC
_080326A0:
	ldr r6, _080326D4 @ =0x0000FFEC
_080326A2:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r5, #2]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_080326AE:
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08002BA4
	bl sub_08002BF4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r0, #0
	ldrh r0, [r5]
	cmp r0, r2
	blo _080326F8
	ldrb r1, [r5, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080326D8
	movs r0, #0
	b _080326F6
	.align 2, 0
_080326D4: .4byte 0x0000FFEC
_080326D8:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080326F4
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	adds r1, #2
	ands r0, r1
	strb r0, [r5, #4]
	b _08032738
_080326F4:
	subs r0, r2, #1
_080326F6:
	strh r0, [r5]
_080326F8:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_08002B1C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sl
	bl sub_08002ABC
	ldrb r2, [r5, #5]
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1e
	ldr r4, [sp, #8]
	lsls r3, r4, #0x10
	asrs r3, r3, #0x10
	ldr r4, [sp, #0xc]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r4, r6, #0x10
	asrs r4, r4, #0x10
	adds r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r1, [sp]
	mov r1, r8
	bl sub_08032748
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
_08032738:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08032748
sub_08032748: @ 0x08032748
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sl, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r4, [sp, #4]
	adds r4, #2
	movs r5, #0
	ldr r0, [sp, #4]
	ldrh r0, [r0]
	cmp r5, r0
	bhs _08032802
	ldr r0, _08032814 @ =gSomeBlend
	ldr r2, _08032818 @ =0x000121B0
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0x7f
	bhi _08032802
	mov r8, r1
_0803278A:
	mov r7, r8
	ldrh r3, [r7]
	lsls r3, r3, #3
	ldr r0, _0803281C @ =gUnknown_030038F0
	adds r3, r3, r0
	movs r2, #0
	ldrsb r2, [r4, r2]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	ldrb r0, [r4, #1]
	lsrs r0, r0, #6
	lsls r0, r0, #0xe
	orrs r2, r0
	movs r1, #2
	ldrsb r1, [r4, r1]
	mov r7, sl
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	ldr r0, _08032820 @ =0x000001FF
	ands r1, r0
	lsls r1, r1, #0x10
	orrs r2, r1
	ldrb r0, [r4, #3]
	lsrs r0, r0, #1
	lsls r0, r0, #0x19
	orrs r2, r0
	str r2, [r3]
	ldrh r1, [r4, #4]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldr r0, [sp]
	adds r1, r0, r1
	lsls r0, r6, #0xa
	orrs r1, r0
	ldrb r0, [r4, #5]
	lsrs r0, r0, #4
	lsls r0, r0, #0xc
	orrs r1, r0
	strh r1, [r3, #4]
	movs r0, #0
	adds r1, r6, #0
	bl sub_08032DAC
	adds r4, #6
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r1, [sp, #4]
	ldrh r1, [r1]
	cmp r5, r1
	bhs _08032802
	mov r2, r8
	ldrh r0, [r2]
	cmp r0, #0x7f
	bls _0803278A
_08032802:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032814: .4byte gSomeBlend
_08032818: .4byte 0x000121B0
_0803281C: .4byte gUnknown_030038F0
_08032820: .4byte 0x000001FF

	thumb_func_start sub_08032824
sub_08032824: @ 0x08032824
	push {r4, r5, lr}
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r0, #0xc7
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08032878
	mov r0, ip
	adds r0, #0xc9
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #3
	beq _08032878
	cmp r0, #1
	bne _0803285C
	ldr r0, _08032854 @ =gSomeBlend
	ldr r1, _08032858 @ =0x000121A8
	b _08032860
	.align 2, 0
_08032854: .4byte gSomeBlend
_08032858: .4byte 0x000121A8
_0803285C:
	ldr r0, _08032880 @ =gSomeBlend
	ldr r1, _08032884 @ =0x000121AC
_08032860:
	adds r0, r0, r1
	ldr r4, [r0]
	mov r0, ip
	adds r0, #0xb8
	ldrb r1, [r0]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	lsls r3, r5, #0x10
	asrs r3, r3, #0x10
	adds r0, r4, #0
	bl sub_08032888
_08032878:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08032880: .4byte gSomeBlend
_08032884: .4byte 0x000121AC

	thumb_func_start sub_08032888
sub_08032888: @ 0x08032888
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	adds r4, r0, #0
	adds r4, #2
	movs r5, #0
	ldrh r0, [r0]
	cmp r5, r0
	bhs _08032932
	ldr r0, _08032944 @ =gSomeBlend
	ldr r2, _08032948 @ =0x000121B0
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0x7f
	bhi _08032932
	mov r8, r1
_080328C0:
	mov r7, r8
	ldrh r3, [r7]
	lsls r3, r3, #3
	ldr r0, _0803294C @ =gUnknown_030038F0
	adds r3, r3, r0
	movs r2, #0
	ldrsb r2, [r4, r2]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	ldrb r0, [r4, #1]
	lsrs r0, r0, #6
	lsls r0, r0, #0xe
	orrs r2, r0
	movs r1, #2
	ldrsb r1, [r4, r1]
	mov r7, sl
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	ldr r0, _08032950 @ =0x000001FF
	ands r1, r0
	lsls r1, r1, #0x10
	orrs r2, r1
	ldrb r0, [r4, #3]
	lsrs r0, r0, #1
	lsls r0, r0, #0x19
	orrs r2, r0
	str r2, [r3]
	ldrh r0, [r4, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r0, r1
	lsls r1, r6, #0xa
	orrs r0, r1
	strh r0, [r3, #4]
	ldr r0, _08032954 @ =0xFFFF8000
	adds r1, r6, #0
	bl sub_08032DAC
	adds r4, #6
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, [sp]
	ldrh r2, [r2]
	cmp r5, r2
	bhs _08032932
	mov r7, r8
	ldrh r0, [r7]
	cmp r0, #0x7f
	bls _080328C0
_08032932:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032944: .4byte gSomeBlend
_08032948: .4byte 0x000121B0
_0803294C: .4byte gUnknown_030038F0
_08032950: .4byte 0x000001FF
_08032954: .4byte 0xFFFF8000

	thumb_func_start sub_08032958
sub_08032958: @ 0x08032958
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	ldr r0, [sp, #0x2c]
	ldr r4, [sp, #0x30]
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r4, r4, #0x10
	lsrs r3, r4, #0x10
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x10
	str r2, [sp]
	mov r4, sb
	adds r4, #2
	movs r6, #0
	mov r0, sb
	ldrh r0, [r0]
	cmp r6, r0
	bhs _08032A24
	ldr r0, _08032A34 @ =gSomeBlend
	ldr r2, _08032A38 @ =0x000121B0
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0x7f
	bhi _08032A24
	mov sl, r1
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
_080329A6:
	mov r7, sl
	ldrh r3, [r7]
	lsls r3, r3, #3
	ldr r0, _08032A3C @ =gUnknown_030038F0
	adds r3, r3, r0
	movs r2, #0
	ldrsb r2, [r4, r2]
	ldr r0, [sp, #8]
	adds r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	ldrb r0, [r4, #1]
	lsrs r0, r0, #6
	lsls r0, r0, #0xe
	orrs r2, r0
	movs r1, #2
	ldrsb r1, [r4, r1]
	ldr r7, [sp, #4]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	ldr r0, _08032A40 @ =0x000001FF
	ands r1, r0
	lsls r1, r1, #0x10
	orrs r2, r1
	ldrb r0, [r4, #3]
	lsrs r0, r0, #1
	lsls r0, r0, #0x19
	orrs r2, r0
	str r2, [r3]
	mov r1, r8
	lsls r0, r1, #0xa
	orrs r0, r5
	ldr r2, [sp]
	orrs r0, r2
	strh r0, [r3, #4]
	ldr r0, [sp, #8]
	subs r0, #0xa0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08032DAC
	ldrb r0, [r4, #1]
	lsrs r0, r0, #6
	ldrb r1, [r4, #3]
	lsrs r1, r1, #6
	bl sub_08002760
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #6
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r7, sb
	ldrh r7, [r7]
	cmp r6, r7
	bhs _08032A24
	mov r1, sl
	ldrh r0, [r1]
	cmp r0, #0x7f
	bls _080329A6
_08032A24:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032A34: .4byte gSomeBlend
_08032A38: .4byte 0x000121B0
_08032A3C: .4byte gUnknown_030038F0
_08032A40: .4byte 0x000001FF

	thumb_func_start sub_08032A44
sub_08032A44: @ 0x08032A44
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r2, r0, #0
	adds r7, r1, #0
	ldrh r0, [r2]
	movs r1, #4
	cmp r0, #4
	bhi _08032A58
	adds r1, r0, #0
_08032A58:
	adds r0, r7, #0
	adds r0, #0x90
	strb r1, [r0]
	adds r2, #2
	mov r8, r2
	adds r4, r7, #0
	adds r4, #0x54
	movs r5, #0
	adds r6, r0, #0
	b _08032A96
_08032A6C:
	ldr r2, [r7, #0x20]
	mov r0, r8
	adds r0, #4
	mov r8, r0
	subs r0, #4
	ldm r0!, {r1}
	lsls r0, r1, #6
	lsrs r0, r0, #0x16
	lsls r0, r0, #5
	adds r2, r2, r0
	str r2, [r4]
	lsrs r0, r1, #0x1e
	lsls r1, r1, #2
	lsrs r1, r1, #0x1e
	bl sub_08002760
	strh r0, [r4, #4]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #8
_08032A96:
	ldrb r0, [r6]
	cmp r5, r0
	blo _08032A6C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08032AA8
sub_08032AA8: @ 0x08032AA8
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x88
	ldr r2, _08032AD8 @ =0xFFFFFD30
	adds r0, r2, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08036E70
	adds r2, r4, #0
	adds r2, #0x90
	movs r1, #1
	strb r1, [r2]
	str r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x58
	movs r0, #9
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08032AD8: .4byte 0xFFFFFD30

	thumb_func_start sub_08032ADC
sub_08032ADC: @ 0x08032ADC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r2, r0, #0
	adds r3, r1, #0
	ldrh r0, [r2]
	movs r1, #2
	cmp r0, #2
	bhi _08032AEE
	adds r1, r0, #0
_08032AEE:
	adds r0, r3, #0
	adds r0, #0x32
	strb r1, [r0]
	adds r4, r2, #2
	adds r5, r3, #0
	movs r6, #0
	adds r7, r0, #0
	b _08032B26
_08032AFE:
	ldrh r1, [r4, #4]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x11
	ldr r0, [r3, #0x24]
	adds r0, r0, r1
	str r0, [r5]
	ldrb r0, [r4, #1]
	lsrs r0, r0, #6
	ldrb r1, [r4, #3]
	lsrs r1, r1, #6
	str r3, [sp]
	bl sub_08002760
	strh r0, [r5, #4]
	adds r4, #6
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r5, #8
	ldr r3, [sp]
_08032B26:
	ldrb r0, [r7]
	cmp r6, r0
	blo _08032AFE
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08032B34
sub_08032B34: @ 0x08032B34
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r1, _08032B60 @ =gGame
	ldr r2, _08032B64 @ =0x00008496
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	adds r4, r1, #0
	cmp r0, #0
	bge _08032B4A
	b _08032CB8
_08032B4A:
	adds r2, r3, #0
	adds r2, #0xca
	ldrb r1, [r2]
	lsls r0, r1, #0x1b
	cmp r0, #0
	bge _08032B68
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _08032CB8
	.align 2, 0
_08032B60: .4byte gGame
_08032B64: .4byte 0x00008496
_08032B68:
	ldr r5, _08032C04 @ =gSomeBlend
	ldr r1, _08032C08 @ =0x000035BA
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08032B7C
	b _08032CB8
_08032B7C:
	ldr r1, _08032C0C @ =0x00003668
	adds r0, r5, r1
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08032B8C
	b _08032CB8
_08032B8C:
	ldr r2, _08032C10 @ =0x00008494
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08032BAE
	ldr r1, _08032C14 @ =0x0000845A
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #9
	bne _08032BAE
	subs r2, #0x38
	adds r0, r4, r2
	ldrh r0, [r0]
	cmp r0, #0x14
	bne _08032BAE
	b _08032CB8
_08032BAE:
	ldrb r0, [r4]
	cmp r0, #5
	bne _08032BB6
	b _08032CB8
_08032BB6:
	cmp r0, #5
	blt _08032BDC
	cmp r0, #9
	bgt _08032BDC
	cmp r0, #8
	blt _08032BDC
	adds r0, r3, #0
	adds r0, #0x85
	ldrb r1, [r0]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08032CB8
	cmp r1, #4
	bls _08032BDC
	ldr r0, [r3, #0x34]
	cmp r0, #0
	beq _08032CB8
_08032BDC:
	adds r2, r3, #0
	adds r2, #0x8e
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	ble _08032C2A
	cmp r0, #4
	ble _08032C1C
	adds r1, r3, #0
	adds r1, #0x92
	ldrh r3, [r1]
	adds r2, r0, #0
	movs r0, #6
	subs r0, r0, r2
	cmp r3, r0
	blt _08032CB0
	ldr r4, _08032C18 @ =0x0000FFFA
	adds r0, r2, r4
	adds r0, r3, r0
	b _08032CB6
	.align 2, 0
_08032C04: .4byte gSomeBlend
_08032C08: .4byte 0x000035BA
_08032C0C: .4byte 0x00003668
_08032C10: .4byte 0x00008494
_08032C14: .4byte 0x0000845A
_08032C18: .4byte 0x0000FFFA
_08032C1C:
	adds r1, r3, #0
	adds r1, #0x92
	movs r0, #0
	ldrsb r0, [r2, r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	b _08032CB6
_08032C2A:
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08032C88
	cmp r1, r0
	bgt _08032C42
	subs r0, #1
	cmp r1, r0
	beq _08032C98
	b _08032CB8
_08032C42:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08032C6C
	adds r0, #1
	cmp r1, r0
	bne _08032CB8
	ldr r1, _08032C68 @ =0x00009D10
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08032CB8
	adds r1, r3, #0
	adds r1, #0x92
	ldrh r0, [r1]
	adds r0, #1
	b _08032CB6
	.align 2, 0
_08032C68: .4byte 0x00009D10
_08032C6C:
	ldr r2, _08032C84 @ =0x00009D10
	adds r0, r4, r2
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08032CB8
	adds r1, r3, #0
	adds r1, #0x92
	ldrh r0, [r1]
	adds r0, #1
	b _08032CB6
	.align 2, 0
_08032C84: .4byte 0x00009D10
_08032C88:
	ldr r1, _08032C94 @ =0x00009D10
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, #1
	b _08032CA0
	.align 2, 0
_08032C94: .4byte 0x00009D10
_08032C98:
	ldr r2, _08032CC0 @ =0x00009D10
	adds r0, r4, r2
	ldr r0, [r0]
	movs r1, #3
_08032CA0:
	ands r0, r1
	cmp r0, #0
	bne _08032CB8
	adds r1, r3, #0
	adds r1, #0x92
	ldrh r0, [r1]
	cmp r0, #0
	bne _08032CB4
_08032CB0:
	ldr r0, _08032CC4 @ =gUnknown_02001002
	ldrh r0, [r0]
_08032CB4:
	subs r0, #1
_08032CB6:
	strh r0, [r1]
_08032CB8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08032CC0: .4byte 0x00009D10
_08032CC4: .4byte gUnknown_02001002

	thumb_func_start sub_08032CC8
sub_08032CC8: @ 0x08032CC8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r0, #0x91
	ldrb r0, [r0]
	bl get_obj_direct
	adds r5, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08032D6A
	ldr r0, [r5, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _08032D6A
	adds r0, r5, #0
	adds r0, #0x8b
	ldrb r0, [r0]
	lsrs r4, r0, #3
	cmp r4, #0xc
	bls _08032D00
	adds r0, r6, #0
	adds r0, #0x8b
	strb r4, [r0]
	b _08032D18
_08032D00:
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08036CA0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r4, #3
	adds r1, r1, r0
	adds r2, r6, #0
	adds r2, #0x8b
	strb r1, [r2]
_08032D18:
	adds r1, r6, #0
	adds r1, #0x8c
	ldr r0, _08032D78 @ =0x0000FFFF
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x92
	ldrh r0, [r0]
	adds r1, #6
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0xae
	ldrh r0, [r0]
	adds r1, #0x1c
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0xbf
	ldrb r1, [r0]
	lsrs r1, r1, #7
	adds r3, r6, #0
	adds r3, #0xbf
	lsls r1, r1, #7
	ldrb r2, [r3]
	movs r0, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	mov r4, sp
	adds r0, r5, #0
	mov r1, sp
	bl sub_08036BEC
	ldr r1, _08032D7C @ =gGame
	ldr r0, _08032D80 @ =0x000067C0
	adds r1, r1, r0
	ldrh r0, [r4, #2]
	ldrh r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bls _08032D84
_08032D6A:
	adds r0, r6, #0
	adds r0, #0xc7
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _08032DA2
	.align 2, 0
_08032D78: .4byte 0x0000FFFF
_08032D7C: .4byte gGame
_08032D80: .4byte 0x000067C0
_08032D84:
	subs r2, r1, r0
	strh r2, [r4, #2]
	adds r3, r6, #0
	adds r3, #0xc7
	ldrb r1, [r3]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #4
	strh r0, [r6]
	lsls r2, r2, #4
	strh r2, [r6, #2]
_08032DA2:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08032DAC
sub_08032DAC: @ 0x08032DAC
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r0, _08032DE4 @ =gSomeBlend
	ldr r1, _08032DE8 @ =0x000121B0
	adds r2, r0, r1
	ldrh r1, [r2]
	ldr r5, _08032DEC @ =0x000121B2
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r0, r1, r0
	cmp r0, #0x7f
	bgt _08032DDE
	lsls r0, r1, #2
	ldr r1, _08032DF0 @ =gSceneObjBuffer
	adds r0, r0, r1
	strh r4, [r0]
	strb r3, [r0, #2]
	ldrh r1, [r2]
	strb r1, [r0, #3]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
_08032DDE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08032DE4: .4byte gSomeBlend
_08032DE8: .4byte 0x000121B0
_08032DEC: .4byte 0x000121B2
_08032DF0: .4byte gSceneObjBuffer

	thumb_func_start sub_08032DF4
sub_08032DF4: @ 0x08032DF4
	push {lr}
	ldr r0, _08032E14 @ =gSomeBlend
	ldr r2, _08032E18 @ =0x000121B0
	adds r1, r0, r2
	ldrh r1, [r1]
	ldr r3, _08032E1C @ =0x000121B2
	adds r2, r0, r3
	ldrh r0, [r2]
	adds r1, r1, r0
	cmp r1, #0x7f
	bgt _08032E0E
	adds r0, #1
	strh r0, [r2]
_08032E0E:
	pop {r0}
	bx r0
	.align 2, 0
_08032E14: .4byte gSomeBlend
_08032E18: .4byte 0x000121B0
_08032E1C: .4byte 0x000121B2

	thumb_func_start sub_08032E20
sub_08032E20: @ 0x08032E20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r4, [sp, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	mov r0, sp
	strh r3, [r0]
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	ldr r1, _08032E90 @ =gSomeBlend
	ldr r2, _08032E94 @ =0x000121B0
	adds r0, r1, r2
	ldrh r0, [r0]
	mov sl, r1
	cmp r0, #0
	beq _08032EC6
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r4, #0
	cmp r4, r5
	bhs _08032EBC
	ldr r7, _08032E98 @ =gUnknown_030038F0
	mov sb, r7
	ldr r0, _08032E9C @ =0x00011DA0
	add r0, sl
	mov r8, r0
_08032E6A:
	lsls r0, r2, #3
	mov r1, sb
	adds r3, r0, r1
	add r0, r8
	mov r7, ip
	strh r7, [r0]
	mov r1, sp
	ldrh r1, [r1, #4]
	strh r1, [r0, #2]
	strh r6, [r0, #4]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08032EA0
	ldrh r0, [r3]
	movs r7, #0xc0
	lsls r7, r7, #2
	b _08032EA6
	.align 2, 0
_08032E90: .4byte gSomeBlend
_08032E94: .4byte 0x000121B0
_08032E98: .4byte gUnknown_030038F0
_08032E9C: .4byte 0x00011DA0
_08032EA0:
	ldrh r0, [r3]
	movs r7, #0x80
	lsls r7, r7, #1
_08032EA6:
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r3]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	subs r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r4, r5
	blo _08032E6A
_08032EBC:
	ldr r1, _08032ED8 @ =0x000121B4
	add r1, sl
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_08032EC6:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032ED8: .4byte 0x000121B4

	thumb_func_start sub_08032EDC
sub_08032EDC: @ 0x08032EDC
	push {r4, r5, lr}
	ldr r4, _08032F40 @ =gSomeBlend
	ldr r0, _08032F44 @ =0x000121B6
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0xfe
	bl sub_08036DF4
	ldr r2, _08032F48 @ =0x000121A0
	adds r1, r4, r2
	str r0, [r1]
	movs r0, #0xa6
	bl sub_08036DF4
	adds r5, r0, #0
	bl sub_08002C4C
	movs r1, #2
	bl sub_08002ABC
	ldr r2, _08032F4C @ =0x000121A8
	adds r1, r4, r2
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08002C4C
	movs r1, #1
	bl sub_08002ABC
	ldr r2, _08032F50 @ =0x000121AC
	adds r1, r4, r2
	str r0, [r1]
	ldr r0, _08032F54 @ =gUnknown_09AF3790
	movs r1, #0x21
	bl sub_0800289C
	ldr r1, _08032F58 @ =0x000121A4
	adds r4, r4, r1
	str r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08032F40: .4byte gSomeBlend
_08032F44: .4byte 0x000121B6
_08032F48: .4byte 0x000121A0
_08032F4C: .4byte 0x000121A8
_08032F50: .4byte 0x000121AC
_08032F54: .4byte gUnknown_09AF3790
_08032F58: .4byte 0x000121A4

	thumb_func_start sub_08032F5C
sub_08032F5C: @ 0x08032F5C
	push {r4, lr}
	ldr r0, _08032F7C @ =sub_0803D59C
	ldr r1, _08032F80 @ =gUnknown_03004C14
	movs r4, #0x80
	lsls r4, r4, #1
	adds r2, r4, #0
	bl sub_08001A14
	ldr r0, _08032F84 @ =sub_803D5EC
	ldr r1, _08032F88 @ =gUnknown_03004D14
	adds r2, r4, #0
	bl sub_08001A14
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08032F7C: .4byte sub_0803D59C_start
_08032F80: .4byte gUnknown_03004C14
_08032F84: .4byte sub_0803D5EC_start
_08032F88: .4byte gUnknown_03004D14

	thumb_func_start sub_08032F8C
sub_08032F8C: @ 0x08032F8C
	ldr r2, _08032FAC @ =gSomeBlend
	ldr r1, _08032FB0 @ =0x00002C9A
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r1, #0
	strh r1, [r0]
	ldr r3, _08032FB4 @ =0x000121B0
	adds r0, r2, r3
	strh r1, [r0]
	adds r3, #2
	adds r0, r2, r3
	strh r1, [r0]
	ldr r0, _08032FB8 @ =0x000121B4
	adds r2, r2, r0
	strh r1, [r2]
	bx lr
	.align 2, 0
_08032FAC: .4byte gSomeBlend
_08032FB0: .4byte 0x00002C9A
_08032FB4: .4byte 0x000121B0
_08032FB8: .4byte 0x000121B4

	thumb_func_start update_oam
update_oam: @ 0x08032FBC
	push {r4, r5, r6, r7, lr}
	ldr r2, _08032FF4 @ =gSomeBlend
	ldr r1, _08032FF8 @ =0x000121B6
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	bne _080330C8
	ldr r2, _08032FFC @ =0x0000566C
	adds r0, r5, r2
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08032FE4
	bl sub_0803327C
_08032FE4:
	ldr r3, _08033000 @ =0x000121B4
	adds r0, r5, r3
	ldrh r0, [r0]
	cmp r0, #0
	beq _08033004
	bl sub_080330F0
	b _080330C8
	.align 2, 0
_08032FF4: .4byte gSomeBlend
_08032FF8: .4byte 0x000121B6
_08032FFC: .4byte 0x0000566C
_08033000: .4byte 0x000121B4
_08033004:
	ldr r2, _080330D0 @ =gOAMObjBuffer
	ldr r1, _080330D4 @ =gMenuObjBuffer
	movs r3, #0
	ldr r4, _080330D8 @ =0x000121B2
	adds r0, r5, r4
	ldr r6, _080330DC @ =gSceneObjBuffer
	ldrh r4, [r0]
	cmp r3, r4
	bhs _08033038
	adds r4, r0, #0
_08033018:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #2]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #4]
	strh r0, [r2]
	adds r2, #4
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r1, #8
	ldrh r0, [r4]
	cmp r3, r0
	blo _08033018
_08033038:
	adds r4, r6, #0
	movs r3, #0
	ldr r1, _080330E0 @ =0x000121B0
	adds r0, r5, r1
	ldrh r1, [r0]
	cmp r3, r1
	bhs _08033070
	ldr r7, _080330E4 @ =gUnknown_030038F0
	adds r6, r0, #0
_0803304A:
	ldrb r1, [r4, #3]
	lsls r1, r1, #3
	adds r1, r1, r7
	ldrh r0, [r1]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #2]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #4]
	strh r0, [r2]
	adds r2, #4
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r4, #4
	ldrh r0, [r6]
	cmp r3, r0
	blo _0803304A
_08033070:
	ldr r3, _080330E0 @ =0x000121B0
	adds r1, r5, r3
	ldr r4, _080330D8 @ =0x000121B2
	adds r0, r5, r4
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x7f
	bhi _0803309A
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r0, #0
_0803308C:
	strh r1, [r2]
	adds r2, #8
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x7f
	bls _0803308C
_0803309A:
	ldr r1, _080330E0 @ =0x000121B0
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	ldr r2, _080330D8 @ =0x000121B2
	adds r0, r5, r2
	strh r1, [r0]
	ldr r3, _080330E8 @ =0x000121B4
	adds r0, r5, r3
	strh r1, [r0]
	ldr r4, _080330EC @ =0x000121B6
	adds r2, r5, r4
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080330C8
	movs r0, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
_080330C8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080330D0: .4byte gOAMObjBuffer
_080330D4: .4byte gMenuObjBuffer
_080330D8: .4byte 0x000121B2
_080330DC: .4byte gSceneObjBuffer
_080330E0: .4byte 0x000121B0
_080330E4: .4byte gUnknown_030038F0
_080330E8: .4byte 0x000121B4
_080330EC: .4byte 0x000121B6

	thumb_func_start sub_080330F0
sub_080330F0: @ 0x080330F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r5, _08033110 @ =gOAMObjBuffer
	adds r0, r5, #6
	mov r8, r0
	ldr r2, _08033114 @ =gMenuObjBuffer
	movs r6, #0
	ldr r0, _08033118 @ =gSomeBlend
	ldr r3, _0803311C @ =0x000121B2
	adds r1, r0, r3
	ldr r3, _08033120 @ =gSceneObjBuffer
	b _0803313E
	.align 2, 0
_08033110: .4byte gOAMObjBuffer
_08033114: .4byte gMenuObjBuffer
_08033118: .4byte gSomeBlend
_0803311C: .4byte 0x000121B2
_08033120: .4byte gSceneObjBuffer
_08033124:
	ldrh r0, [r2]
	strh r0, [r5]
	adds r5, #2
	ldrh r0, [r2, #2]
	strh r0, [r5]
	adds r5, #2
	ldrh r0, [r2, #4]
	strh r0, [r5]
	adds r5, #4
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r2, #8
_0803313E:
	ldrh r0, [r1]
	cmp r6, r0
	blo _08033124
	mov sl, r3
	movs r1, #0
	mov sb, r1
	movs r6, #0
	ldr r2, _080331C8 @ =gSomeBlend
	ldr r3, _080331CC @ =0x000121B0
	adds r0, r2, r3
	ldrh r1, [r0]
	cmp r6, r1
	bhs _080331FE
	mov r7, sp
_0803315A:
	mov r2, sl
	ldrb r0, [r2, #3]
	lsls r2, r0, #3
	ldr r0, _080331D0 @ =gUnknown_030038F0
	adds r4, r2, r0
	ldrh r1, [r4]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080331DC
	ldr r0, _080331D4 @ =gUnknown_02027DC8
	adds r0, r2, r0
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldrh r3, [r0, #4]
	mov r0, sp
	bl sub_08002C5C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080331EC
	ldrh r0, [r4]
	strh r0, [r5]
	adds r5, #2
	ldrh r1, [r4, #2]
	ldr r2, _080331D8 @ =0x0000C1FF
	adds r0, r2, #0
	ands r1, r0
	mov r3, sb
	lsls r0, r3, #9
	orrs r1, r0
	strh r1, [r5]
	adds r5, #2
	ldrh r0, [r4, #4]
	strh r0, [r5]
	adds r5, #4
	ldrh r0, [r7]
	mov r1, r8
	strh r0, [r1]
	ldrh r0, [r7, #2]
	strh r0, [r1, #8]
	ldrh r0, [r7, #4]
	strh r0, [r1, #0x10]
	ldrh r0, [r7, #6]
	strh r0, [r1, #0x18]
	movs r2, #0x20
	add r8, r2
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	b _080331EC
	.align 2, 0
_080331C8: .4byte gSomeBlend
_080331CC: .4byte 0x000121B0
_080331D0: .4byte gUnknown_030038F0
_080331D4: .4byte gUnknown_02027DC8
_080331D8: .4byte 0x0000C1FF
_080331DC:
	strh r1, [r5]
	adds r5, #2
	ldrh r0, [r4, #2]
	strh r0, [r5]
	adds r5, #2
	ldrh r0, [r4, #4]
	strh r0, [r5]
	adds r5, #4
_080331EC:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r3, #4
	add sl, r3
	ldr r0, _0803326C @ =gSceneObjCount
	ldrh r0, [r0]
	cmp r6, r0
	blo _0803315A
_080331FE:
	ldr r2, _08033270 @ =gSomeBlend
	ldr r3, _08033274 @ =0x000121B0
	adds r1, r2, r3
	adds r3, #2
	adds r0, r2, r3
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x7f
	bhi _0803322A
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r0, #0
_0803321C:
	strh r1, [r5]
	adds r5, #8
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x7f
	bls _0803321C
_0803322A:
	ldr r1, _08033270 @ =gSomeBlend
	ldr r2, _08033274 @ =0x000121B0
	adds r0, r1, r2
	movs r1, #0
	strh r1, [r0]
	ldr r3, _08033270 @ =gSomeBlend
	adds r2, #2
	adds r0, r3, r2
	strh r1, [r0]
	adds r2, #2
	adds r0, r3, r2
	strh r1, [r0]
	ldr r0, _08033278 @ =0x000121B6
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803325C
	movs r0, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
_0803325C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803326C: .4byte gSceneObjCount
_08033270: .4byte gSomeBlend
_08033274: .4byte 0x000121B0
_08033278: .4byte 0x000121B6

	thumb_func_start sub_0803327C
sub_0803327C: @ 0x0803327C
	push {lr}
	ldr r1, _08033290 @ =gUnknown_03004C15
	ldr r0, _08033294 @ =gSomeBlend
	ldr r2, _08033298 @ =0x000121B0
	adds r0, r0, r2
	ldrh r0, [r0]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08033290: .4byte gUnknown_03004C15
_08033294: .4byte gSomeBlend
_08033298: .4byte 0x000121B0

	thumb_func_start sub_0803329C
sub_0803329C: @ 0x0803329C
	push {lr}
	ldr r2, _080332A8 @ =gUnknown_03004D15
	bl _call_via_r2
	pop {r1}
	bx r1
	.align 2, 0
_080332A8: .4byte gUnknown_03004D15

	thumb_func_start sub_080332AC
sub_080332AC: @ 0x080332AC
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	adds r7, r4, #0
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r6, r5, #0
	cmp r4, #0xc
	bhi _0803336A
	cmp r5, #7
	bhi _0803336A
	bl get_obj_direct
	mov ip, r0
	adds r0, #0xcc
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _080332FE
	cmp r4, #0
	beq _080332DE
	cmp r4, #9
	bne _080332EE
_080332DE:
	mov r0, ip
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	adds r0, #0x50
	adds r1, r0, #0
	b _0803332A
_080332EE:
	mov r0, ip
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	adds r0, #0x58
	adds r1, r0, #0
	b _0803332A
_080332FE:
	mov r0, ip
	adds r0, #0x74
	adds r1, r0, r4
	movs r2, #0
	ldrsb r2, [r1, r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _08033322
	cmp r2, #0xc
	ble _08033318
	adds r0, r2, #0
	b _08033326
_08033318:
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #3
	adds r0, r5, r0
	b _08033326
_08033322:
	lsls r0, r7, #3
	adds r0, r6, r0
_08033326:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_0803332A:
	mov r3, ip
	adds r3, #0x8b
	ldrb r0, [r3]
	cmp r0, r1
	beq _0803336A
	movs r2, #0
	strb r1, [r3]
	mov r1, ip
	adds r1, #0x8c
	ldr r0, _08033370 @ =0x0000FFFF
	strh r0, [r1]
	mov r0, ip
	adds r0, #0x92
	strh r2, [r0]
	mov r2, ip
	adds r2, #0xbf
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r3, #0x3f
	ldrb r2, [r3]
	movs r1, #9
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3]
	mov r2, ip
	adds r2, #0xcc
	ldrb r0, [r2]
	ands r1, r0
	strb r1, [r2]
_0803336A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033370: .4byte 0x0000FFFF

	thumb_func_start sub_08033374
sub_08033374: @ 0x08033374
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	bl get_obj_direct
	adds r6, r0, #0
	adds r0, #0xcc
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _080333C2
	adds r7, r6, #0
	adds r7, #0x86
	ldrb r0, [r7]
	adds r5, r6, #0
	adds r5, #0x88
	ldrh r1, [r5]
	movs r2, #4
	bl sub_08035C0C
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldrb r0, [r7]
	ldrh r1, [r5]
	movs r2, #0
	bl sub_08035C0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r8, r4
	beq _080333C2
	cmp r8, r0
	bne _08033404
_080333C2:
	adds r1, r6, #0
	adds r1, #0x8b
	ldrb r0, [r1]
	cmp r0, r8
	beq _08033404
	movs r2, #0
	mov r0, r8
	strb r0, [r1]
	adds r1, #1
	ldr r0, _08033410 @ =0x0000FFFF
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x92
	strh r2, [r0]
	adds r2, r6, #0
	adds r2, #0xbf
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r3, r6, #0
	adds r3, #0xca
	ldrb r2, [r3]
	movs r1, #9
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3]
	adds r2, r6, #0
	adds r2, #0xcc
	ldrb r0, [r2]
	ands r1, r0
	strb r1, [r2]
_08033404:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033410: .4byte 0x0000FFFF

	thumb_func_start sub_08033414
sub_08033414: @ 0x08033414
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r4, r0, #0
	adds r0, #0x8b
	ldrb r1, [r0]
	lsrs r0, r1, #3
	cmp r0, #0xc
	bhi _0803343C
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r2, #7
	ands r2, r1
	movs r1, #0
	bl sub_080332AC
	b _08033452
_0803343C:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0xbc
	ldrb r2, [r1]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #0
	bl sub_080332AC
_08033452:
	adds r1, r4, #0
	adds r1, #0x8e
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08033460
sub_08033460: @ 0x08033460
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r1, r0, #0
	adds r1, #0x85
	ldrb r1, [r1]
	adds r0, #0x8b
	ldrb r0, [r0]
	movs r2, #7
	ands r2, r0
	adds r0, r1, #0
	movs r1, #0
	bl sub_080332AC
	pop {r0}
	bx r0

	thumb_func_start sub_08033484
sub_08033484: @ 0x08033484
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r0, #0xbf
	ldrb r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0]
	pop {r0}
	bx r0

	thumb_func_start sub_0803349C
sub_0803349C: @ 0x0803349C
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r0, #0xbf
	ldrb r2, [r0]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0]
	pop {r0}
	bx r0

	thumb_func_start sub_080334B4
sub_080334B4: @ 0x080334B4
	push {r4, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl get_obj_direct
	adds r0, #0x8e
	strb r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080334D0
sub_080334D0: @ 0x080334D0
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	adds r6, r5, #0
	bl get_obj_direct
	adds r4, r0, #0
	adds r0, #0x88
	ldrh r0, [r0]
	bl sub_08036D18
	adds r7, r0, #0
	adds r3, r4, #0
	adds r3, #0x48
	ldrb r1, [r3]
	movs r0, #1
	mov ip, r0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08033504
	lsrs r0, r1, #3
	cmp r0, r5
	beq _08033542
_08033504:
	mov r0, ip
	orrs r0, r1
	lsls r2, r6, #3
	movs r1, #7
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x44
	movs r0, #0
	strh r0, [r1]
	ldrb r1, [r3]
	subs r0, #5
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3]
	adds r2, r4, #0
	adds r2, #0x49
	ldrb r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, ip
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r7, #9]
	adds r0, r4, #0
	adds r0, #0x46
	strh r1, [r0]
_08033542:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08033548
sub_08033548: @ 0x08033548
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r2, r0, #0
	adds r2, #0x48
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08033572
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	adds r1, #2
	ands r0, r1
	strb r0, [r2]
_08033572:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08033578
sub_08033578: @ 0x08033578
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	adds r6, r5, #0
	bl get_obj_direct
	adds r4, r0, #0
	adds r0, #0x88
	ldrh r0, [r0]
	bl sub_08036D18
	adds r7, r0, #0
	adds r3, r4, #0
	adds r3, #0x50
	ldrb r1, [r3]
	movs r0, #1
	mov ip, r0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080335AC
	lsrs r0, r1, #3
	cmp r0, r5
	beq _080335EA
_080335AC:
	mov r0, ip
	orrs r0, r1
	lsls r2, r6, #3
	movs r1, #7
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x4c
	movs r0, #0
	strh r0, [r1]
	ldrb r1, [r3]
	subs r0, #5
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3]
	adds r2, r4, #0
	adds r2, #0x51
	ldrb r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, ip
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r7, #9]
	adds r0, r4, #0
	adds r0, #0x4e
	strh r1, [r0]
_080335EA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080335F0
sub_080335F0: @ 0x080335F0
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r2, r0, #0
	adds r2, #0x50
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803361A
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	adds r1, #2
	ands r0, r1
	strb r0, [r2]
_0803361A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08033620
sub_08033620: @ 0x08033620
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	bl get_obj_direct
	adds r4, r0, #0
	cmp r5, #0x10
	bls _08033636
	b _080337A2
_08033636:
	lsls r0, r5, #2
	ldr r1, _08033640 @ =_08033644
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08033640: .4byte _08033644
_08033644: @ jump table
	.4byte _08033688 @ case 0
	.4byte _0803369E @ case 1
	.4byte _080336BA @ case 2
	.4byte _080336C0 @ case 3
	.4byte _080336C6 @ case 4
	.4byte _080336DE @ case 5
	.4byte _080336F2 @ case 6
	.4byte _080336FE @ case 7
	.4byte _08033708 @ case 8
	.4byte _08033714 @ case 9
	.4byte _0803371E @ case 10
	.4byte _08033724 @ case 11
	.4byte _0803372A @ case 12
	.4byte _08033738 @ case 13
	.4byte _080336E8 @ case 14
	.4byte _08033746 @ case 15
	.4byte _08033778 @ case 16
_08033688:
	adds r2, r4, #0
	adds r2, #0xbc
	ldrb r1, [r2]
	lsls r0, r1, #0x1e
	cmp r0, #0
	blt _08033696
	b _080337A2
_08033696:
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	b _080337A2
_0803369E:
	adds r2, r4, #0
	adds r2, #0xbc
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_08035FE4
	adds r0, r4, #0
	bl sub_08036030
	b _080337A2
_080336BA:
	adds r2, r4, #0
	adds r2, #0xbc
	b _0803373C
_080336C0:
	adds r0, r4, #0
	adds r0, #0xbc
	b _0803372E
_080336C6:
	adds r2, r4, #0
	adds r2, #0xc7
	ldrb r1, [r2]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r2, #5
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	b _08033740
_080336DE:
	adds r0, r4, #0
	adds r0, #0xc7
	ldrb r1, [r0]
	movs r2, #8
	b _08033732
_080336E8:
	adds r0, r4, #0
	adds r0, #0xcc
	ldrb r1, [r0]
	movs r2, #0x40
	b _08033732
_080336F2:
	adds r2, r4, #0
	adds r2, #0xcc
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	b _08033740
_080336FE:
	adds r0, r4, #0
	adds r0, #0xcc
	ldrb r1, [r0]
	movs r2, #2
	b _08033732
_08033708:
	adds r2, r4, #0
	adds r2, #0xcc
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	b _08033740
_08033714:
	adds r0, r4, #0
	adds r0, #0xcc
	ldrb r1, [r0]
	movs r2, #4
	b _08033732
_0803371E:
	adds r0, r4, #0
	adds r0, #0xcb
	b _0803372E
_08033724:
	adds r2, r4, #0
	adds r2, #0xcb
	b _0803373C
_0803372A:
	adds r0, r4, #0
	adds r0, #0xcc
_0803372E:
	ldrb r1, [r0]
	movs r2, #0x80
_08033732:
	orrs r1, r2
	strb r1, [r0]
	b _080337A2
_08033738:
	adds r2, r4, #0
	adds r2, #0xcc
_0803373C:
	ldrb r1, [r2]
	movs r0, #0x7f
_08033740:
	ands r0, r1
	strb r0, [r2]
	b _080337A2
_08033746:
	adds r2, r4, #0
	adds r2, #0xca
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	bl sub_08002FE8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x3c
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0xf0
	asrs r0, r0, #1
	adds r1, r4, #0
	adds r1, #0xa2
	strh r0, [r1]
	ldr r0, [r4, #0x2c]
	movs r1, #8
	bl memclear
	b _080337A2
_08033778:
	adds r2, r4, #0
	adds r2, #0xca
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	bl sub_08002FE8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x3c
	bl __umodsi3
	adds r0, #0x3c
	adds r1, r4, #0
	adds r1, #0xa2
	strh r0, [r1]
	ldr r0, [r4, #0x2c]
	movs r1, #8
	bl memclear
_080337A2:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080337A8
sub_080337A8: @ 0x080337A8
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl get_obj_direct
	adds r5, r0, #0
	adds r5, #0xbd
	movs r6, #3
	ands r4, r6
	lsls r4, r4, #3
	ldrb r1, [r5]
	movs r0, #0x19
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	bl sub_08036CD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r0, r6
	lsls r0, r0, #5
	ldrb r2, [r5]
	movs r1, #0x61
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080337F0
sub_080337F0: @ 0x080337F0
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl get_obj_direct
	adds r6, r0, #0
	adds r0, r4, #0
	bl get_obj_direct
	adds r3, r0, #0
	adds r2, r6, #0
	adds r2, #0xcb
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x91
	strb r4, [r0]
	lsls r5, r5, #0x10
	asrs r1, r5, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0803384A
	adds r0, r6, #0
	adds r0, #0x88
	adds r1, r3, #0
	adds r1, #0x88
	ldrh r0, [r0]
	ldrh r2, [r1]
	cmp r0, r2
	beq _08033854
	ldrh r1, [r1]
	adds r0, r6, #0
	movs r2, #1
	bl sub_08030550
	b _08033854
_0803384A:
	lsrs r1, r5, #0x10
	adds r0, r6, #0
	movs r2, #1
	bl sub_08030550
_08033854:
	ldr r0, _08033864 @ =gGame
	ldrb r1, [r0, #1]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08033864: .4byte gGame

	thumb_func_start sub_08033868
sub_08033868: @ 0x08033868
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sp
	strh r2, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08033892
	adds r0, r4, #0
	bl sub_08036650
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08036A1C
	b _080338A4
_08033892:
	adds r0, r1, #0
	bl sub_08036C80
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08036A1C
_080338A4:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080338AC
sub_080338AC: @ 0x080338AC
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_080366C0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080270B8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08036A1C
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080338D8
sub_080338D8: @ 0x080338D8
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, sp
	strh r1, [r0]
	movs r5, #0
_080338E6:
	adds r0, r5, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08033934
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0803391C
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r4, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08036650
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08036A1C
	b _08033934
_0803391C:
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r4, [r0]
	adds r0, r6, #0
	bl sub_08036C80
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08036A1C
_08033934:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bls _080338E6
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08033948
sub_08033948: @ 0x08033948
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	movs r0, #0
	str r0, [sp, #4]
_08033964:
	ldr r0, [sp, #4]
	bl get_obj_direct
	adds r5, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08033A34
	ldr r1, [sp]
	lsls r1, r1, #0x10
	mov sb, r1
	lsrs r2, r1, #0x10
	cmp r2, #7
	bls _08033A28
	adds r7, r5, #0
	adds r7, #0x8b
	ldrb r4, [r7]
	movs r0, #0x86
	adds r0, r0, r5
	mov r8, r0
	ldrb r0, [r0]
	adds r6, r5, #0
	adds r6, #0x88
	ldrh r1, [r6]
	movs r2, #4
	bl sub_08035C0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bne _080339C0
	mov r1, sb
	asrs r0, r1, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080339F2
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	mov r1, sl
	movs r2, #4
	bl sub_080332AC
	b _08033A34
_080339C0:
	ldrb r4, [r7]
	mov r1, r8
	ldrb r0, [r1]
	ldrh r1, [r6]
	movs r2, #0
	bl sub_08035C0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bne _08033A14
	mov r1, sb
	asrs r0, r1, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080339F2
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	mov r1, sl
	movs r2, #0
	bl sub_080332AC
	b _08033A34
_080339F2:
	movs r1, #2
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08033A34
	adds r1, r5, #0
	adds r1, #0xca
	ldrb r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1]
	ldr r1, _08033A10 @ =gUnknown_0200E096
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	b _08033A34
	.align 2, 0
_08033A10: .4byte gUnknown_0200E096
_08033A14:
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	ldrb r1, [r7]
	movs r2, #7
	ands r2, r1
	mov r1, sl
	bl sub_080332AC
	b _08033A34
_08033A28:
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	mov r1, sl
	bl sub_080332AC
_08033A34:
	ldr r0, [sp, #4]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	cmp r0, #4
	bls _08033964
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08033A54
sub_08033A54: @ 0x08033A54
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r4, #0
_08033A5C:
	adds r0, r4, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08033A7A
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r5, #0
	bl sub_08033374
_08033A7A:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _08033A5C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08033A8C
sub_08033A8C: @ 0x08033A8C
	push {r4, lr}
	movs r4, #0
_08033A90:
	adds r0, r4, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08033AAC
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033484
_08033AAC:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _08033A90
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08033ABC
sub_08033ABC: @ 0x08033ABC
	push {r4, lr}
	movs r4, #0
_08033AC0:
	adds r0, r4, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08033ADC
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_0803349C
_08033ADC:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _08033AC0
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08033AEC
sub_08033AEC: @ 0x08033AEC
	push {r4, r5, lr}
	movs r4, #0
	lsls r5, r0, #0x10
_08033AF2:
	adds r0, r4, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08033B10
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r0, [r0]
	asrs r1, r5, #0x10
	bl sub_080334B4
_08033B10:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _08033AF2
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08033B20
sub_08033B20: @ 0x08033B20
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r4, #0
_08033B28:
	adds r0, r4, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08033B46
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r5, #0
	bl sub_08033620
_08033B46:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _08033B28
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08033B58
sub_08033B58: @ 0x08033B58
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r4, #0
_08033B60:
	adds r0, r4, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08033B7E
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r5, #0
	bl sub_080337A8
_08033B7E:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _08033B60
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08033B90
sub_08033B90: @ 0x08033B90
	push {r4, lr}
	movs r4, #0
_08033B94:
	adds r0, r4, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08033BBC
	ldr r2, [r1, #0x34]
	cmp r2, #0
	bne _08033BB4
	adds r0, r1, #0
	bl sub_08035F4C
	b _08033BBC
_08033BB4:
	ldrb r0, [r2, #0x14]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2, #0x14]
_08033BBC:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _08033B94
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08033BCC
sub_08033BCC: @ 0x08033BCC
	push {r4, r5, lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	movs r4, #0
_08033BD6:
	adds r0, r4, #0
	bl get_obj_direct
	adds r3, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08033C02
	mov r0, sp
	ldrh r0, [r0]
	adds r3, #0xcc
	movs r2, #1
	ands r2, r0
	lsls r2, r2, #4
	ldrb r0, [r3]
	movs r5, #0x11
	rsbs r5, r5, #0
	adds r1, r5, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
_08033C02:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _08033BD6
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08033C14
sub_08033C14: @ 0x08033C14
	push {r4, lr}
	movs r0, #0
	bl get_obj_direct
	ldr r0, [r0, #0x18]
	bl sub_0801A6D8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08033C3E
	movs r0, #5
	bl sub_08003D14
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	bne _08033C3E
	movs r0, #5
	bl sub_08003BA8
_08033C3E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08033C44
sub_08033C44: @ 0x08033C44
	push {r4, r5, lr}
	movs r5, #0
_08033C48:
	adds r0, r5, #0
	bl get_obj_direct
	adds r4, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08033C68
	adds r4, #0x85
	ldrb r0, [r4]
	bl sub_08033414
	ldrb r0, [r4]
	bl sub_0803349C
_08033C68:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bls _08033C48
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #0
	movs r1, #0
	movs r3, #1
	bl sub_08035384
	ldr r1, _08033C98 @ =gGame
	ldr r0, _08033C9C @ =0x00008496
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08033C98: .4byte gGame
_08033C9C: .4byte 0x00008496

	thumb_func_start sub_08033CA0
sub_08033CA0: @ 0x08033CA0
	push {r4, r5, lr}
	movs r0, #5
	bl sub_08003BA8
	ldr r0, _08033CF4 @ =gGame
	ldr r1, _08033CF8 @ =0x000082A4
	adds r0, r0, r1
	movs r1, #0xa
	strh r1, [r0]
	movs r4, #0
	movs r0, #7
	rsbs r0, r0, #0
	adds r5, r0, #0
_08033CBA:
	adds r0, r4, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08033CD4
	adds r1, #0xc8
	ldrb r0, [r1]
	ands r0, r5
	strb r0, [r1]
_08033CD4:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _08033CBA
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #0
	movs r1, #0
	movs r3, #1
	bl sub_08035384
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08033CF4: .4byte gGame
_08033CF8: .4byte 0x000082A4

	thumb_func_start sub_08033CFC
sub_08033CFC: @ 0x08033CFC
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0
	bl get_obj_direct
	adds r2, r0, #0
	ldr r0, _08033D30 @ =gGame
	ldr r1, _08033D34 @ =0x000067AC
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _08033D38 @ =0x0000032A
	cmp r1, r0
	bgt _08033D44
	subs r0, #1
	cmp r1, r0
	bge _08033D5E
	subs r0, #0x64
	cmp r1, r0
	bgt _08033D3C
	subs r0, #3
	cmp r1, r0
	bge _08033D5E
	cmp r1, #0xe8
	beq _08033D5A
	b _08033DA0
	.align 2, 0
_08033D30: .4byte gGame
_08033D34: .4byte 0x000067AC
_08033D38: .4byte 0x0000032A
_08033D3C:
	ldr r0, _08033D40 @ =0x00000322
	b _08033D54
	.align 2, 0
_08033D40: .4byte 0x00000322
_08033D44:
	movs r0, #0xe0
	lsls r0, r0, #2
	cmp r1, r0
	blt _08033DA0
	adds r0, #1
	cmp r1, r0
	ble _08033D5E
	adds r0, #2
_08033D54:
	cmp r1, r0
	beq _08033D5E
	b _08033DA0
_08033D5A:
	movs r5, #9
	b _08033D60
_08033D5E:
	movs r5, #5
_08033D60:
	cmp r4, #0
	bne _08033D7E
	adds r0, r5, #0
	bl sub_08003D14
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xd9
	bgt _08033D76
	cmp r4, #0xd8
	bge _08033DA0
_08033D76:
	adds r0, r5, #0
	bl sub_08003BA8
	b _08033DA0
_08033D7E:
	ldr r0, [r2, #0x18]
	bl sub_0801A6D8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08033DA0
	adds r0, r5, #0
	bl sub_08003D14
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	beq _08033DA0
	adds r0, r4, #0
	bl play_sound
_08033DA0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08033DA8
sub_08033DA8: @ 0x08033DA8
	push {r4, lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	movs r0, #0
	bl get_obj_direct
	ldr r1, [r0, #0x18]
	ldr r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08033DFC
	ldr r0, _08033DF4 @ =gGame
	ldr r2, _08033DF8 @ =0x0000829B
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #3
	bne _08033DEE
	adds r0, r1, #0
	bl sub_0801A7AC
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08033DEE
	movs r0, #5
	bl sub_08003D14
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	beq _08033DEE
	adds r0, r4, #0
	bl play_sound
_08033DEE:
	movs r0, #0
	b _08033E58
	.align 2, 0
_08033DF4: .4byte gGame
_08033DF8: .4byte 0x0000829B
_08033DFC:
	adds r0, r1, #0
	bl sub_0801A764
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08033E1E
	movs r0, #5
	bl sub_08003D14
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	beq _08033E1E
	adds r0, r4, #0
	bl play_sound
_08033E1E:
	ldr r4, _08033E60 @ =gGame
	ldr r0, _08033E64 @ =0x0000829B
	adds r1, r4, r0
	movs r0, #3
	strb r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08033E44
	ldr r1, _08033E68 @ =0x000082A0
	adds r0, r4, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #0
	movs r3, #3
	bl sub_08035384
_08033E44:
	bl sub_08033ABC
	ldr r0, _08033E6C @ =0x00008496
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #1
_08033E58:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08033E60: .4byte gGame
_08033E64: .4byte 0x0000829B
_08033E68: .4byte 0x000082A0
_08033E6C: .4byte 0x00008496

	thumb_func_start sub_08033E70
sub_08033E70: @ 0x08033E70
	push {r4, r5, r6, lr}
	movs r0, #0
	bl get_obj_direct
	adds r6, r0, #0
	ldr r0, [r6, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x1f
	cmp r3, #0
	beq _08033E8A
	movs r0, #0
	b _08033FE4
_08033E8A:
	ldr r2, _08033EE8 @ =gGame
	ldr r0, _08033EEC @ =0x0000829B
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08033EF0 @ =0x0000829E
	adds r0, r2, r1
	strh r3, [r0]
	adds r5, r6, #0
	adds r5, #0x8f
	ldrb r0, [r5]
	cmp r0, #0
	beq _08033F14
	adds r3, r6, #0
	adds r3, #0xbc
	ldrb r1, [r3]
	lsls r1, r1, #0x1b
	ldr r0, _08033EF4 @ =0x000082B6
	adds r4, r2, r0
	lsrs r1, r1, #0x1d
	lsls r1, r1, #1
	ldrb r2, [r4]
	movs r0, #0x1f
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldrb r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	bl sub_080270C8
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrb r2, [r5]
	cmp r2, r1
	beq _08033EFC
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r4]
	ldr r0, _08033EF8 @ =0xFFFFFE1F
	ands r0, r2
	orrs r0, r1
	strh r0, [r4]
	b _08033F4E
	.align 2, 0
_08033EE8: .4byte gGame
_08033EEC: .4byte 0x0000829B
_08033EF0: .4byte 0x0000829E
_08033EF4: .4byte 0x000082B6
_08033EF8: .4byte 0xFFFFFE1F
_08033EFC:
	movs r0, #0xf
	ands r2, r0
	lsls r2, r2, #5
	ldrh r1, [r4]
	ldr r0, _08033F10 @ =0xFFFFFE1F
	ands r0, r1
	orrs r0, r2
	strh r0, [r4]
	b _08033F4E
	.align 2, 0
_08033F10: .4byte 0xFFFFFE1F
_08033F14:
	adds r3, r6, #0
	adds r3, #0xbc
	ldrb r1, [r3]
	lsls r1, r1, #0x1b
	ldr r0, _08033F98 @ =0x000082B6
	adds r4, r2, r0
	lsrs r1, r1, #0x1d
	lsls r1, r1, #1
	ldrb r2, [r4]
	movs r0, #0x1f
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldrb r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	bl sub_080270C8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #5
	ldrh r2, [r4]
	ldr r1, _08033F9C @ =0xFFFFFE1F
	ands r1, r2
	orrs r1, r0
	strh r1, [r4]
_08033F4E:
	movs r1, #2
	rsbs r1, r1, #0
	movs r0, #0
	bl sub_08033948
	ldr r4, _08033FA0 @ =gGame
	ldr r1, _08033F98 @ =0x000082B6
	adds r0, r4, r1
	ldrb r2, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1c
	movs r0, #0
	movs r1, #4
	bl sub_080332AC
	movs r0, #0
	bl sub_08033484
	ldr r0, _08033FA4 @ =0x000067AC
	adds r4, r4, r0
	ldrh r1, [r4]
	ldr r0, _08033FA8 @ =0x0000032A
	cmp r1, r0
	bgt _08033FAC
	subs r0, #1
	cmp r1, r0
	bge _08033FC0
	subs r0, #0x67
	cmp r1, r0
	blt _08033FE2
	adds r0, #3
	cmp r1, r0
	ble _08033FC0
	adds r0, #0x5d
	cmp r1, r0
	beq _08033FC0
	b _08033FE2
	.align 2, 0
_08033F98: .4byte 0x000082B6
_08033F9C: .4byte 0xFFFFFE1F
_08033FA0: .4byte gGame
_08033FA4: .4byte 0x000067AC
_08033FA8: .4byte 0x0000032A
_08033FAC:
	movs r0, #0xe0
	lsls r0, r0, #2
	cmp r1, r0
	blt _08033FE2
	adds r0, #1
	cmp r1, r0
	ble _08033FC0
	adds r0, #2
	cmp r1, r0
	bne _08033FE2
_08033FC0:
	ldr r0, [r6, #0x18]
	bl sub_0801A6D8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08033FE2
	movs r0, #5
	bl sub_08003D14
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	bne _08033FE2
	movs r0, #5
	bl sub_08003BA8
_08033FE2:
	movs r0, #1
_08033FE4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08033FEC
sub_08033FEC: @ 0x08033FEC
	push {r4, r5, lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	movs r0, #0
	bl get_obj_direct
	adds r4, r0, #0
	ldr r0, _08034020 @ =gGame
	ldr r1, _08034024 @ =0x0000829B
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _080340DE
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _08034028
	movs r0, #5
	bl sub_08003BA8
	movs r0, #0xec
	bl play_sound
	b _0803404E
	.align 2, 0
_08034020: .4byte gGame
_08034024: .4byte 0x0000829B
_08034028:
	movs r0, #5
	bl sub_08003BA8
	ldr r0, [r4, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _0803404E
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x8b
	ldrb r1, [r1]
	movs r2, #7
	ands r2, r1
	movs r1, #0
	bl sub_080332AC
_0803404E:
	ldr r3, _080340E8 @ =gGame
	ldr r5, _080340EC @ =0x0000829B
	adds r1, r3, r5
	movs r5, #0
	movs r0, #4
	strb r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	ldr r1, _080340F0 @ =0x000082B7
	adds r4, r3, r1
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r4]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldr r0, _080340F4 @ =0x000082A2
	adds r3, r3, r0
	strh r5, [r3]
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #0
	movs r1, #0
	movs r3, #1
	bl sub_08035384
	movs r4, #0
_0803408A:
	adds r0, r4, #0
	bl get_obj_direct
	adds r3, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080340D4
	adds r2, r3, #0
	adds r2, #0xc8
	ldrb r1, [r2]
	movs r5, #7
	rsbs r5, r5, #0
	adds r0, r5, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r2]
	adds r1, r3, #0
	adds r1, #0x96
	movs r2, #0
	movs r0, #0x20
	strh r0, [r1]
	cmp r4, #0
	beq _080340D4
	adds r0, r3, #0
	adds r0, #0x9a
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	ldrh r1, [r3]
	strh r1, [r3, #8]
	ldrh r0, [r3, #2]
	strh r0, [r3, #0xa]
	strh r1, [r3, #0xc]
	strh r0, [r3, #0xe]
_080340D4:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _0803408A
_080340DE:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080340E8: .4byte gGame
_080340EC: .4byte 0x0000829B
_080340F0: .4byte 0x000082B7
_080340F4: .4byte 0x000082A2

	thumb_func_start sub_080340F8
sub_080340F8: @ 0x080340F8
	push {r4, r5, lr}
	ldr r0, _08034150 @ =gGame
	ldr r1, _08034154 @ =0x000082A4
	adds r0, r0, r1
	movs r1, #0xa
	strh r1, [r0]
	movs r4, #0
	movs r0, #7
	rsbs r0, r0, #0
	adds r5, r0, #0
_0803410C:
	adds r0, r4, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08034126
	adds r1, #0xc8
	ldrb r0, [r1]
	ands r0, r5
	strb r0, [r1]
_08034126:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _0803410C
	movs r0, #0
	bl get_obj_direct
	adds r1, r0, #0
	ldr r0, [r1, #0x18]
	ldrb r1, [r0, #1]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0803414A
	movs r0, #0
	bl sub_08035170
_0803414A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08034150: .4byte gGame
_08034154: .4byte 0x000082A4

	thumb_func_start sub_08034158
sub_08034158: @ 0x08034158
	push {r4, r5, lr}
	movs r5, #0
	movs r4, #0
_0803415E:
	adds r0, r4, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080341B2
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	bne _08034190
	adds r2, r1, #0
	adds r2, #0xc8
	ldrb r1, [r2]
	lsls r0, r1, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _0803419E
	movs r0, #6
	orrs r0, r1
	strb r0, [r2]
	b _080341B2
_08034190:
	adds r0, r1, #0
	adds r0, #0xc8
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _080341A4
_0803419E:
	cmp r0, #3
	beq _080341AC
	b _080341B2
_080341A4:
	adds r0, r1, #0
	bl sub_08034260
	b _080341B2
_080341AC:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_080341B2:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _0803415E
	ldr r3, _080341EC @ =gGame
	ldr r0, _080341F0 @ =0x000082A2
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r2, r0, #1
	strh r2, [r1]
	ldr r1, _080341F4 @ =0x000082B7
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08034208
	ldr r0, _080341F8 @ =0x00008299
	adds r1, r3, r0
	ldrb r0, [r1]
	cmp r0, #1
	bne _080341FC
	movs r1, #0
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bls _0803424A
	b _08034248
	.align 2, 0
_080341EC: .4byte gGame
_080341F0: .4byte 0x000082A2
_080341F4: .4byte 0x000082B7
_080341F8: .4byte 0x00008299
_080341FC:
	movs r0, #0
	ldrb r1, [r1]
	cmp r5, r1
	bne _0803425A
	movs r0, #1
	b _0803425A
_08034208:
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _08034258
	cmp r0, #3
	bne _0803423A
	movs r0, #0
	bl get_obj_direct
	adds r1, r0, #0
	ldr r0, [r1, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _0803423A
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, #0x8b
	ldrb r1, [r1]
	movs r2, #7
	ands r2, r1
	movs r1, #0
	bl sub_080332AC
_0803423A:
	movs r1, #0
	ldr r0, _08034250 @ =gGame
	ldr r2, _08034254 @ =0x00008299
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r5, r0
	bne _0803424A
_08034248:
	movs r1, #1
_0803424A:
	adds r0, r1, #0
	b _0803425A
	.align 2, 0
_08034250: .4byte gGame
_08034254: .4byte 0x00008299
_08034258:
	movs r0, #0
_0803425A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08034260
sub_08034260: @ 0x08034260
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xc8
	ldrb r0, [r2]
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r3, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _08034284
	adds r0, r3, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033414
_08034284:
	pop {r0}
	bx r0

	thumb_func_start sub_08034288
sub_08034288: @ 0x08034288
	push {r4, lr}
	movs r0, #0x41
	bl sub_08002998
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bhi _08034334
	lsls r0, r0, #2
	ldr r1, _080342A4 @ =_080342A8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080342A4: .4byte _080342A8
_080342A8: @ jump table
	.4byte _080342BC @ case 0
	.4byte _080342E0 @ case 1
	.4byte _080342E0 @ case 2
	.4byte _08034308 @ case 3
	.4byte _080342E0 @ case 4
_080342BC:
	ldr r0, _080342D4 @ =gGame
	ldr r1, _080342D8 @ =0x000082B6
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1c
	ldr r4, _080342DC @ =0x0000031F
	cmp r0, #0
	bne _0803431C
	subs r4, #1
	b _08034320
	.align 2, 0
_080342D4: .4byte gGame
_080342D8: .4byte 0x000082B6
_080342DC: .4byte 0x0000031F
_080342E0:
	ldr r0, _080342F8 @ =gGame
	ldr r1, _080342FC @ =0x000082B6
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1c
	cmp r0, #0
	bne _08034300
	movs r0, #5
	bl sub_08003BA8
	b _08034334
	.align 2, 0
_080342F8: .4byte gGame
_080342FC: .4byte 0x000082B6
_08034300:
	ldr r4, _08034304 @ =0x000006A3
	b _08034320
	.align 2, 0
_08034304: .4byte 0x000006A3
_08034308:
	ldr r0, _0803433C @ =gGame
	ldr r1, _08034340 @ =0x000082B6
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1c
	ldr r4, _08034344 @ =0x00000577
	cmp r0, #0
	bne _0803431C
	subs r4, #1
_0803431C:
	cmp r4, #0
	beq _08034334
_08034320:
	movs r0, #5
	bl sub_08003D14
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	beq _08034334
	adds r0, r4, #0
	bl play_sound
_08034334:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803433C: .4byte gGame
_08034340: .4byte 0x000082B6
_08034344: .4byte 0x00000577

	thumb_func_start sub_08034348
sub_08034348: @ 0x08034348
	push {lr}
	sub sp, #4
	mov r1, sp
	bl sub_08036BEC
	movs r2, #2
	ldr r0, _08034370 @ =gGame
	ldr r1, _08034374 @ =0x000082B6
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1c
	subs r0, #1
	cmp r0, #7
	bhi _080343B0
	lsls r0, r0, #2
	ldr r1, _08034378 @ =_0803437C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08034370: .4byte gGame
_08034374: .4byte 0x000082B6
_08034378: .4byte _0803437C
_0803437C: @ jump table
	.4byte _0803439C @ case 0
	.4byte _080343B0 @ case 1
	.4byte _080343A2 @ case 2
	.4byte _080343B0 @ case 3
	.4byte _0803439C @ case 4
	.4byte _080343B0 @ case 5
	.4byte _080343A2 @ case 6
	.4byte _080343B0 @ case 7
_0803439C:
	mov r0, sp
	ldrh r1, [r0, #2]
	b _080343A6
_080343A2:
	mov r0, sp
	ldrh r1, [r0]
_080343A6:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080343B0
	movs r2, #1
_080343B0:
	adds r0, r2, #0
	add sp, #4
	pop {r1}
	bx r1

	thumb_func_start sub_080343B8
sub_080343B8: @ 0x080343B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r2, _08034424 @ =gUnknown_0200100C
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	ldr r1, _08034428 @ =0x000001DF
	cmp r0, r1
	bls _0803440A
	movs r0, #0
	str r0, [r2]
	movs r4, #0
	ldr r0, _0803442C @ =gGame
	ldr r1, _08034430 @ =0x00008299
	adds r0, r0, r1
	ldrb r2, [r0]
	cmp r4, r2
	bhs _0803440A
	adds r6, r0, #0
	movs r0, #9
	rsbs r0, r0, #0
	adds r5, r0, #0
_080343F0:
	adds r0, r4, #0
	bl get_char_stats
	adds r0, #0x30
	ldrb r1, [r0]
	ands r1, r5
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r1, [r6]
	cmp r4, r1
	blo _080343F0
_0803440A:
	ldr r2, _0803442C @ =gGame
	ldr r1, _08034434 @ =0x0000829B
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #6
	beq _080344AC
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	movs r4, #0
	adds r6, r2, #0
	mov r5, sp
	b _0803443E
	.align 2, 0
_08034424: .4byte gUnknown_0200100C
_08034428: .4byte 0x000001DF
_0803442C: .4byte gGame
_08034430: .4byte 0x00008299
_08034434: .4byte 0x0000829B
_08034438:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0803443E:
	ldr r2, _080344B8 @ =0x00008299
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r4, r0
	bhs _0803445E
	adds r0, r4, #0
	bl get_char_stats
	adds r0, #0x30
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08034438
	movs r0, #1
	strh r0, [r5]
_0803445E:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08034482
	ldr r2, _080344BC @ =gUnknown_08D2E070
	ldr r1, _080344C0 @ =0x000082B2
	adds r0, r6, r1
	ldrh r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	add r0, r8
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r2, r7, #2
	adds r1, r7, #0
	bl sub_080270A0
_08034482:
	ldr r0, _080344C4 @ =0x000082B0
	adds r2, r6, r0
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080344C8 @ =0x02570000
	cmp r0, r1
	bls _080344AC
	movs r0, #0
	strh r0, [r2]
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #2
	bl sub_08002FD4
	ldr r2, _080344C0 @ =0x000082B2
	adds r1, r6, r2
	strh r0, [r1]
_080344AC:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080344B8: .4byte 0x00008299
_080344BC: .4byte gUnknown_08D2E070
_080344C0: .4byte 0x000082B2
_080344C4: .4byte 0x000082B0
_080344C8: .4byte 0x02570000

	thumb_func_start sub_080344CC
sub_080344CC: @ 0x080344CC
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r1, #0
	ldr r4, _080344E4 @ =gUnknown_02001010
	ldrh r0, [r4]
	cmp r0, #0
	beq _080344EC
	subs r0, #1
	strh r0, [r4]
	ldr r1, _080344E8 @ =gUnknown_02001012
	b _08034536
	.align 2, 0
_080344E4: .4byte gUnknown_02001010
_080344E8: .4byte gUnknown_02001012
_080344EC:
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x1e
	bl sub_08002FD4
	adds r0, #0x1e
	strh r0, [r4]
	ldr r1, _08034520 @ =gUnknown_02001014
	ldr r0, _08034524 @ =gGame
	ldr r2, _08034528 @ =0x00009D10
	adds r0, r0, r2
	ldr r0, [r0]
	movs r4, #1
	ands r0, r4
	strh r0, [r1]
	bl sub_080030A4
	ands r0, r4
	cmp r0, #0
	beq _08034530
	ldr r1, _0803452C @ =gUnknown_02001012
	movs r0, #7
	b _08034534
	.align 2, 0
_08034520: .4byte gUnknown_02001014
_08034524: .4byte gGame
_08034528: .4byte 0x00009D10
_0803452C: .4byte gUnknown_02001012
_08034530:
	ldr r1, _08034558 @ =gUnknown_02001012
	movs r0, #3
_08034534:
	strh r0, [r1]
_08034536:
	ldrh r0, [r1]
	mov r2, sp
	adds r2, #2
	mov r1, sp
	bl sub_080270A0
	ldr r0, _0803455C @ =gUnknown_02001014
	ldrh r0, [r0]
	cmp r0, #0
	beq _08034568
	ldr r0, _08034560 @ =gGame
	ldr r1, _08034564 @ =0x00009D10
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	b _08034572
	.align 2, 0
_08034558: .4byte gUnknown_02001012
_0803455C: .4byte gUnknown_02001014
_08034560: .4byte gGame
_08034564: .4byte 0x00009D10
_08034568:
	ldr r0, _080345A4 @ =gGame
	ldr r2, _080345A8 @ =0x00009D10
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #3
_08034572:
	ands r0, r1
	cmp r0, #0
	bne _0803459A
	mov r0, sp
	ldrh r0, [r0]
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	mov r0, sp
	ldrh r0, [r0, #2]
	ldrh r2, [r5, #2]
	adds r0, r0, r2
	strh r0, [r5, #2]
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #0
	movs r1, #0
	movs r3, #0
	bl sub_08035384
_0803459A:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080345A4: .4byte gGame
_080345A8: .4byte 0x00009D10

	thumb_func_start sub_080345AC
sub_080345AC: @ 0x080345AC
	push {r4, r5, lr}
	sub sp, #4
	bl sub_08034BAC
	movs r0, #0
	bl get_obj_direct
	bl sub_08034EB8
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	movs r0, #0
	mov r5, sp
_080345C8:
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080345EC
	adds r0, r1, #0
	bl sub_08034608
	ldrh r1, [r5]
	orrs r1, r0
	strh r1, [r5]
_080345EC:
	adds r0, r4, #0
	cmp r0, #3
	bls _080345C8
	movs r1, #0
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _080345FE
	movs r1, #1
_080345FE:
	adds r0, r1, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08034608
sub_08034608: @ 0x08034608
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	mov r1, sp
	bl sub_08036BEC
	ldr r0, [r5, #0x40]
	ldrb r0, [r0, #5]
	lsrs r0, r0, #6
	bl sub_08036CD0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	mov r1, sp
	bl sub_0801AA70
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _080346E0
	adds r0, r4, #0
	mov r1, sp
	bl sub_0801AAB0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r4, sp, #4
	movs r2, #0
	ldrsh r1, [r4, r2]
	adds r2, r1, #0
	muls r2, r0, r2
	lsls r2, r2, #0x10
	ldr r1, [sp, #4]
	asrs r1, r1, #0x10
	muls r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r2, r2, #0x10
	orrs r2, r0
	str r2, [sp, #4]
	ldr r2, [r5, #0x40]
	ldrh r1, [r2, #4]
	ldr r0, _080346DC @ =0xFFFFC01F
	ands r0, r1
	strh r0, [r2, #4]
	adds r0, r6, #0
	bl sub_080270D8
	ldr r3, [r5, #0x40]
	movs r1, #0x1f
	ands r1, r0
	ldrb r2, [r3, #4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #4]
	ldr r0, [r5, #0x40]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_080270C8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r2, sp
	adds r2, #6
	adds r1, r4, #0
	bl sub_080270A0
	ldr r1, [r5, #0x40]
	ldrh r0, [r4]
	lsls r0, r0, #4
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldr r1, [r5, #0x40]
	ldrh r0, [r4, #2]
	lsls r0, r0, #4
	ldrh r2, [r1, #2]
	adds r0, r0, r2
	strh r0, [r1, #2]
	ldr r2, [r5, #0x40]
	ldrh r0, [r2]
	strh r0, [r5]
	ldrh r0, [r2, #2]
	strh r0, [r5, #2]
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	ldrh r1, [r2, #4]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x17
	ldrb r2, [r2, #4]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1b
	bl sub_080332AC
	adds r1, r5, #0
	adds r1, #0xa0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r0, #1
	b _080346EE
	.align 2, 0
_080346DC: .4byte 0xFFFFC01F
_080346E0:
	adds r1, r5, #0
	adds r1, #0xa0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080346EC
	strh r6, [r1]
_080346EC:
	movs r0, #0
_080346EE:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080346F8
sub_080346F8: @ 0x080346F8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xbe
	ldrh r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	cmp r0, #5
	bgt _0803470C
	cmp r0, #4
	bge _08034736
_0803470C:
	ldr r0, _0803471C @ =gGame
	ldr r1, _08034720 @ =0x0000829B
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #6
	bne _08034724
	movs r0, #1
	b _08034760
	.align 2, 0
_0803471C: .4byte gGame
_08034720: .4byte 0x0000829B
_08034724:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r1, [r0]
	movs r0, #0
	bl sub_08036864
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803473A
_08034736:
	movs r0, #0
	b _08034760
_0803473A:
	movs r0, #0
	bl get_char_stats
	adds r1, r4, #0
	adds r1, #0x88
	ldrh r2, [r1]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #4
	ldr r2, _08034768 @ =gUnknown_080C7D28
	adds r1, r1, r2
	ldrb r0, [r0, #0x12]
	ldrb r1, [r1, #0x12]
	movs r2, #0
	subs r0, r0, r1
	cmp r0, #3
	ble _0803475E
	movs r2, #1
_0803475E:
	adds r0, r2, #0
_08034760:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08034768: .4byte gUnknown_080C7D28

	thumb_func_start sub_0803476C
sub_0803476C: @ 0x0803476C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08034780 @ =gGame
	ldr r1, _08034784 @ =0x0000829B
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #6
	bne _08034788
	movs r0, #1
	b _080347AE
	.align 2, 0
_08034780: .4byte gGame
_08034784: .4byte 0x0000829B
_08034788:
	movs r0, #0
	bl get_char_stats
	adds r1, r4, #0
	adds r1, #0x88
	ldrh r2, [r1]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #4
	ldr r2, _080347B4 @ =gUnknown_080C7D28
	adds r1, r1, r2
	ldrb r0, [r0, #0x12]
	ldrb r1, [r1, #0x12]
	movs r2, #0
	subs r0, r0, r1
	cmp r0, #5
	ble _080347AC
	movs r2, #1
_080347AC:
	adds r0, r2, #0
_080347AE:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080347B4: .4byte gUnknown_080C7D28

	thumb_func_start sub_080347B8
sub_080347B8: @ 0x080347B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r6, r0, #0
	adds r1, r6, #0
	adds r1, #0xa2
	ldrh r0, [r1]
	cmp r0, #0
	beq _080347F4
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080347D8
	b _08034956
_080347D8:
	adds r2, r6, #0
	adds r2, #0xca
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #1
	bl sub_08033620
	movs r0, #1
	b _08034958
_080347F4:
	adds r1, r6, #0
	adds r1, #0xcb
	ldrb r0, [r1]
	lsls r0, r0, #0x1f
	mov r8, r1
	cmp r0, #0
	beq _08034874
	adds r0, r6, #0
	adds r0, #0xc
	subs r1, #0xc3
	add r7, sp, #4
	adds r5, r6, #0
	adds r5, #0xb0
	ldrh r3, [r5]
	adds r4, r6, #0
	adds r4, #0xb2
	ldrh r2, [r4]
	str r2, [sp]
	adds r2, r7, #0
	bl sub_08002E8C
	add r0, sp, #4
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	subs r0, r0, r1
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x10
	ldr r1, _0803486C @ =0xFFFF0000
	ldr r2, [sp, #8]
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #8]
	movs r3, #2
	ldrsh r0, [r7, r3]
	movs r3, #2
	ldrsh r1, [r6, r3]
	subs r0, r0, r1
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	ldr r1, _08034870 @ =0x0000FFFF
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #8]
	cmp r1, #0
	beq _080348C6
	add r1, sp, #8
	adds r0, r6, #0
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080348C6
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r5]
	b _0803490A
	.align 2, 0
_0803486C: .4byte 0xFFFF0000
_08034870: .4byte 0x0000FFFF
_08034874:
	adds r0, r6, #0
	adds r0, #0xc
	adds r1, r6, #0
	adds r1, #8
	add r7, sp, #4
	adds r5, r6, #0
	adds r5, #0xb0
	ldrh r3, [r5]
	adds r4, r6, #0
	adds r4, #0xb2
	ldrh r2, [r4]
	str r2, [sp]
	adds r2, r7, #0
	bl sub_08002E8C
	add r0, sp, #4
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	subs r0, r0, r1
	asrs r0, r0, #4
	add r2, sp, #8
	strh r0, [r2]
	movs r3, #2
	ldrsh r0, [r7, r3]
	movs r3, #2
	ldrsh r1, [r6, r3]
	subs r0, r0, r1
	asrs r0, r0, #4
	strh r0, [r2, #2]
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _080348C6
	adds r0, r6, #0
	adds r1, r2, #0
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08034924
_080348C6:
	add r0, sp, #4
	ldrh r0, [r0]
	strh r0, [r6]
	ldrh r0, [r7, #2]
	strh r0, [r6, #2]
	ldrh r2, [r5]
	ldrh r3, [r4]
	movs r0, #0
	movs r1, #0x80
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r2, r6, #0
	adds r2, #0xae
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _080348F6
	rsbs r0, r0, #0
_080348F6:
	muls r0, r1, r0
	asrs r1, r0, #8
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _08034904
	rsbs r1, r1, #0
_08034904:
	lsls r0, r1, #4
	rsbs r0, r0, #0
	strh r0, [r6, #6]
_0803490A:
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r4, [r4]
	cmp r0, r4
	blo _08034956
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0803492E
_08034924:
	adds r0, r6, #0
	bl sub_080349C0
	movs r0, #1
	b _08034958
_0803492E:
	ldr r1, _08034964 @ =gSomeBlend
	ldr r2, _08034968 @ =0x000121B8
	adds r1, r1, r2
	ldrb r0, [r1]
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1]
	adds r1, r6, #0
	adds r1, #0xa2
	movs r0, #0x32
	strh r0, [r1]
	adds r4, r6, #0
	adds r4, #0x85
	ldrb r0, [r4]
	bl sub_08033484
	ldrb r0, [r4]
	movs r1, #0x1f
	bl sub_080334D0
_08034956:
	movs r0, #0
_08034958:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08034964: .4byte gSomeBlend
_08034968: .4byte 0x000121B8

	thumb_func_start sub_0803496C
sub_0803496C: @ 0x0803496C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xa2
	ldrh r0, [r0]
	cmp r0, #0
	bne _080349B8
	adds r0, r4, #0
	adds r0, #0xb0
	ldrh r2, [r0]
	adds r0, #2
	ldrh r3, [r0]
	movs r0, #0
	movs r1, #0x80
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r2, r4, #0
	adds r2, #0xae
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _080349A4
	rsbs r0, r0, #0
_080349A4:
	muls r0, r1, r0
	asrs r1, r0, #8
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _080349B2
	rsbs r1, r1, #0
_080349B2:
	lsls r0, r1, #4
	rsbs r0, r0, #0
	strh r0, [r4, #6]
_080349B8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080349C0
sub_080349C0: @ 0x080349C0
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r4, #0xca
	ldrb r2, [r4]
	movs r1, #0x7f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4]
	adds r2, r3, #0
	adds r2, #0xbc
	ldrb r0, [r2]
	ands r1, r0
	strb r1, [r2]
	adds r2, #0xc
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r1, #0
	strh r1, [r3, #6]
	adds r0, r3, #0
	adds r0, #0xb2
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	subs r4, #0x45
	ldrb r0, [r4]
	bl sub_08033414
	ldrb r0, [r4]
	movs r1, #0xf
	bl sub_08033620
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08034A10
sub_08034A10: @ 0x08034A10
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsrs r6, r0, #7
	cmp r6, #0
	beq _08034A22
	movs r0, #0
	b _08034A84
_08034A22:
	adds r5, r4, #0
	adds r5, #0xb0
	ldrh r2, [r5]
	adds r7, r4, #0
	adds r7, #0xb2
	ldrh r3, [r7]
	movs r0, #0
	movs r1, #0x80
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r2, r4, #0
	adds r2, #0xae
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _08034A50
	rsbs r0, r0, #0
_08034A50:
	muls r0, r1, r0
	asrs r1, r0, #8
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _08034A5E
	rsbs r1, r1, #0
_08034A5E:
	adds r0, r4, #0
	adds r0, #0xcc
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _08034A70
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
_08034A70:
	ldrh r0, [r5]
	ldrh r3, [r7]
	cmp r0, r3
	blo _08034A7E
	strh r6, [r7]
	strh r6, [r5]
	strh r6, [r2]
_08034A7E:
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08034A84:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08034A8C
sub_08034A8C: @ 0x08034A8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _08034AAC
	cmp r6, #0
	beq _08034B9A
_08034AAC:
	movs r0, #0
	bl get_obj_direct
	adds r4, r0, #0
	cmp r5, #0
	beq _08034AC8
	ldr r0, _08034AC4 @ =0x0000FFFF
	cmp r5, #0
	ble _08034AC0
	movs r0, #1
_08034AC0:
	adds r7, r0, #0
	b _08034ACA
	.align 2, 0
_08034AC4: .4byte 0x0000FFFF
_08034AC8:
	movs r7, #0
_08034ACA:
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	adds r1, r0, #0
	cmp r2, #0
	beq _08034AE4
	ldr r0, _08034AE0 @ =0x0000FFFF
	cmp r2, #0
	ble _08034ADC
	movs r0, #1
_08034ADC:
	adds r6, r0, #0
	b _08034AE6
	.align 2, 0
_08034AE0: .4byte 0x0000FFFF
_08034AE4:
	movs r6, #0
_08034AE6:
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	bge _08034AF2
	rsbs r3, r3, #0
_08034AF2:
	asrs r2, r1, #0x10
	cmp r2, #0
	bge _08034AFA
	rsbs r2, r2, #0
_08034AFA:
	cmp r3, r2
	ble _08034B02
	lsrs r0, r0, #0x10
	b _08034B04
_08034B02:
	lsrs r0, r1, #0x10
_08034B04:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08034B0E
	rsbs r0, r0, #0
_08034B0E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r5, #0
	cmp r5, sb
	bhs _08034B9A
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r6, #0x10
	asrs r7, r0, #0x10
	mov r0, r8
	lsls r0, r0, #4
	str r0, [sp]
	lsls r1, r7, #4
	mov sl, r1
	adds r6, r4, #0
	adds r6, #0xbd
_08034B32:
	bl sub_08034BAC
	ldr r1, [r4, #0x34]
	cmp r1, #0
	beq _08034B58
	ldrh r0, [r1, #2]
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	ldrh r2, [r4]
	adds r0, r0, r2
	strh r0, [r4]
	ldrh r0, [r1, #2]
	adds r1, r0, #0
	muls r1, r7, r1
	adds r0, r1, #0
	ldrh r2, [r4, #2]
	adds r0, r0, r2
	b _08034B64
_08034B58:
	ldrh r0, [r4]
	ldr r1, [sp]
	adds r0, r0, r1
	strh r0, [r4]
	ldrh r0, [r4, #2]
	add r0, sl
_08034B64:
	strh r0, [r4, #2]
	movs r2, #0
	ldrsh r0, [r4, r2]
	ldrb r1, [r6]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1e
	movs r2, #1
	bl sub_0801A7CC
	strh r0, [r4]
	movs r1, #2
	ldrsh r0, [r4, r1]
	ldrb r1, [r6]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1e
	movs r2, #1
	bl sub_0801A868
	strh r0, [r4, #2]
	adds r0, r4, #0
	bl sub_08034EB8
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, sb
	blo _08034B32
_08034B9A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08034BAC
sub_08034BAC: @ 0x08034BAC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	movs r0, #0
	movs r1, #3
	mov sb, r1
	mov r7, sp
_08034BBE:
	adds r4, r0, #1
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0xbc
	ldrb r0, [r6]
	lsls r0, r0, #0x1f
	mov r8, r4
	cmp r0, #0
	beq _08034CCC
	adds r2, r5, #0
	adds r2, #0xc8
	ldrb r0, [r2]
	movs r3, #2
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
	bl sub_080355AC
	adds r1, r5, #0
	adds r1, #0x9e
	strh r0, [r1]
	ldr r0, [r5, #0x40]
	ldrb r1, [r0, #4]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #2
	ldrb r0, [r6]
	movs r3, #0x1d
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6]
	ldr r0, [r5, #0x40]
	ldrb r1, [r0, #5]
	lsrs r1, r1, #6
	adds r4, r5, #0
	adds r4, #0xbd
	mov r0, sb
	ands r1, r0
	lsls r1, r1, #3
	ldrb r0, [r4]
	adds r3, #4
	adds r2, r3, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldr r1, [r5, #0x40]
	ldrh r0, [r1]
	strh r0, [r5]
	ldrh r0, [r1, #2]
	strh r0, [r5, #2]
	adds r0, r5, #0
	mov r1, sp
	bl sub_08036BEC
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	bl sub_08036CD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #5
	ldrb r3, [r4]
	movs r2, #0x61
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r3, r1
	orrs r3, r0
	strb r3, [r4]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1e
	ldrh r1, [r7]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	ldrh r2, [r7, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	adds r0, r3, #0
	bl sub_0801A978
	str r0, [r5, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08034CAC
	ldrb r2, [r6]
	lsls r0, r2, #0x19
	cmp r0, #0
	blt _08034CC4
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r4, [r0]
	adds r0, #1
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x88
	ldrh r1, [r1]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	bl sub_08035C0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08033374
	b _08034CC4
_08034CAC:
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	ldr r2, [r5, #0x40]
	ldrh r1, [r2, #4]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x17
	ldrb r2, [r2, #4]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1b
	bl sub_080332AC
_08034CC4:
	ldr r0, [r5, #0x40]
	bl sub_08034FC8
	str r0, [r5, #0x40]
_08034CCC:
	mov r3, r8
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bhi _08034CD8
	b _08034BBE
_08034CD8:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08034CE8
sub_08034CE8: @ 0x08034CE8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	bne _08034D0C
	lsls r0, r2, #0x10
	adds r1, r0, #0
	cmp r1, #0
	beq _08034D9C
	movs r0, #0
	mov r8, r0
	b _08034D18
_08034D0C:
	ldr r0, _08034D2C @ =0x0000FFFF
	cmp r1, #0
	ble _08034D14
	movs r0, #1
_08034D14:
	mov r8, r0
	lsls r1, r2, #0x10
_08034D18:
	asrs r3, r1, #0x10
	cmp r3, #0
	beq _08034D30
	ldr r0, _08034D2C @ =0x0000FFFF
	cmp r3, #0
	ble _08034D26
	movs r0, #1
_08034D26:
	adds r7, r0, #0
	b _08034D32
	.align 2, 0
_08034D2C: .4byte 0x0000FFFF
_08034D30:
	movs r7, #0
_08034D32:
	lsls r2, r4, #0x10
	asrs r0, r2, #0x10
	cmp r0, #0
	bge _08034D3C
	rsbs r0, r0, #0
_08034D3C:
	asrs r3, r1, #0x10
	cmp r3, #0
	bge _08034D44
	rsbs r3, r3, #0
_08034D44:
	cmp r0, r3
	ble _08034D4C
	lsrs r0, r2, #0x10
	b _08034D4E
_08034D4C:
	lsrs r0, r1, #0x10
_08034D4E:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08034D58
	rsbs r0, r0, #0
_08034D58:
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r4, #0
	cmp r4, r6
	bhs _08034D9C
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r7, #0x10
	asrs r7, r0, #0x10
_08034D6E:
	ldr r1, [r5, #0x34]
	ldrh r0, [r1, #2]
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
	ldrh r0, [r1, #2]
	adds r1, r0, #0
	muls r1, r7, r1
	adds r0, r1, #0
	ldrh r2, [r5, #2]
	adds r0, r0, r2
	strh r0, [r5, #2]
	adds r0, r5, #0
	bl sub_08034EB8
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _08034D6E
_08034D9C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08034DA8
sub_08034DA8: @ 0x08034DA8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	adds r2, r6, #0
	adds r2, #0xc8
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	bl sub_080355AC
	adds r1, r6, #0
	adds r1, #0x9e
	strh r0, [r1]
	ldr r0, [r6, #0x40]
	ldrb r1, [r0, #4]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	movs r0, #0xbc
	adds r0, r0, r6
	mov r8, r0
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #2
	mov r0, r8
	ldrb r2, [r0]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	ldr r0, [r6, #0x40]
	ldrb r1, [r0, #5]
	adds r7, r6, #0
	adds r7, #0xbd
	movs r4, #3
	lsrs r1, r1, #6
	lsls r1, r1, #3
	ldrb r2, [r7]
	movs r0, #0x19
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r7]
	ldr r1, [r6, #0x40]
	ldrh r0, [r1]
	strh r0, [r6]
	ldrh r0, [r1, #2]
	strh r0, [r6, #2]
	mov r5, sp
	adds r0, r6, #0
	mov r1, sp
	bl sub_08036BEC
	ldrb r0, [r7]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	bl sub_08036CD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r0, r4
	lsls r0, r0, #5
	ldrb r1, [r7]
	movs r3, #0x61
	rsbs r3, r3, #0
	ands r3, r1
	orrs r3, r0
	strb r3, [r7]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1e
	mov r0, sp
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	ldrh r2, [r5, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	adds r0, r3, #0
	bl sub_0801A978
	str r0, [r6, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08034E8C
	mov r0, r8
	ldrb r2, [r0]
	lsls r0, r2, #0x19
	cmp r0, #0
	blt _08034EA4
	adds r0, r6, #0
	adds r0, #0x85
	ldrb r4, [r0]
	adds r0, #1
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x88
	ldrh r1, [r1]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	bl sub_08035C0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08033374
	b _08034EA4
_08034E8C:
	adds r0, r6, #0
	adds r0, #0x85
	ldrb r0, [r0]
	ldr r2, [r6, #0x40]
	ldrh r1, [r2, #4]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x17
	ldrb r2, [r2, #4]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1b
	bl sub_080332AC
_08034EA4:
	ldr r0, [r6, #0x40]
	bl sub_08034FC8
	str r0, [r6, #0x40]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08034EB8
sub_08034EB8: @ 0x08034EB8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x8b
	ldrb r4, [r6]
	movs r0, #0x86
	adds r0, r0, r5
	mov r8, r0
	ldrb r0, [r0]
	adds r7, r5, #0
	adds r7, #0x88
	ldrh r1, [r7]
	movs r2, #4
	bl sub_08035C0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bne _08034F08
	ldr r2, [r5, #0x40]
	ldrh r1, [r2, #4]
	ldr r0, _08034F04 @ =0xFFFFC01F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r2, #4]
	ldr r2, [r5, #0x40]
	ldrb r1, [r2, #4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2, #4]
	b _08034F90
	.align 2, 0
_08034F04: .4byte 0xFFFFC01F
_08034F08:
	ldrb r4, [r6]
	mov r1, r8
	ldrb r0, [r1]
	ldrh r1, [r7]
	movs r2, #0
	bl sub_08035C0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bne _08034F40
	ldr r2, [r5, #0x40]
	ldrh r1, [r2, #4]
	ldr r0, _08034F3C @ =0xFFFFC01F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r2, #4]
	ldr r2, [r5, #0x40]
	ldrb r1, [r2, #4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #4]
	b _08034F90
	.align 2, 0
_08034F3C: .4byte 0xFFFFC01F
_08034F40:
	ldr r3, [r5, #0x40]
	ldrb r1, [r6]
	lsrs r1, r1, #3
	lsls r1, r1, #5
	ldrh r2, [r3, #4]
	ldr r4, _08034F7C @ =0xFFFFC01F
	adds r0, r4, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldr r3, [r5, #0x40]
	ldrb r0, [r6]
	movs r1, #7
	ands r1, r0
	ldrb r2, [r3, #4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #4]
	ldr r2, [r5, #0x40]
	ldrh r1, [r2, #4]
	lsls r0, r1, #0x12
	lsrs r0, r0, #0x17
	cmp r0, #0xa
	beq _08034F80
	cmp r0, #0xb
	beq _08034F86
	b _08034F90
	.align 2, 0
_08034F7C: .4byte 0xFFFFC01F
_08034F80:
	adds r0, r4, #0
	ands r0, r1
	b _08034F8E
_08034F86:
	adds r0, r4, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
_08034F8E:
	strh r0, [r2, #4]
_08034F90:
	ldr r3, [r5, #0x40]
	adds r0, r5, #0
	adds r0, #0xbd
	ldrb r1, [r0]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1e
	lsls r1, r1, #6
	ldrb r2, [r3, #5]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r1, [r5, #0x40]
	ldrh r0, [r5]
	strh r0, [r1]
	ldr r1, [r5, #0x40]
	ldrh r0, [r5, #2]
	strh r0, [r1, #2]
	ldr r0, [r5, #0x40]
	bl sub_08034FC8
	str r0, [r5, #0x40]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08034FC8
sub_08034FC8: @ 0x08034FC8
	push {lr}
	adds r0, #8
	ldr r1, _08034FDC @ =gUnknown_0200DE08
	cmp r0, r1
	blo _08034FD6
	ldr r2, _08034FE0 @ =0xFFFFFB00
	adds r0, r1, r2
_08034FD6:
	pop {r1}
	bx r1
	.align 2, 0
_08034FDC: .4byte gUnknown_0200DE08
_08034FE0: .4byte 0xFFFFFB00

	thumb_func_start sub_08034FE4
sub_08034FE4: @ 0x08034FE4
	push {lr}
	subs r0, #8
	ldr r1, _08034FF8 @ =gUnknown_0200D908
	cmp r0, r1
	bhs _08034FF4
	movs r2, #0x9f
	lsls r2, r2, #3
	adds r0, r1, r2
_08034FF4:
	pop {r1}
	bx r1
	.align 2, 0
_08034FF8: .4byte gUnknown_0200D908

	thumb_func_start sub_08034FFC
sub_08034FFC: @ 0x08034FFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	bl get_obj_direct
	adds r6, r0, #0
	ldr r5, _0803504C @ =gUnknown_0200D908
	movs r7, #0
	movs r0, #0x8b
	adds r0, r0, r6
	mov r8, r0
	movs r1, #0x86
	adds r1, r1, r6
	mov sl, r1
	movs r2, #0x88
	adds r2, r2, r6
	mov sb, r2
_08035024:
	mov r3, r8
	ldrb r4, [r3]
	mov r1, sl
	ldrb r0, [r1]
	mov r2, sb
	ldrh r1, [r2]
	movs r2, #4
	bl sub_08035C0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bne _08035050
	ldrb r0, [r5, #4]
	movs r3, #0x20
	rsbs r3, r3, #0
	ands r0, r3
	movs r1, #4
	b _08035084
	.align 2, 0
_0803504C: .4byte gUnknown_0200D908
_08035050:
	mov r0, r8
	ldrb r4, [r0]
	mov r1, sl
	ldrb r0, [r1]
	mov r2, sb
	ldrh r1, [r2]
	movs r2, #0
	bl sub_08035C0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bne _08035074
	ldrb r0, [r5, #4]
	movs r3, #0x20
	rsbs r3, r3, #0
	ands r0, r3
	b _08035086
_08035074:
	mov r1, r8
	ldrb r0, [r1]
	movs r1, #7
	ands r1, r0
	ldrb r0, [r5, #4]
	movs r2, #0x20
	rsbs r2, r2, #0
	ands r0, r2
_08035084:
	orrs r0, r1
_08035086:
	strb r0, [r5, #4]
	mov r3, r8
	ldrb r0, [r3]
	lsrs r0, r0, #3
	cmp r0, #0xa
	bne _080350A4
	ldrh r0, [r5, #4]
	ldr r2, _080350A0 @ =0xFFFFC01F
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r5, #4]
	b _080350B2
	.align 2, 0
_080350A0: .4byte 0xFFFFC01F
_080350A4:
	lsls r0, r0, #5
	ldrh r1, [r5, #4]
	ldr r3, _0803510C @ =0xFFFFC01F
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strh r1, [r5, #4]
_080350B2:
	adds r0, r6, #0
	adds r0, #0xbd
	ldrb r1, [r0]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1e
	lsls r1, r1, #6
	ldrb r2, [r5, #5]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #5]
	ldrh r0, [r6]
	strh r0, [r5]
	ldrh r0, [r6, #2]
	strh r0, [r5, #2]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r5, #8
	cmp r7, #0x9f
	bls _08035024
	ldr r5, _08035110 @ =gUnknown_0200DD08
	movs r7, #0
_080350E0:
	adds r0, r7, #0
	bl get_obj_direct
	str r5, [r0, #0x40]
	ldrh r1, [r6]
	strh r1, [r0]
	ldrh r1, [r6, #2]
	strh r1, [r0, #2]
	subs r5, #0xa0
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #4
	bls _080350E0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803510C: .4byte 0xFFFFC01F
_08035110: .4byte gUnknown_0200DD08

	thumb_func_start sub_08035114
sub_08035114: @ 0x08035114
	push {r4, r5, lr}
	movs r5, #1
_08035118:
	adds r0, r5, #0
	bl get_obj_direct
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_08035138
	str r0, [r4, #0x40]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bls _08035118
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08035138
sub_08035138: @ 0x08035138
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _08035146
	movs r0, #0
	b _0803516A
_08035146:
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	ldr r1, [r0, #0x40]
	movs r5, #0x14
	movs r4, #0
_08035156:
	adds r0, r1, #0
	bl sub_08034FE4
	adds r1, r0, #0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _08035156
	adds r0, r1, #0
_0803516A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08035170
sub_08035170: @ 0x08035170
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	add r1, sp, #4
	strh r0, [r1]
	adds r0, r1, #0
	ldrh r0, [r0]
	cmp r0, #0
	beq _080351D4
	movs r0, #0
	bl get_obj_direct
	adds r6, r0, #0
	ldr r4, _080351D8 @ =gUnknown_0200D908
	movs r5, #0
	movs r7, #0x1f
	movs r0, #0x20
	rsbs r0, r0, #0
	mov r8, r0
	ldr r3, _080351DC @ =0xFFFFC01F
_0803519E:
	adds r0, r6, #0
	adds r0, #0x8b
	ldrb r0, [r0]
	movs r1, #7
	ands r1, r0
	ands r1, r7
	ldrb r2, [r4, #4]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #4]
	ldrh r1, [r4, #4]
	adds r0, r3, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r4, #4]
	ldrh r0, [r6]
	strh r0, [r4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #2]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #8
	cmp r5, #0x9f
	bls _0803519E
_080351D4:
	movs r5, #0
	b _08035260
	.align 2, 0
_080351D8: .4byte gUnknown_0200D908
_080351DC: .4byte 0xFFFFC01F
_080351E0:
	mov r0, sl
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _080351FA
	ldr r1, [r6, #0x40]
	ldrh r0, [r6]
	strh r0, [r1]
	ldr r1, [r6, #0x40]
	ldrh r0, [r6, #2]
	strh r0, [r1, #2]
	b _08035286
_080351FA:
	ldr r4, [r6, #0x40]
	movs r5, #0
	movs r7, #0
	movs r1, #0x1f
	mov sb, r1
	movs r2, #0x20
	rsbs r2, r2, #0
	mov r8, r2
_0803520A:
	movs r0, #0x14
	str r0, [sp]
	adds r0, r6, #0
	mov r1, sl
	adds r2, r4, #0
	adds r3, r7, #0
	bl sub_08002E8C
	cmp r5, #0
	beq _08035246
	ldr r1, [r4]
	ldr r0, [r5]
	cmp r1, r0
	beq _08035232
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0803677C
	mov r1, sb
	b _0803523A
_08035232:
	ldrb r1, [r5, #4]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	mov r0, sb
_0803523A:
	ands r1, r0
	ldrb r0, [r4, #4]
	mov r2, r8
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #4]
_08035246:
	adds r5, r4, #0
	adds r0, r5, #0
	bl sub_08034FE4
	adds r4, r0, #0
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x13
	bls _0803520A
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	lsrs r5, r0, #0x10
_08035260:
	cmp r5, #3
	bhi _08035286
	adds r0, r5, #0
	bl get_obj_direct
	adds r6, r0, #0
	adds r4, r5, #1
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	mov sl, r0
	adds r0, r6, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	str r4, [sp, #8]
	cmp r0, #0
	bne _080351E0
_08035286:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08035298
sub_08035298: @ 0x08035298
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	ldr r0, _080352F4 @ =gGame
	ldr r1, _080352F8 @ =0x00008299
	adds r0, r0, r1
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r7, r0, #0
	ldr r4, [r7, #0x40]
	movs r6, #0
	movs r5, #0
	movs r2, #0x1f
	mov sl, r2
	movs r0, #0x20
	rsbs r0, r0, #0
	mov sb, r0
_080352CA:
	movs r0, #0x14
	str r0, [sp]
	adds r0, r7, #0
	mov r1, r8
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08002E8C
	cmp r6, #0
	beq _08035310
	ldr r1, [r4]
	ldr r0, [r6]
	cmp r1, r0
	beq _080352FC
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0803677C
	mov r1, sl
	b _08035304
	.align 2, 0
_080352F4: .4byte gGame
_080352F8: .4byte 0x00008299
_080352FC:
	ldrb r1, [r6, #4]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	mov r0, sl
_08035304:
	ands r1, r0
	ldrb r0, [r4, #4]
	mov r2, sb
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #4]
_08035310:
	adds r6, r4, #0
	adds r0, r6, #0
	bl sub_08034FE4
	adds r4, r0, #0
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x13
	bls _080352CA
	ldr r4, _08035378 @ =gGame
	ldr r0, _0803537C @ =0x00008299
	adds r4, r4, r0
	ldrb r0, [r4]
	bl get_obj_direct
	adds r5, r0, #0
	ldrb r0, [r4]
	bl sub_08035138
	adds r4, r0, #0
	ldrb r1, [r6, #4]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	ldrb r2, [r4, #4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #4]
	ldrh r1, [r4, #4]
	ldr r0, _08035380 @ =0xFFFFC01F
	ands r0, r1
	strh r0, [r4, #4]
	mov r1, r8
	ldrh r0, [r1]
	strh r0, [r4]
	ldrh r0, [r1, #2]
	strh r0, [r4, #2]
	ldrh r0, [r1]
	strh r0, [r5]
	ldrh r0, [r1, #2]
	strh r0, [r5, #2]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035378: .4byte gGame
_0803537C: .4byte 0x00008299
_08035380: .4byte 0xFFFFC01F

	thumb_func_start sub_08035384
sub_08035384: @ 0x08035384
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	ldr r4, _0803540C @ =gUnknown_0200D908
	movs r6, #0
	lsrs r5, r2, #0x10
	asrs r2, r2, #0x10
	mov ip, r2
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #0x1f
	ands r5, r0
	movs r0, #0x20
	rsbs r0, r0, #0
	mov sl, r0
	asrs r7, r3, #0x10
	lsls r3, r3, #7
	lsrs r3, r3, #0x12
_080353BC:
	cmp ip, r2
	beq _080353CA
	ldrb r1, [r4, #4]
	mov r0, sl
	ands r0, r1
	orrs r0, r5
	strb r0, [r4, #4]
_080353CA:
	cmp r7, r2
	beq _080353D8
	ldrh r1, [r4, #4]
	ldr r0, _08035410 @ =0xFFFFC01F
	ands r0, r1
	orrs r0, r3
	strh r0, [r4, #4]
_080353D8:
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r4, #8
	cmp r6, #0x9f
	bls _080353BC
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803540C: .4byte gUnknown_0200D908
_08035410: .4byte 0xFFFFC01F

	thumb_func_start sub_08035414
sub_08035414: @ 0x08035414
	push {r4, r5, lr}
	movs r0, #0
	bl get_obj_direct
	adds r4, r0, #0
	ldr r0, [r4, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08035436
	adds r0, r4, #0
	adds r0, #0xca
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
	b _080354C6
_08035436:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrh r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _080354A2
	ldr r0, _0803547C @ =gGame
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _080354C0
	adds r2, r4, #0
	adds r2, #0xc8
	ldrb r1, [r2]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _08035480
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	bl sub_080355AC
	strh r0, [r5]
	adds r0, r4, #0
	adds r0, #0xbc
	ldrb r2, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r0, #0
	movs r1, #0
	bl sub_080332AC
	b _080354C0
	.align 2, 0
_0803547C: .4byte gGame
_08035480:
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_080355CC
	strh r0, [r5]
	adds r0, r4, #0
	adds r0, #0xbc
	ldrb r2, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r0, #0
	movs r1, #9
	bl sub_080332AC
	b _080354C0
_080354A2:
	adds r0, r4, #0
	adds r0, #0xc8
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _080354C0
	adds r0, r4, #0
	adds r0, #0xbc
	ldrb r2, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r0, #0
	movs r1, #0
	bl sub_080332AC
_080354C0:
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
_080354C6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080354CC
sub_080354CC: @ 0x080354CC
	push {r4, r5, r6, r7, lr}
	movs r0, #0
	movs r7, #7
_080354D2:
	adds r4, r0, #1
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r5, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	adds r6, r4, #0
	cmp r0, #0
	beq _0803559E
	ldr r0, [r5, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08035502
	adds r0, r5, #0
	adds r0, #0xca
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
	b _0803559E
_08035502:
	adds r0, r5, #0
	adds r0, #0x9e
	ldrh r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	bne _08035576
	ldr r0, _0803554C @ =gGame
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _08035598
	adds r2, r5, #0
	adds r2, #0xc8
	ldrb r1, [r2]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _08035550
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r2]
	bl sub_080355AC
	strh r0, [r4]
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x8b
	ldrb r1, [r1]
	adds r2, r7, #0
	ands r2, r1
	movs r1, #0
	bl sub_080332AC
	b _08035598
	.align 2, 0
_0803554C: .4byte gGame
_08035550:
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_080355CC
	strh r0, [r4]
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x8b
	ldrb r1, [r1]
	adds r2, r7, #0
	ands r2, r1
	movs r1, #9
	bl sub_080332AC
	b _08035598
_08035576:
	adds r0, r5, #0
	adds r0, #0xc8
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08035598
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x8b
	ldrb r1, [r1]
	adds r2, r7, #0
	ands r2, r1
	movs r1, #0
	bl sub_080332AC
_08035598:
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
_0803559E:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _080354D2
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080355AC
sub_080355AC: @ 0x080355AC
	push {lr}
	bl sub_080031E0
	movs r1, #0x1f
	ands r1, r0
	adds r1, #1
	lsls r0, r1, #4
	subs r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080355CC
sub_080355CC: @ 0x080355CC
	push {lr}
	adds r2, r0, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	bne _080355E4
	adds r0, r2, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	b _080355EE
_080355E4:
	adds r0, r2, #0
	adds r0, #0x8b
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
_080355EE:
	adds r0, #0x48
	adds r1, r0, #0
	adds r0, r2, #0
	bl sub_08036960
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1

	thumb_func_start sub_08035600
sub_08035600: @ 0x08035600
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r7, _08035648 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r7
	orrs r0, r1
	str r0, [sp]
	ldrh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x14
	mov r6, sp
	strh r3, [r6, #2]
	adds r0, r4, #0
	adds r0, #0x88
	ldrh r1, [r0]
	ldr r0, _0803564C @ =0x000001D3
	cmp r1, r0
	bne _08035634
	b _08035732
_08035634:
	cmp r1, r0
	bgt _08035656
	cmp r1, #0xa8
	beq _080356A8
	cmp r1, #0xa8
	bgt _08035650
	cmp r1, #0x27
	beq _0803567A
	b _0803577E
	.align 2, 0
_08035648: .4byte 0xFFFF0000
_0803564C: .4byte 0x000001D3
_08035650:
	cmp r1, #0xd9
	beq _08035706
	b _0803577E
_08035656:
	ldr r0, _0803566C @ =0x000001DF
	cmp r1, r0
	bne _0803565E
	b _08035790
_0803565E:
	cmp r1, r0
	bgt _08035670
	subs r0, #3
	cmp r1, r0
	bne _0803566A
	b _08035790
_0803566A:
	b _0803577E
	.align 2, 0
_0803566C: .4byte 0x000001DF
_08035670:
	movs r0, #0xf0
	lsls r0, r0, #1
	cmp r1, r0
	beq _08035758
	b _0803577E
_0803567A:
	adds r0, r4, #0
	adds r0, #0x8b
	ldrb r0, [r0]
	cmp r0, #0x44
	bne _0803577E
	movs r1, #2
	ldrsh r0, [r5, r1]
	ldrh r1, [r5, #6]
	lsrs r1, r1, #1
	adds r0, r0, r1
	movs r2, #2
	ldrsh r1, [r6, r2]
	cmp r0, r1
	ble _0803577E
	adds r0, r3, #4
	strh r0, [r6, #2]
	adds r2, r4, #0
	adds r2, #0x14
	adds r0, r5, #0
	mov r1, sp
	bl sub_080357D0
	b _080357C2
_080356A8:
	movs r0, #2
	ldrsh r2, [r6, r0]
	movs r0, #2
	ldrsh r1, [r5, r0]
	ldrh r0, [r5, #4]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r2, r1
	bge _080356D0
	ldrh r0, [r4, #0x16]
	lsrs r0, r0, #1
	adds r0, r3, r0
	strh r0, [r6, #2]
	adds r2, r4, #0
	adds r2, #0x14
	adds r0, r5, #0
	mov r1, sp
	bl sub_080357D0
	b _080357C2
_080356D0:
	ldrh r1, [r4, #0x14]
	ldr r0, [sp, #4]
	ands r0, r7
	orrs r0, r1
	str r0, [sp, #4]
	ldrh r0, [r4, #0x16]
	adds r0, #0x20
	add r2, sp, #4
	strh r0, [r2, #2]
	adds r0, r5, #0
	mov r1, sp
	bl sub_080357D0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803577E
	movs r2, #2
	ldrsh r1, [r6, r2]
	movs r2, #2
	ldrsh r0, [r5, r2]
	ldrh r5, [r5, #6]
	adds r0, r0, r5
	subs r1, r1, r0
	cmp r1, #0x30
	ble _08035790
	movs r0, #0
	b _080357C6
_08035706:
	movs r1, #2
	ldrsh r0, [r5, r1]
	ldrh r2, [r5, #6]
	adds r0, r0, r2
	movs r2, #2
	ldrsh r1, [r6, r2]
	cmp r0, r1
	bge _0803577E
	adds r0, r3, #0
	subs r0, #0x20
	strh r0, [r6, #2]
	ldrh r0, [r4, #0x14]
	add r2, sp, #4
	strh r0, [r2]
	ldrh r0, [r4, #0x16]
	adds r0, #0x20
	strh r0, [r2, #2]
	adds r0, r5, #0
	mov r1, sp
	bl sub_080357D0
	b _080357C2
_08035732:
	movs r1, #2
	ldrsh r0, [r5, r1]
	ldrh r2, [r5, #6]
	adds r0, r0, r2
	movs r2, #2
	ldrsh r1, [r6, r2]
	cmp r0, r1
	bge _0803577E
	ldrh r0, [r4, #0x14]
	add r2, sp, #4
	strh r0, [r2]
	ldrh r0, [r4, #0x16]
	subs r0, #0x28
	strh r0, [r2, #2]
	adds r0, r5, #0
	mov r1, sp
	bl sub_080357D0
	b _080357C2
_08035758:
	movs r1, #2
	ldrsh r0, [r5, r1]
	ldrh r2, [r5, #6]
	adds r0, r0, r2
	movs r2, #2
	ldrsh r1, [r6, r2]
	cmp r0, r1
	bge _0803577E
	ldrh r0, [r4, #0x14]
	add r2, sp, #4
	strh r0, [r2]
	ldrh r0, [r4, #0x16]
	subs r0, #0x28
	strh r0, [r2, #2]
	adds r0, r5, #0
	mov r1, sp
	bl sub_080357D0
	b _080357C2
_0803577E:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	bne _08035790
	adds r0, r4, #0
	adds r0, #0xcd
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08035794
_08035790:
	movs r0, #1
	b _080357C6
_08035794:
	ldr r0, _080357B0 @ =gGame
	ldrb r1, [r0, #0x11]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _080357B4
	adds r2, r4, #0
	adds r2, #0x14
	adds r0, r5, #0
	mov r1, sp
	bl sub_080357D0
	b _080357C2
	.align 2, 0
_080357B0: .4byte gGame
_080357B4:
	adds r2, r4, #0
	adds r2, #0x14
	adds r0, r5, #0
	mov r1, sp
	adds r3, r4, #0
	bl sub_08035820
_080357C2:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_080357C6:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080357D0
sub_080357D0: @ 0x080357D0
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	movs r0, #0
	ldrsh r2, [r3, r0]
	movs r1, #0
	ldrsh r5, [r4, r1]
	ldrh r0, [r6]
	lsrs r1, r0, #1
	adds r0, r5, r1
	cmp r2, r0
	bgt _08035818
	ldrh r0, [r3, #4]
	adds r0, r2, r0
	subs r1, r5, r1
	cmp r0, r1
	blt _08035818
	movs r2, #2
	ldrsh r1, [r3, r2]
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bgt _08035818
	movs r1, #2
	ldrsh r0, [r3, r1]
	ldrh r3, [r3, #6]
	adds r0, r0, r3
	movs r2, #2
	ldrsh r1, [r4, r2]
	ldrh r2, [r6, #2]
	subs r1, r1, r2
	cmp r0, r1
	blt _08035818
	movs r0, #1
	b _0803581A
_08035818:
	movs r0, #0
_0803581A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08035820
sub_08035820: @ 0x08035820
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	adds r6, r3, #0
	ldr r0, _08035868 @ =gGame
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _080358A2
	movs r0, #0
	ldrsh r2, [r4, r0]
	movs r0, #0
	ldrsh r1, [r5, r0]
	ldrh r0, [r7]
	lsrs r0, r0, #1
	adds r1, r1, r0
	cmp r2, r1
	ble _08035888
	cmp r6, #0
	beq _0803586C
	adds r0, r6, #0
	adds r0, #0xcb
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0803586C
	adds r0, r6, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	bl sub_0801A61C
	b _08035870
	.align 2, 0
_08035868: .4byte gGame
_0803586C:
	bl sub_0801A5EC
_08035870:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r4]
	subs r0, r1, r0
	movs r1, #0xf0
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, r1
	bge _0803589E
_08035888:
	movs r0, #0
	ldrsh r2, [r4, r0]
	ldrh r1, [r4, #4]
	adds r2, r2, r1
	movs r0, #0
	ldrsh r1, [r5, r0]
	ldrh r0, [r7]
	lsrs r0, r0, #1
	subs r1, r1, r0
	cmp r2, r1
	bge _080358BE
_0803589E:
	movs r0, #0
	b _08035938
_080358A2:
	movs r1, #0
	ldrsh r2, [r4, r1]
	movs r0, #0
	ldrsh r3, [r5, r0]
	ldrh r0, [r7]
	lsrs r1, r0, #1
	adds r0, r3, r1
	cmp r2, r0
	bgt _0803589E
	ldrh r0, [r4, #4]
	adds r0, r2, r0
	subs r1, r3, r1
	cmp r0, r1
	blt _0803589E
_080358BE:
	ldr r0, _080358F4 @ =gGame
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08035916
	movs r2, #2
	ldrsh r1, [r4, r2]
	movs r2, #2
	ldrsh r0, [r5, r2]
	cmp r1, r0
	ble _08035922
	cmp r6, #0
	beq _080358F8
	adds r0, r6, #0
	adds r0, #0xcb
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _080358F8
	adds r0, r6, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	bl sub_0801A638
	b _080358FC
	.align 2, 0
_080358F4: .4byte gGame
_080358F8:
	bl sub_0801A604
_080358FC:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r4, #2]
	subs r0, r1, r0
	movs r1, #0xa0
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #2
	ldrsh r0, [r5, r2]
	cmp r0, r1
	bge _0803589E
	b _08035922
_08035916:
	movs r0, #2
	ldrsh r1, [r4, r0]
	movs r2, #2
	ldrsh r0, [r5, r2]
	cmp r1, r0
	bgt _0803589E
_08035922:
	movs r1, #2
	ldrsh r0, [r4, r1]
	ldrh r4, [r4, #6]
	adds r0, r0, r4
	movs r2, #2
	ldrsh r1, [r5, r2]
	ldrh r2, [r7, #2]
	subs r1, r1, r2
	cmp r0, r1
	blt _0803589E
	movs r0, #1
_08035938:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08035940
sub_08035940: @ 0x08035940
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r0, #0
	movs r0, #1
	ldrsb r0, [r7, r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r3, r1, #0x10
	orrs r3, r2
	lsls r0, r3, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0xef
	bgt _080359D0
	asrs r6, r3, #0x10
	cmp r6, #0x9f
	bgt _080359D0
	movs r2, #0
	ldr r0, [sp, #4]
	ldr r1, _080359CC @ =0xFFFF0000
	ands r0, r1
	str r0, [sp, #4]
	add r4, sp, #4
	strh r2, [r4, #2]
	movs r0, #0xf0
	strh r0, [r4, #4]
	movs r0, #0xa0
	strh r0, [r4, #6]
	ldr r1, [r7]
	lsrs r0, r1, #0x1e
	lsls r1, r1, #2
	lsrs r1, r1, #0x1e
	mov r7, sp
	adds r7, #2
	mov r2, sp
	adds r3, r7, #0
	bl sub_0800282C
	movs r0, #0
	ldrsh r2, [r4, r0]
	mov r0, sp
	ldrh r1, [r0]
	adds r0, r5, r1
	cmp r2, r0
	bgt _080359D0
	ldrh r0, [r4, #4]
	adds r0, r2, r0
	subs r1, r5, r1
	cmp r0, r1
	blt _080359D0
	movs r0, #2
	ldrsh r2, [r4, r0]
	ldrh r1, [r7]
	adds r0, r6, r1
	cmp r2, r0
	bgt _080359D0
	ldrh r0, [r4, #6]
	adds r0, r2, r0
	subs r1, r6, r1
	cmp r0, r1
	blt _080359D0
	movs r0, #1
	b _080359D2
	.align 2, 0
_080359CC: .4byte 0xFFFF0000
_080359D0:
	movs r0, #0
_080359D2:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080359DC
sub_080359DC: @ 0x080359DC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xc7
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08035A82
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08036CE0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	ldrh r2, [r5, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x18
	bl sub_0801A978
	adds r1, r5, #0
	adds r1, #0xbd
	ldrb r1, [r1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1e
	movs r2, #3
	subs r2, r2, r1
	adds r4, r5, #0
	adds r4, #0xba
	strb r2, [r4]
	movs r1, #0xff
	ands r2, r1
	adds r3, r5, #0
	adds r3, #0xb9
	strb r2, [r3]
	adds r1, r5, #0
	adds r1, #0xb8
	strb r2, [r1]
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1d
	cmp r0, #4
	bhi _08035A82
	lsls r0, r0, #2
	ldr r1, _08035A40 @ =_08035A44
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08035A40: .4byte _08035A44
_08035A44: @ jump table
	.4byte _08035A82 @ case 0
	.4byte _08035A58 @ case 1
	.4byte _08035A6E @ case 2
	.4byte _08035A78 @ case 3
	.4byte _08035A7E @ case 4
_08035A58:
	ldrb r0, [r3]
	cmp r0, #1
	bls _08035A62
	subs r0, #1
	strb r0, [r3]
_08035A62:
	ldrb r0, [r4]
	cmp r0, #1
	bls _08035A82
	subs r0, #1
	strb r0, [r4]
	b _08035A82
_08035A6E:
	ldrb r0, [r3]
	cmp r0, #1
	bls _08035A82
	subs r0, #1
	b _08035A80
_08035A78:
	movs r0, #1
	strb r0, [r4]
	b _08035A80
_08035A7E:
	movs r0, #1
_08035A80:
	strb r0, [r3]
_08035A82:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08035A88
sub_08035A88: @ 0x08035A88
	push {r4, lr}
	adds r0, #0x88
	ldr r2, _08035AD0 @ =0xFFFFFDD9
	adds r1, r2, #0
	ldrh r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #4
	bhi _08035ACA
	ldr r0, _08035AD4 @ =gGame
	ldr r1, _08035AD8 @ =0x00008494
	adds r4, r0, r1
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08035ABE
	ldr r0, _08035ADC @ =0x000003E3
	bl get_flag
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08035ACA
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08035AE4
_08035ABE:
	ldr r0, _08035AD4 @ =gGame
	ldr r2, _08035AE0 @ =0x00008299
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #1
	bls _08035AE4
_08035ACA:
	movs r0, #1
	b _08035AE6
	.align 2, 0
_08035AD0: .4byte 0xFFFFFDD9
_08035AD4: .4byte gGame
_08035AD8: .4byte 0x00008494
_08035ADC: .4byte 0x000003E3
_08035AE0: .4byte 0x00008299
_08035AE4:
	movs r0, #0
_08035AE6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08035AEC
sub_08035AEC: @ 0x08035AEC
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	add r5, sp, #4
	adds r1, r5, #0
	bl sub_08036BEC
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldrh r1, [r4, #0x14]
	lsrs r1, r1, #1
	subs r0, r0, r1
	cmp r0, #0
	bge _08035B28
	lsls r0, r1, #4
	strh r0, [r4]
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
_08035B28:
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldrh r1, [r4, #0x14]
	lsrs r1, r1, #1
	adds r0, r0, r1
	cmp r0, r6
	ble _08035B42
	subs r0, r6, r1
	lsls r0, r0, #4
	strh r0, [r4]
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
_08035B42:
	movs r1, #2
	ldrsh r0, [r5, r1]
	ldrh r1, [r4, #0x16]
	subs r0, r0, r1
	cmp r0, #0
	bge _08035B58
	lsls r0, r1, #4
	strh r0, [r4, #2]
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
_08035B58:
	movs r1, #2
	ldrsh r0, [r5, r1]
	cmp r0, r2
	ble _08035B6A
	lsls r0, r2, #4
	strh r0, [r4, #2]
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
_08035B6A:
	mov r0, sp
	ldrh r0, [r0]
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08035B78
sub_08035B78: @ 0x08035B78
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r0, r5, #0
	adds r0, #0x88
	ldrh r1, [r0]
	movs r0, #0xe6
	lsls r0, r0, #1
	cmp r1, r0
	bne _08035BCC
	adds r0, r5, #0
	adds r0, #0xc4
	ldrh r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x18
	cmp r0, #0x22
	bne _08035BCC
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08035C04
	movs r1, #2
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08035C04
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, r6
	bgt _08035C04
	movs r1, #2
	ldrsh r0, [r4, r1]
	cmp r0, r3
	bgt _08035C04
	b _08035C00
_08035BCC:
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08035C04
	movs r1, #2
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08035C04
	movs r0, #0
	ldrsh r2, [r4, r0]
	ldrh r0, [r5, #0x14]
	lsrs r1, r0, #1
	subs r0, r2, r1
	cmp r0, #0
	blt _08035C04
	adds r0, r2, r1
	cmp r0, r6
	bgt _08035C04
	movs r0, #2
	ldrsh r1, [r4, r0]
	ldrh r0, [r5, #0x16]
	subs r0, r1, r0
	cmp r0, #0
	blt _08035C04
	cmp r1, r3
	bgt _08035C04
_08035C00:
	movs r0, #1
	b _08035C06
_08035C04:
	movs r0, #0
_08035C06:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08035C0C
sub_08035C0C: @ 0x08035C0C
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #7
	bhi _08035C50
	lsls r0, r0, #2
	ldr r1, _08035C24 @ =_08035C28
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08035C24: .4byte _08035C28
_08035C28: @ jump table
	.4byte _08035C48 @ case 0
	.4byte _08035C48 @ case 1
	.4byte _08035C50 @ case 2
	.4byte _08035C50 @ case 3
	.4byte _08035C50 @ case 4
	.4byte _08035C50 @ case 5
	.4byte _08035C50 @ case 6
	.4byte _08035C48 @ case 7
_08035C48:
	ldr r0, _08035C4C @ =gUnknown_080C2102
	b _08035C52
	.align 2, 0
_08035C4C: .4byte gUnknown_080C2102
_08035C50:
	ldr r0, _08035C60 @ =gUnknown_080C20F2
_08035C52:
	adds r0, r3, r0
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_08035C60: .4byte gUnknown_080C20F2

	thumb_func_start sub_08035C64
sub_08035C64: @ 0x08035C64
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0
	adds r3, r0, #0
	adds r3, #0x81
_08035C70:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r1, r0
	bhs _08035C7C
	adds r0, r2, #0
	b _08035C88
_08035C7C:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #3
	bls _08035C70
	movs r0, #0
_08035C88:
	pop {r1}
	bx r1

	thumb_func_start sub_08035C8C
sub_08035C8C: @ 0x08035C8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	mov r8, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r6, #0
	bl sub_08035FE4
	ldr r0, _08035D38 @ =gUnknown_08D2E0DC
	adds r0, r4, r0
	ldrb r7, [r0]
	ldr r0, _08035D3C @ =gUnknown_08D2E0E2
	adds r4, r4, r0
	ldrb r4, [r4]
	movs r0, #0x30
	bl sub_0803B800
	ldrb r2, [r0, #0x14]
	movs r3, #2
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r1, r2
	movs r2, #3
	rsbs r2, r2, #0
	mov ip, r2
	ands r1, r2
	subs r2, #2
	mov sl, r2
	ands r1, r2
	movs r2, #0xf
	ands r5, r2
	lsls r5, r5, #3
	movs r2, #0x79
	rsbs r2, r2, #0
	mov sb, r2
	ands r1, r2
	orrs r1, r5
	strb r1, [r0, #0x14]
	movs r2, #0
	strh r7, [r0, #2]
	mov r1, r8
	muls r1, r4, r1
	strh r1, [r0]
	strh r2, [r0, #0xa]
	adds r4, r0, #0
	adds r4, #0x2c
	ldrb r1, [r4]
	ands r3, r1
	mov r1, ip
	ands r3, r1
	mov r1, sl
	ands r3, r1
	mov r1, sb
	ands r3, r1
	strb r3, [r4]
	strh r2, [r0, #0x1a]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x22]
	str r0, [r6, #0x34]
	str r0, [r6, #0x30]
	adds r6, #0xc7
	ldrb r1, [r6]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r6]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035D38: .4byte gUnknown_08D2E0DC
_08035D3C: .4byte gUnknown_08D2E0E2

	thumb_func_start sub_08035D40
sub_08035D40: @ 0x08035D40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	adds r5, r1, #0
	adds r4, r2, #0
	mov r8, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r0, sb
	bl sub_08035FE4
	ldr r0, _08035DF8 @ =gUnknown_08D2E0DC
	adds r4, r4, r0
	ldrb r7, [r4]
	movs r0, #0x30
	bl sub_0803B800
	adds r6, r0, #0
	ldrb r1, [r6, #0x14]
	movs r4, #2
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	movs r1, #0xf
	ands r5, r1
	lsls r5, r5, #3
	movs r1, #0x79
	rsbs r1, r1, #0
	mov sl, r1
	ands r0, r1
	orrs r0, r5
	strb r0, [r6, #0x14]
	movs r5, #0
	strh r7, [r6, #2]
	mov r0, r8
	lsls r0, r0, #4
	mov r8, r0
	adds r1, r7, #0
	bl __divsi3
	strh r0, [r6]
	strh r5, [r6, #0xa]
	adds r1, r6, #0
	adds r1, #0x2c
	ldrb r0, [r1]
	ands r4, r0
	movs r0, #3
	rsbs r0, r0, #0
	ands r4, r0
	subs r0, #2
	ands r4, r0
	mov r0, sl
	ands r4, r0
	strb r4, [r1]
	strh r5, [r6, #0x1a]
	strh r5, [r6, #0x18]
	strh r5, [r6, #0x22]
	mov r1, sb
	str r6, [r1, #0x34]
	str r6, [r1, #0x30]
	movs r0, #0xc7
	add sb, r0
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	mov r1, sb
	strb r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035DF8: .4byte gUnknown_08D2E0DC

	thumb_func_start sub_08035DFC
sub_08035DFC: @ 0x08035DFC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov sb, r2
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	bl sub_08035FE4
	movs r0, #0x30
	bl sub_0803B800
	adds r7, r0, #0
	cmp r5, #0
	bne _08035E1E
	movs r5, #1
_08035E1E:
	ldrb r0, [r7, #0x14]
	movs r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	mov r8, r1
	ands r0, r1
	subs r1, #2
	mov ip, r1
	ands r0, r1
	movs r4, #0x79
	rsbs r4, r4, #0
	ands r0, r4
	strb r0, [r7, #0x14]
	movs r2, #0
	strh r2, [r7, #2]
	strh r5, [r7]
	movs r0, #1
	strh r0, [r7, #0xa]
	adds r3, r7, #0
	adds r3, #0x2c
	ldrb r1, [r3]
	subs r0, #3
	ands r0, r1
	mov r1, r8
	ands r0, r1
	mov r1, ip
	ands r0, r1
	ands r0, r4
	strb r0, [r3]
	strh r2, [r7, #0x1a]
	strh r2, [r7, #0x18]
	strh r2, [r7, #0x22]
	str r7, [r6, #0x34]
	str r7, [r6, #0x30]
	adds r2, r6, #0
	adds r2, #0xc7
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	mov r1, sb
	ldrh r0, [r1]
	lsls r0, r0, #4
	strh r0, [r6, #0x10]
	ldrh r0, [r1, #2]
	lsls r0, r0, #4
	strh r0, [r6, #0x12]
	ldrh r0, [r6]
	strh r0, [r6, #8]
	ldrh r0, [r6, #2]
	strh r0, [r6, #0xa]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08035E98
sub_08035E98: @ 0x08035E98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r4, [sp, #0x28]
	ldr r5, [sp, #0x2c]
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	mov sl, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, [sp]
	bl sub_08036030
	movs r0, #0x18
	bl sub_0803B800
	adds r2, r0, #0
	cmp r5, #0
	bne _08035EDE
	movs r5, #1
_08035EDE:
	ldrb r1, [r2, #0x14]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x74
	ands r0, r1
	strb r0, [r2, #0x14]
	movs r0, #0
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	strh r0, [r2, #6]
	strh r4, [r2, #8]
	strh r5, [r2]
	movs r0, #1
	strh r0, [r2, #0xa]
	strh r7, [r2, #0xc]
	mov r0, sb
	strh r0, [r2, #0x10]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r1, #0x78
	cmp r0, r1
	bne _08035F1A
	strh r7, [r2, #0xe]
	b _08035F1E
_08035F1A:
	mov r1, sl
	strh r1, [r2, #0xe]
_08035F1E:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08035F32
	mov r0, sb
	strh r0, [r2, #0x12]
	b _08035F36
_08035F32:
	mov r1, r8
	strh r1, [r2, #0x12]
_08035F36:
	ldr r0, [sp]
	str r2, [r0, #0x38]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08035F4C
sub_08035F4C: @ 0x08035F4C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	bl sub_08035FE4
	movs r0, #0x30
	bl sub_0803B800
	ldrb r2, [r0, #0x14]
	movs r3, #2
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r1, r2
	movs r2, #3
	rsbs r2, r2, #0
	mov r8, r2
	ands r1, r2
	movs r2, #4
	orrs r1, r2
	movs r6, #0x79
	rsbs r6, r6, #0
	ands r1, r6
	strb r1, [r0, #0x14]
	movs r2, #0
	strh r2, [r0, #2]
	strh r2, [r0]
	strh r2, [r0, #0xa]
	adds r5, r0, #0
	adds r5, #0x2c
	ldrb r1, [r5]
	ands r3, r1
	mov r1, r8
	ands r3, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r3, r1
	ands r3, r6
	strb r3, [r5]
	strh r2, [r0, #0x1a]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x22]
	str r0, [r4, #0x34]
	str r0, [r4, #0x30]
	adds r4, #0xc7
	ldrb r1, [r4]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08035FBC
sub_08035FBC: @ 0x08035FBC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08035FE4
	movs r0, #0xd8
	bl sub_0803B800
	str r0, [r4, #0x34]
	str r0, [r4, #0x30]
	adds r4, #0xc7
	ldrb r1, [r4]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08035FE4
sub_08035FE4: @ 0x08035FE4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _08036028
	bl sub_0803B860
	movs r0, #0
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	adds r2, r4, #0
	adds r2, #0xc8
	ldrb r1, [r2]
	subs r0, #0x41
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r3, [r0]
	cmp r3, #0
	bne _08036014
	adds r0, #2
	strb r3, [r0]
	b _08036028
_08036014:
	cmp r3, #4
	bhi _08036020
	adds r1, r4, #0
	adds r1, #0x87
	movs r0, #1
	b _08036026
_08036020:
	adds r1, r4, #0
	adds r1, #0x87
	movs r0, #2
_08036026:
	strb r0, [r1]
_08036028:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08036030
sub_08036030: @ 0x08036030
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _08036042
	bl sub_0803B860
	movs r0, #0
	str r0, [r4, #0x38]
_08036042:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08036048
sub_08036048: @ 0x08036048
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	ldr r0, _08036098 @ =gUnknown_08D2E0DC
	adds r0, r2, r0
	ldrb r4, [r0]
	ldr r0, _0803609C @ =gUnknown_08D2E0E8
	adds r2, r2, r0
	movs r3, #0
	ldrsb r3, [r2, r3]
	ldrb r2, [r5, #0x14]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	movs r2, #3
	rsbs r2, r2, #0
	ands r0, r2
	subs r2, #2
	ands r0, r2
	movs r2, #0xf
	ands r1, r2
	lsls r1, r1, #3
	movs r2, #0x79
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x14]
	movs r0, #0
	strh r4, [r5, #2]
	strh r0, [r5, #0xa]
	cmp r3, #0
	ble _080360A0
	adds r0, r3, #0
	muls r0, r6, r0
	b _080360A8
	.align 2, 0
_08036098: .4byte gUnknown_08D2E0DC
_0803609C: .4byte gUnknown_08D2E0E8
_080360A0:
	rsbs r1, r3, #0
	adds r0, r6, #0
	bl __divsi3
_080360A8:
	strh r0, [r5]
	ldrh r0, [r5]
	cmp r0, #0
	bne _080360B4
	movs r0, #1
	strh r0, [r5]
_080360B4:
	adds r2, r5, #0
	adds r2, #0x2c
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #0x74
	ands r0, r1
	strb r0, [r2]
	movs r0, #0
	strh r0, [r5, #0x1a]
	strh r0, [r5, #0x18]
	strh r0, [r5, #0x22]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080360E0
sub_080360E0: @ 0x080360E0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _080360F0
	adds r0, r4, #0
	bl sub_080361B0
_080360F0:
	ldr r2, [r4, #0x34]
	cmp r2, #0
	beq _080361A2
	ldrb r1, [r2, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08036116
	ldrh r0, [r2, #0xa]
	adds r0, #1
	strh r0, [r2, #0xa]
	ldr r1, [r4, #0x34]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1]
	cmp r0, r2
	bls _08036120
	movs r0, #0
	strh r0, [r1]
	b _08036120
_08036116:
	ldrh r0, [r2]
	cmp r0, #0
	beq _0803612A
	subs r0, #1
	strh r0, [r2]
_08036120:
	ldr r0, [r4, #0x34]
	ldrh r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	bne _080361A2
_0803612A:
	adds r0, r2, #0
	adds r0, #0x18
	str r0, [r4, #0x34]
	ldrb r1, [r0, #0x14]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0
	bne _080361A2
	adds r0, r4, #0
	bl sub_08035FE4
	adds r0, r4, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	adds r5, r4, #0
	adds r5, #0x85
	cmp r0, #0
	blt _08036156
	ldrb r0, [r5]
	bl sub_08033460
_08036156:
	adds r4, #0xc7
	ldrb r0, [r4]
	lsrs r1, r0, #4
	cmp r1, #7
	bgt _08036166
	ldrb r0, [r5]
	bl sub_08036A1C
_08036166:
	ldrb r1, [r4]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4]
	ldrb r0, [r5]
	cmp r0, #0
	bne _080361A2
	ldr r1, _080361A8 @ =gGame
	ldr r2, _080361AC @ =0x00008494
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080361A2
	subs r2, #0x3a
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #9
	bne _080361A2
	adds r2, #2
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #0xc
	bne _080361A2
	ldrb r0, [r5]
	movs r1, #5
	bl sub_08033620
_080361A2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080361A8: .4byte gGame
_080361AC: .4byte 0x00008494

	thumb_func_start sub_080361B0
sub_080361B0: @ 0x080361B0
	push {lr}
	adds r3, r0, #0
	ldr r2, [r3, #0x38]
	ldrb r1, [r2, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080361D6
	ldrh r0, [r2, #0xa]
	adds r0, #1
	strh r0, [r2, #0xa]
	ldr r1, [r3, #0x38]
	ldrh r0, [r1, #0xa]
	ldrh r1, [r1]
	cmp r0, r1
	bls _080361D6
	adds r0, r3, #0
	bl sub_08036030
_080361D6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080361DC
sub_080361DC: @ 0x080361DC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	bl get_obj_direct
	adds r2, r0, #0
	ldr r1, [r4, #0x40]
	ldr r0, [r2, #0x40]
	cmp r1, r0
	bne _08036232
	ldr r0, _08036204 @ =gGame
	ldr r1, _08036208 @ =0x000082AF
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803620C
	cmp r0, #1
	beq _0803621A
	b _0803622C
	.align 2, 0
_08036204: .4byte gGame
_08036208: .4byte 0x000082AF
_0803620C:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #5
	bl sub_08033620
	b _0803622C
_0803621A:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r2, #0
	adds r1, #0x8b
	ldrb r2, [r1]
	movs r1, #0
	bl sub_080332AC
_0803622C:
	adds r0, r4, #0
	bl sub_08035FE4
_08036232:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08036238
sub_08036238: @ 0x08036238
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, [r6, #0x38]
	ldrh r4, [r0, #4]
	ldrh r5, [r0, #6]
	adds r0, r5, #0
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	muls r0, r4, r0
	lsls r0, r0, #8
	lsrs r7, r0, #0x10
	adds r0, r5, #0
	bl sub_08002FA4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r4, r0
	lsls r0, r0, #8
	lsrs r4, r0, #0x10
	ldr r1, [r6, #0x38]
	ldrh r0, [r1, #8]
	cmp r0, #0x64
	beq _08036280
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1, #8]
	muls r0, r1, r0
	movs r1, #0x64
	bl Divide
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08036280:
	strh r7, [r6, #4]
	strh r4, [r6, #6]
	ldr r3, [r6, #0x38]
	movs r1, #0xc
	ldrsh r0, [r3, r1]
	movs r2, #0xe
	ldrsh r1, [r3, r2]
	ldrh r2, [r3, #0xa]
	ldrh r3, [r3]
	bl sub_08002E60
	ldr r1, [r6, #0x38]
	strh r0, [r1, #4]
	ldr r3, [r6, #0x38]
	movs r1, #0x10
	ldrsh r0, [r3, r1]
	movs r2, #0x12
	ldrsh r1, [r3, r2]
	ldrh r2, [r3, #0xa]
	ldrh r3, [r3]
	bl sub_08002E34
	ldr r1, [r6, #0x38]
	strh r0, [r1, #2]
	ldr r1, [r6, #0x38]
	ldrh r0, [r1, #2]
	ldrh r2, [r1, #6]
	adds r0, r0, r2
	strh r0, [r1, #6]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080362C0
sub_080362C0: @ 0x080362C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r0, [sp, #0x20]
	mov r8, r0
	ldr r2, [sp, #0x24]
	mov sb, r2
	ldr r0, [sp, #0x28]
	mov sl, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r2, r8
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r2, sl
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	adds r0, r7, #0
	bl sub_08036388
	movs r0, #0x10
	bl sub_0803B800
	movs r1, #0
	strh r4, [r0]
	strh r5, [r0, #2]
	strh r6, [r0, #4]
	mov r2, r8
	strh r2, [r0, #6]
	strh r1, [r0, #8]
	mov r2, sb
	strh r2, [r0, #0xa]
	mov r2, sl
	strh r2, [r0, #0xc]
	strh r1, [r0, #0xe]
	str r0, [r7, #0x3c]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08036338
sub_08036338: @ 0x08036338
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r6, r5, #0
	bl sub_08036388
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08036360
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	beq _0803637C
_08036360:
	movs r0, #0x10
	bl sub_0803B800
	movs r2, #0
	strh r4, [r0]
	strh r6, [r0, #2]
	strh r4, [r0, #4]
	strh r6, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	ldr r1, _08036384 @ =0x0000FFFF
	strh r1, [r0, #0xc]
	strh r2, [r0, #0xe]
	str r0, [r7, #0x3c]
_0803637C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036384: .4byte 0x0000FFFF

	thumb_func_start sub_08036388
sub_08036388: @ 0x08036388
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0803639A
	bl sub_0803B860
	movs r0, #0
	str r0, [r4, #0x3c]
_0803639A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080363A0
sub_080363A0: @ 0x080363A0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r3, [r4, #0x3c]
	movs r0, #0xc
	ldrsh r1, [r3, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080363BA
	ldrh r5, [r3]
	ldrh r1, [r3, #2]
	b _080363E4
_080363BA:
	movs r1, #0
	ldrsh r0, [r3, r1]
	movs r2, #4
	ldrsh r1, [r3, r2]
	ldrh r2, [r3, #0xe]
	ldrh r3, [r3, #0xc]
	bl sub_08002E34
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r3, [r4, #0x3c]
	movs r1, #2
	ldrsh r0, [r3, r1]
	movs r2, #6
	ldrsh r1, [r3, r2]
	ldrh r2, [r3, #0xe]
	ldrh r3, [r3, #0xc]
	bl sub_08002E34
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_080363E4:
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	ldr r0, [r4, #0x3c]
	movs r1, #8
	ldrsh r2, [r0, r1]
	ldr r0, [r4, #0x1c]
	ldrh r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r3, #1
	bl sub_08032E20
	ldr r1, [r4, #0x3c]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #8]
	adds r0, r0, r2
	strh r0, [r1, #8]
	ldr r2, [r4, #0x3c]
	movs r0, #0xc
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08036446
	ldrh r0, [r2, #0xe]
	adds r0, #1
	strh r0, [r2, #0xe]
	ldr r0, [r4, #0x3c]
	ldrh r1, [r0, #0xe]
	movs r2, #0xc
	ldrsh r0, [r0, r2]
	cmp r1, r0
	ble _08036446
	adds r0, r4, #0
	bl sub_08036388
	cmp r5, #0
	beq _0803643A
	cmp r6, #0
	bne _08036446
_0803643A:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #5
	bl sub_08033620
_08036446:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08036450
sub_08036450: @ 0x08036450
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	bl get_obj_direct
	cmp r4, #0
	beq _08036468
	cmp r4, #1
	beq _08036470
	b _0803647A
_08036468:
	adds r0, #0xc6
	ldrb r1, [r0]
	movs r2, #0x40
	b _08036476
_08036470:
	adds r0, #0xc6
	ldrb r1, [r0]
	movs r2, #0x80
_08036476:
	orrs r1, r2
	strb r1, [r0]
_0803647A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08036480
sub_08036480: @ 0x08036480
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	bl get_obj_direct
	cmp r4, #0
	beq _08036498
	cmp r4, #1
	beq _080364A4
	b _080364B0
_08036498:
	adds r2, r0, #0
	adds r2, #0xc6
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	b _080364AC
_080364A4:
	adds r2, r0, #0
	adds r2, #0xc6
	ldrb r1, [r2]
	movs r0, #0x7f
_080364AC:
	ands r0, r1
	strb r0, [r2]
_080364B0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080364B8
sub_080364B8: @ 0x080364B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xe4
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0xd4]
	mov r0, sp
	strh r3, [r0]
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x88
	str r1, [sp, #0xd8]
	ldrh r1, [r1]
	bl sub_080365EC
	mov sl, r0
	cmp r0, #0
	beq _08036544
	mov r2, sp
	adds r2, #4
	str r2, [sp, #0xdc]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r2, #0xd0
	bl sub_08001B18
	movs r0, #0xa6
	adds r0, r0, r5
	mov r8, r0
	ldrh r0, [r0]
	adds r1, r6, #0
	muls r1, r0, r1
	adds r0, r1, #0
	mov r7, sp
	adds r7, #0xaa
	strh r0, [r7]
	movs r2, #0xa8
	adds r2, r2, r5
	mov sb, r2
	ldrh r0, [r2]
	ldr r2, [sp, #0xd4]
	adds r1, r2, #0
	muls r1, r0, r1
	adds r0, r1, #0
	add r6, sp, #0xac
	strh r0, [r6]
	ldrh r0, [r7]
	lsls r0, r0, #4
	mov r1, sp
	adds r1, #0xae
	str r1, [sp, #0xe0]
	strh r0, [r1]
	ldrh r0, [r6]
	lsls r0, r0, #4
	add r4, sp, #0xb0
	strh r0, [r4]
	ldr r0, [sp, #0xdc]
	bl sub_0800CBE0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803654A
_08036544:
	movs r0, #1
	rsbs r0, r0, #0
	b _080365DC
_0803654A:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _080365B8
	ldr r2, [sp, #0xd8]
	ldrh r0, [r2]
	bl sub_08036D3C
	ldrb r1, [r0, #2]
	lsrs r1, r1, #1
	mov r2, r8
	strh r1, [r2]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #1
	mov r1, sb
	strh r0, [r1]
	ldrh r0, [r2]
	lsls r0, r0, #4
	adds r3, r5, #0
	adds r3, #0xaa
	strh r0, [r3]
	ldrh r0, [r1]
	lsls r0, r0, #4
	adds r1, r5, #0
	adds r1, #0xac
	strh r0, [r1]
	mov r2, sl
	adds r2, #0xbc
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r3]
	ldrh r2, [r5]
	adds r0, r0, r2
	mov r1, sl
	strh r0, [r1]
	ldrh r0, [r5, #2]
	strh r0, [r1, #2]
	ldrh r0, [r5]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r5]
	ldr r1, _080365B0 @ =gGame
	ldr r2, _080365B4 @ =0x00008374
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _080365D6
	.align 2, 0
_080365B0: .4byte gGame
_080365B4: .4byte 0x00008374
_080365B8:
	ldrh r0, [r7]
	mov r1, r8
	strh r0, [r1]
	ldrh r0, [r6]
	mov r2, sb
	strh r0, [r2]
	ldr r1, [sp, #0xe0]
	ldrh r0, [r1]
	adds r1, r5, #0
	adds r1, #0xaa
	strh r0, [r1]
	ldrh r1, [r4]
	adds r0, r5, #0
	adds r0, #0xac
	strh r1, [r0]
_080365D6:
	mov r0, sl
	adds r0, #0x85
	ldrb r0, [r0]
_080365DC:
	add sp, #0xe4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080365EC
sub_080365EC: @ 0x080365EC
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r4, #0
	ldr r0, _08036634 @ =gGame
	ldr r1, _08036638 @ =0x00008370
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r4, r1
	bhs _08036648
	adds r7, r0, #0
_08036606:
	adds r0, r4, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, r6
	beq _0803663C
	adds r0, r1, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0803663C
	adds r0, r1, #0
	adds r0, #0x88
	ldrh r0, [r0]
	cmp r0, r5
	bne _0803663C
	adds r0, r1, #0
	b _0803664A
	.align 2, 0
_08036634: .4byte gGame
_08036638: .4byte 0x00008370
_0803663C:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r0, [r7]
	cmp r4, r0
	blo _08036606
_08036648:
	movs r0, #0
_0803664A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08036650
sub_08036650: @ 0x08036650
	push {r4, r5, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl get_obj_direct
	adds r5, r0, #0
	adds r0, r4, #0
	bl get_obj_direct
	adds r2, r0, #0
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r3, #0
	ldrsh r0, [r2, r3]
	subs r0, r1, r0
	cmp r0, #0
	bge _0803667A
	rsbs r0, r0, #0
_0803667A:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r4, #2
	ldrsh r1, [r5, r4]
	movs r4, #2
	ldrsh r0, [r2, r4]
	subs r0, r1, r0
	cmp r0, #0
	bge _0803668E
	rsbs r0, r0, #0
_0803668E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080366A8
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r3, #0
	ldrsh r0, [r2, r3]
	movs r2, #6
	cmp r1, r0
	ble _080366B8
	movs r2, #2
	b _080366B8
_080366A8:
	movs r4, #2
	ldrsh r1, [r5, r4]
	movs r3, #2
	ldrsh r0, [r2, r3]
	movs r2, #0
	cmp r1, r0
	ble _080366B8
	movs r2, #4
_080366B8:
	adds r0, r2, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080366C0
sub_080366C0: @ 0x080366C0
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	cmp r0, r5
	bne _080366E0
	movs r0, #0
	b _0803672C
_080366D2:
	ldr r0, _080366DC @ =gUnknown_08D2E0EE
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	b _0803672C
	.align 2, 0
_080366DC: .4byte gUnknown_08D2E0EE
_080366E0:
	bl get_obj_direct
	adds r4, r0, #0
	adds r0, r5, #0
	bl get_obj_direct
	adds r2, r0, #0
	ldrh r0, [r4]
	ldrh r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4, #2]
	ldrh r2, [r2, #2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08090F70
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #5
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #6
	adds r4, r0, #0
_08036716:
	cmp r3, r2
	blo _080366D2
	adds r0, r2, r4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #7
	bls _08036716
	movs r0, #3
_0803672C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08036734
sub_08036734: @ 0x08036734
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	cmp r0, r5
	beq _08036774
	bl get_obj_direct
	adds r4, r0, #0
	adds r0, r5, #0
	bl get_obj_direct
	adds r2, r0, #0
	ldr r1, [r4]
	ldr r0, [r2]
	cmp r1, r0
	beq _08036774
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r0, r0, r1
	movs r3, #2
	ldrsh r1, [r4, r3]
	movs r3, #2
	ldrsh r2, [r2, r3]
	subs r1, r1, r2
	bl sub_0803329C
	lsrs r0, r0, #4
	b _08036776
_08036774:
	movs r0, #0
_08036776:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0803677C
sub_0803677C: @ 0x0803677C
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r4, #0
	ldrsh r0, [r3, r4]
	subs r0, r1, r0
	cmp r0, #0
	bge _08036792
	rsbs r0, r0, #0
_08036792:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r5, #2
	ldrsh r1, [r2, r5]
	movs r5, #2
	ldrsh r0, [r3, r5]
	subs r0, r1, r0
	cmp r0, #0
	bge _080367A6
	rsbs r0, r0, #0
_080367A6:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bls _080367C0
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r2, #0
	ldrsh r0, [r3, r2]
	movs r2, #6
	cmp r1, r0
	ble _080367D0
	movs r2, #2
	b _080367D0
_080367C0:
	movs r4, #2
	ldrsh r1, [r2, r4]
	movs r5, #2
	ldrsh r0, [r3, r5]
	movs r2, #0
	cmp r1, r0
	ble _080367D0
	movs r2, #4
_080367D0:
	adds r0, r2, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080367D8
sub_080367D8: @ 0x080367D8
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldrh r0, [r2]
	ldrh r1, [r3]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r2, #2]
	ldrh r2, [r3, #2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08090F70
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #5
	movs r1, #0
	ldr r5, _08036814 @ =gUnknown_08D2E0FE
	movs r0, #0x80
	lsls r0, r0, #6
	adds r4, r0, #0
_08036808:
	cmp r3, r2
	bhs _08036818
	lsls r0, r1, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	b _0803682A
	.align 2, 0
_08036814: .4byte gUnknown_08D2E0FE
_08036818:
	adds r0, r2, r4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #7
	bls _08036808
	movs r0, #3
_0803682A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08036830
sub_08036830: @ 0x08036830
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	beq _0803685A
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r4, #0
	ldrsh r1, [r3, r4]
	subs r0, r0, r1
	movs r4, #2
	ldrsh r1, [r2, r4]
	movs r4, #2
	ldrsh r2, [r3, r4]
	subs r1, r1, r2
	bl sub_0803329C
	lsrs r0, r0, #4
	b _0803685C
_0803685A:
	movs r0, #0
_0803685C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08036864
sub_08036864: @ 0x08036864
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	cmp r0, r4
	beq _080368FC
	bl get_obj_direct
	adds r5, r0, #0
	adds r0, r4, #0
	bl get_obj_direct
	adds r3, r0, #0
	adds r0, r5, #0
	adds r0, #0x8b
	ldrb r0, [r0]
	movs r2, #7
	ands r2, r0
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r4, #0
	ldrsh r0, [r3, r4]
	subs r0, r1, r0
	cmp r0, #0
	bge _0803689A
	rsbs r0, r0, #0
_0803689A:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #2
	ldrsh r1, [r5, r6]
	movs r6, #2
	ldrsh r0, [r3, r6]
	subs r0, r1, r0
	cmp r0, #0
	bge _080368AE
	rsbs r0, r0, #0
_080368AE:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bls _080368D6
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r1, r0
	ble _080368CC
	cmp r2, #7
	bgt _080368FC
	cmp r2, #5
	bge _080368F8
	b _080368FC
_080368CC:
	cmp r2, #3
	bgt _080368FC
	cmp r2, #1
	bge _080368F8
	b _080368FC
_080368D6:
	movs r6, #2
	ldrsh r1, [r5, r6]
	movs r4, #2
	ldrsh r0, [r3, r4]
	cmp r1, r0
	ble _080368F0
	cmp r2, #0
	blt _080368FC
	cmp r2, #1
	ble _080368F8
	cmp r2, #7
	beq _080368F8
	b _080368FC
_080368F0:
	cmp r2, #5
	bgt _080368FC
	cmp r2, #3
	blt _080368FC
_080368F8:
	movs r0, #1
	b _080368FE
_080368FC:
	movs r0, #0
_080368FE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08036904
sub_08036904: @ 0x08036904
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r4, _08036930 @ =gGame
	ldr r1, _08036934 @ =0x00009D10
	adds r0, r4, r1
	ldr r0, [r0]
	adds r1, r3, #0
	bl __udivsi3
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08036938
	adds r1, r5, #0
	adds r2, r6, #0
	b _08036944
	.align 2, 0
_08036930: .4byte gGame
_08036934: .4byte 0x00009D10
_08036938:
	rsbs r0, r5, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08036944:
	ldr r3, _08036958 @ =0x000067A8
	adds r0, r4, r3
	strh r1, [r0]
	ldr r1, _0803695C @ =0x000067AA
	adds r0, r4, r1
	strh r2, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08036958: .4byte 0x000067A8
_0803695C: .4byte 0x000067AA

	thumb_func_start sub_08036960
sub_08036960: @ 0x08036960
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	adds r1, r4, #0
	bl sub_08035C64
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r5, #0x88
	ldrh r0, [r5]
	bl sub_08036E0C
	bl sub_08002C54
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r1, r4, #0
	bl sub_08002BCC
	bl sub_08002C20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803699C
sub_0803699C: @ 0x0803699C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r2, _08036A0C @ =gGame
	ldr r1, _08036A10 @ =0x000067AC
	adds r0, r2, r1
	ldrh r1, [r0]
	ldr r0, _08036A14 @ =0x0000010F
	cmp r1, r0
	bne _08036A04
	ldr r1, _08036A18 @ =0x00009D10
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08036A04
	movs r6, #0
	movs r7, #0x80
	rsbs r7, r7, #0
_080369C2:
	adds r0, r6, #0
	bl get_obj_direct
	adds r5, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080369FA
	mov r4, sp
	adds r0, r5, #0
	mov r1, sp
	bl sub_08036BEC
	ldrh r1, [r4, #2]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	blt _080369FA
	subs r0, r1, #1
	strh r0, [r4, #2]
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #4
	strh r0, [r5]
	ldrh r0, [r4, #2]
	lsls r0, r0, #4
	strh r0, [r5, #2]
_080369FA:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x18
	bls _080369C2
_08036A04:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036A0C: .4byte gGame
_08036A10: .4byte 0x000067AC
_08036A14: .4byte 0x0000010F
_08036A18: .4byte 0x00009D10

	thumb_func_start sub_08036A1C
sub_08036A1C: @ 0x08036A1C
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	adds r0, r4, #0
	bl get_obj_direct
	mov ip, r0
	adds r0, #0xcc
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _08036A60
	mov r3, ip
	adds r3, #0xbc
	movs r0, #7
	adds r1, r5, #0
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	mov r0, ip
	adds r0, #0x8b
	ldrb r1, [r0]
	lsrs r1, r1, #3
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_080332AC
_08036A60:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08036A68
sub_08036A68: @ 0x08036A68
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xcc
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _08036A88
	adds r0, r1, #0
	adds r0, #0x8f
	strb r4, [r0]
_08036A88:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08036A90
sub_08036A90: @ 0x08036A90
	push {r4, r5, r6, r7, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	bl get_obj_direct
	adds r5, r0, #0
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08036AFC
	cmp r1, #0xff
	bgt _08036AFC
	adds r3, r5, #0
	adds r3, #0xc4
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #2
	ldrh r2, [r3]
	ldr r0, _08036B2C @ =0xFFFFFC03
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	ldr r0, [r3]
	ldr r1, _08036B30 @ =0xFFE07FFF
	ands r0, r1
	str r0, [r3]
	adds r2, r5, #0
	adds r2, #0xc6
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r5, #0x2c]
	movs r1, #8
	bl memclear
	adds r0, r5, #0
	bl sub_0802DE5C
_08036AFC:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08036B0E
	adds r0, r5, #0
	adds r0, #0x96
	strh r6, [r0]
_08036B0E:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	beq _08036B26
	adds r2, r5, #0
	adds r2, #0xc3
	lsls r3, r0, #3
	ldrb r1, [r2]
	movs r0, #7
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
_08036B26:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036B2C: .4byte 0xFFFFFC03
_08036B30: .4byte 0xFFE07FFF

	thumb_func_start sub_08036B34
sub_08036B34: @ 0x08036B34
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r4, #0
_08036B3C:
	adds r0, r4, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08036B5A
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r5, #0
	bl sub_08036A1C
_08036B5A:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _08036B3C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08036B6C
sub_08036B6C: @ 0x08036B6C
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r4, #0
_08036B74:
	adds r0, r4, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08036B92
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r5, #0
	bl sub_08036A68
_08036B92:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _08036B74
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08036BA4
sub_08036BA4: @ 0x08036BA4
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r5, sp
	mov r1, sp
	bl sub_08036BEC
	adds r0, r4, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sp
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	ldrh r2, [r5, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	bl sub_0801A978
	str r0, [r4, #0x18]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start get_obj_direct
get_obj_direct: @ 0x08036BD8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xd0
	muls r0, r1, r0
	ldr r1, _08036BE8 @ =gUnknown_0200C3C8
	adds r0, r0, r1
	bx lr
	.align 2, 0
_08036BE8: .4byte gUnknown_0200C3C8

	thumb_func_start sub_08036BEC
sub_08036BEC: @ 0x08036BEC
	ldrh r2, [r0]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	strh r2, [r1]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	strh r0, [r1, #2]
	bx lr
	.align 2, 0

	thumb_func_start sub_08036C00
sub_08036C00: @ 0x08036C00
	push {r4, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	strh r1, [r4]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	strh r0, [r4, #2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08036C24
sub_08036C24: @ 0x08036C24
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08036C60 @ =gGame
	ldr r1, _08036C64 @ =0x000067AC
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_0801B498
	adds r4, #0x85
	ldrb r2, [r4]
	subs r2, #5
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrb r1, [r0, #0x12]
	lsls r1, r1, #4
	adds r1, #8
	lsls r1, r1, #4
	strh r1, [r5]
	ldrb r0, [r0, #0x13]
	lsls r0, r0, #4
	adds r0, #0xf
	lsls r0, r0, #4
	strh r0, [r5, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08036C60: .4byte gGame
_08036C64: .4byte 0x000067AC

	thumb_func_start sub_08036C68
sub_08036C68: @ 0x08036C68
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r0, #0x8b
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08036C80
sub_08036C80: @ 0x08036C80
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r4, _08036C9C @ =gUnknown_08D2E050
	bl sub_08036C68
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, r0, r4
	ldrh r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08036C9C: .4byte gUnknown_08D2E050

	thumb_func_start sub_08036CA0
sub_08036CA0: @ 0x08036CA0
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r4, _08036CBC @ =gUnknown_08D2E060
	bl sub_08036C68
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, r0, r4
	ldrh r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08036CBC: .4byte gUnknown_08D2E060

	thumb_func_start sub_08036CC0
sub_08036CC0: @ 0x08036CC0
	lsls r0, r0, #0x10
	ldr r1, _08036CCC @ =0xFFFD0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0
_08036CCC: .4byte 0xFFFD0000

	thumb_func_start sub_08036CD0
sub_08036CD0: @ 0x08036CD0
	lsls r0, r0, #0x10
	ldr r1, _08036CDC @ =gUnknown_08D2E114
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_08036CDC: .4byte gUnknown_08D2E114

	thumb_func_start sub_08036CE0
sub_08036CE0: @ 0x08036CE0
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	bl sub_08036CD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08036D00
sub_08036D00: @ 0x08036D00
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08036D18
sub_08036D18: @ 0x08036D18
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _08036D38 @ =gUnknown_09433D7C
	movs r1, #0
	bl sub_0800289C
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08036D38: .4byte gUnknown_09433D7C

	thumb_func_start sub_08036D3C
sub_08036D3C: @ 0x08036D3C
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _08036D5C @ =gUnknown_09436C68
	movs r1, #0
	bl sub_0800289C
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #1
	adds r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08036D5C: .4byte gUnknown_09436C68

	thumb_func_start sub_08036D60
sub_08036D60: @ 0x08036D60
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08036D74 @ =gUnknown_094383E4
	bl sub_0800289C
	pop {r1}
	bx r1
	.align 2, 0
_08036D74: .4byte gUnknown_094383E4

	thumb_func_start sub_08036D78
sub_08036D78: @ 0x08036D78
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	adds r6, r4, #0
	ldr r7, _08036D9C @ =gUnknown_094383E4
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0800289C
	cmp r4, #1
	beq _08036DAE
	cmp r4, #1
	bgt _08036DA0
	cmp r4, #0
	beq _08036DAA
	b _08036DD0
	.align 2, 0
_08036D9C: .4byte gUnknown_094383E4
_08036DA0:
	cmp r6, #2
	beq _08036DB8
	cmp r6, #3
	beq _08036DC8
	b _08036DD0
_08036DAA:
	adds r0, r7, #0
	b _08036DBA
_08036DAE:
	ldr r0, _08036DB4 @ =gUnknown_0994BC30
	b _08036DBA
	.align 2, 0
_08036DB4: .4byte gUnknown_0994BC30
_08036DB8:
	ldr r0, _08036DC4 @ =gUnknown_09A012B8
_08036DBA:
	adds r1, r5, #0
	bl sub_0800289C
	b _08036DD0
	.align 2, 0
_08036DC4: .4byte gUnknown_09A012B8
_08036DC8:
	ldr r0, _08036DD8 @ =gUnknown_09A36AA0
	adds r1, r5, #0
	bl sub_0800289C
_08036DD0:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08036DD8: .4byte gUnknown_09A36AA0

	thumb_func_start sub_08036DDC
sub_08036DDC: @ 0x08036DDC
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08036DF0 @ =gUnknown_09A41548
	bl sub_0800289C
	pop {r1}
	bx r1
	.align 2, 0
_08036DF0: .4byte gUnknown_09A41548

	thumb_func_start sub_08036DF4
sub_08036DF4: @ 0x08036DF4
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08036E08 @ =gUnknown_09A442A4
	bl sub_0800289C
	pop {r1}
	bx r1
	.align 2, 0
_08036E08: .4byte gUnknown_09A442A4

	thumb_func_start sub_08036E0C
sub_08036E0C: @ 0x08036E0C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	adds r6, r4, #0
	ldr r7, _08036E30 @ =gUnknown_09A442A4
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0800289C
	cmp r4, #1
	beq _08036E42
	cmp r4, #1
	bgt _08036E34
	cmp r4, #0
	beq _08036E3E
	b _08036E64
	.align 2, 0
_08036E30: .4byte gUnknown_09A442A4
_08036E34:
	cmp r6, #2
	beq _08036E4C
	cmp r6, #3
	beq _08036E5C
	b _08036E64
_08036E3E:
	adds r0, r7, #0
	b _08036E4E
_08036E42:
	ldr r0, _08036E48 @ =gUnknown_09AE0638
	b _08036E4E
	.align 2, 0
_08036E48: .4byte gUnknown_09AE0638
_08036E4C:
	ldr r0, _08036E58 @ =gUnknown_09AEE4C4
_08036E4E:
	adds r1, r5, #0
	bl sub_0800289C
	b _08036E64
	.align 2, 0
_08036E58: .4byte gUnknown_09AEE4C4
_08036E5C:
	ldr r0, _08036E6C @ =gUnknown_09AF1ED0
	adds r1, r5, #0
	bl sub_0800289C
_08036E64:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08036E6C: .4byte gUnknown_09AF1ED0

	thumb_func_start sub_08036E70
sub_08036E70: @ 0x08036E70
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0xfa
	lsls r0, r0, #2
	bl sub_08036D60
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #5
	adds r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08036E90
sub_08036E90: @ 0x08036E90
	push {r4, lr}
	lsls r0, r0, #0x10
	movs r1, #0xb4
	lsls r1, r1, #0x12
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	bl sub_08036D18
	adds r4, r0, #0
	movs r0, #0
	bl sub_08036DDC
	ldrb r1, [r4, #1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x17
	adds r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08036EB8
sub_08036EB8: @ 0x08036EB8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r0, sp
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08036CE0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r4, #0
	adds r3, #0xbd
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #5
	ldrb r2, [r3]
	movs r1, #0x61
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldr r2, _08036F20 @ =gUnknown_02001024
	lsls r0, r1, #0x1b
	lsrs r0, r0, #0x1e
	strh r0, [r2]
	ldr r0, _08036F24 @ =gUnknown_02001026
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1e
	strh r1, [r0]
	cmp r5, #0
	beq _08036F2C
	ldr r0, _08036F28 @ =gUnknown_02001018
	ldrh r1, [r5]
	strh r1, [r0]
	ldrh r1, [r5, #2]
	b _08036F3C
	.align 2, 0
_08036F20: .4byte gUnknown_02001024
_08036F24: .4byte gUnknown_02001026
_08036F28: .4byte gUnknown_02001018
_08036F2C:
	ldr r0, _08036F68 @ =gUnknown_02001018
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	strh r1, [r0]
	ldrh r1, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
_08036F3C:
	strh r1, [r0, #2]
	adds r3, r0, #0
	ldr r2, _08036F6C @ =gUnknown_0200101C
	ldrh r0, [r6]
	strh r0, [r2]
	ldrh r0, [r6, #2]
	strh r0, [r2, #2]
	ldr r1, _08036F70 @ =gUnknown_02001020
	ldrh r0, [r3]
	strh r0, [r1]
	ldrh r0, [r3, #2]
	strh r0, [r1, #2]
	mov r0, sp
	ldrh r0, [r0]
	adds r7, r2, #0
	cmp r0, #0
	beq _08036F78
	ldr r1, _08036F74 @ =gUnknown_02001028
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	b _08036F80
	.align 2, 0
_08036F68: .4byte gUnknown_02001018
_08036F6C: .4byte gUnknown_0200101C
_08036F70: .4byte gUnknown_02001020
_08036F74: .4byte gUnknown_02001028
_08036F78:
	ldr r1, _08037000 @ =gUnknown_02001028
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
_08036F80:
	strh r0, [r1]
	ldr r1, [r3]
	ldr r0, [r7]
	cmp r1, r0
	beq _08036FFC
	adds r0, r4, #0
	bl sub_08035FBC
	ldr r4, [r4, #0x34]
	movs r5, #0
_08036F94:
	adds r0, r4, #0
	mov r1, sb
	mov r2, r8
	bl sub_08037020
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08036FA6
	adds r4, #0x18
_08036FA6:
	ldr r6, _08037004 @ =gUnknown_02001020
	ldr r0, [r6]
	ldr r1, _08037008 @ =gUnknown_0200101C
	ldr r2, [r1]
	adds r7, r1, #0
	cmp r0, r2
	beq _08036FFC
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #7
	bls _08036F94
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08037010
	ldrh r1, [r6]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x10
	ldr r3, _0803700C @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r3
	orrs r0, r1
	str r0, [sp, #4]
	ldrh r1, [r6, #2]
	lsls r1, r1, #4
	add r0, sp, #4
	strh r1, [r0, #2]
	ldrh r2, [r7]
	lsls r2, r2, #0x14
	lsrs r2, r2, #0x10
	ldr r1, [sp, #8]
	ands r1, r3
	orrs r1, r2
	str r1, [sp, #8]
	ldrh r2, [r7, #2]
	lsls r2, r2, #4
	add r1, sp, #8
	strh r2, [r1, #2]
	bl sub_08036830
	cmp r0, #0x1f
	bhi _08037010
_08036FFC:
	movs r0, #1
	b _08037012
	.align 2, 0
_08037000: .4byte gUnknown_02001028
_08037004: .4byte gUnknown_02001020
_08037008: .4byte gUnknown_0200101C
_0803700C: .4byte 0xFFFF0000
_08037010:
	movs r0, #0
_08037012:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08037020
sub_08037020: @ 0x08037020
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r6, _08037074 @ =gUnknown_02001020
	ldr r7, _08037078 @ =gUnknown_0200101C
	cmp r2, #3
	bgt _08037086
	cmp r2, #2
	blt _08037086
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r3, #0
	ldrsh r0, [r7, r3]
	subs r0, r1, r0
	cmp r0, #0
	bge _08037050
	rsbs r0, r0, #0
_08037050:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r4, #2
	ldrsh r1, [r6, r4]
	movs r4, #2
	ldrsh r0, [r7, r4]
	subs r0, r1, r0
	cmp r0, #0
	bge _08037064
	rsbs r0, r0, #0
_08037064:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _0803707C
	cmp r2, #2
	beq _08037084
	b _08037080
	.align 2, 0
_08037074: .4byte gUnknown_02001020
_08037078: .4byte gUnknown_0200101C
_0803707C:
	cmp r2, #2
	bne _08037084
_08037080:
	movs r2, #1
	b _08037086
_08037084:
	movs r2, #0
_08037086:
	movs r0, #0
	ldrsh r5, [r6, r0]
	movs r4, #0
	ldrsh r3, [r7, r4]
	cmp r5, r3
	beq _080370D6
	movs r0, #2
	ldrsh r1, [r6, r0]
	movs r4, #2
	ldrsh r0, [r7, r4]
	cmp r1, r0
	bne _080370A0
	movs r2, #0
_080370A0:
	cmp r2, #0
	bne _080370D6
	movs r4, #7
	cmp r5, r3
	ble _080370AC
	movs r4, #3
_080370AC:
	adds r0, r4, #0
	bl sub_08037134
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _0803711A
	movs r0, #2
	ldrsh r1, [r6, r0]
	movs r2, #2
	ldrsh r0, [r7, r2]
	cmp r1, r0
	beq _08037112
	movs r4, #1
	cmp r1, r0
	ble _080370CE
	movs r4, #5
_080370CE:
	adds r0, r4, #0
	bl sub_0803720C
	b _0803710E
_080370D6:
	movs r3, #2
	ldrsh r1, [r6, r3]
	movs r4, #2
	ldrsh r0, [r7, r4]
	movs r4, #1
	cmp r1, r0
	ble _080370E6
	movs r4, #5
_080370E6:
	adds r0, r4, #0
	bl sub_0803720C
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _0803711A
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r2, #0
	ldrsh r0, [r7, r2]
	cmp r1, r0
	beq _08037112
	movs r4, #7
	cmp r1, r0
	ble _08037108
	movs r4, #3
_08037108:
	adds r0, r4, #0
	bl sub_08037134
_0803710E:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08037112:
	cmp r3, #0
	bne _0803711A
	movs r0, #0
	b _08037126
_0803711A:
	mov r0, sb
	adds r1, r4, #0
	mov r2, r8
	bl sub_08036048
	movs r0, #1
_08037126:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08037134
sub_08037134: @ 0x08037134
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r2, _08037190 @ =gUnknown_02001020
	ldrh r1, [r2]
	ldr r3, _08037194 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r3
	orrs r0, r1
	str r0, [sp]
	ldrh r1, [r2, #2]
	mov r0, sp
	strh r1, [r0, #2]
	movs r1, #1
	cmp r7, #3
	bne _08037164
	movs r0, #1
	rsbs r0, r0, #0
	adds r1, r0, #0
_08037164:
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #4]
	ands r0, r3
	orrs r0, r1
	str r0, [sp, #4]
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1, #2]
	movs r6, #0
	mov sl, r1
	mov r4, sp
	movs r3, #1
	rsbs r3, r3, #0
	mov sb, r3
	mov r8, r2
_08037184:
	cmp r7, #3
	bne _08037198
	ldrh r0, [r4]
	subs r0, #1
	b _0803719C
	.align 2, 0
_08037190: .4byte gUnknown_02001020
_08037194: .4byte 0xFFFF0000
_08037198:
	ldrh r0, [r4]
	adds r0, #1
_0803719C:
	strh r0, [r4]
	mov r5, sp
	mov r0, sp
	bl sub_080372D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080371EC
	mov r0, sp
	mov r1, sl
	bl sub_08037330
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080371EC
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r1, [r4]
	mov r0, r8
	strh r1, [r0]
	ldrh r0, [r5, #2]
	mov r2, r8
	strh r0, [r2, #2]
	ldr r0, _08037200 @ =gGame
	ldr r3, _08037204 @ =0x0000845E
	adds r2, r0, r3
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, sb
	beq _080371DE
	cmp r0, r6
	ble _080371EC
_080371DE:
	ldr r0, _08037208 @ =gUnknown_0200101C
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	bne _08037184
_080371EC:
	adds r0, r6, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08037200: .4byte gGame
_08037204: .4byte 0x0000845E
_08037208: .4byte gUnknown_0200101C

	thumb_func_start sub_0803720C
sub_0803720C: @ 0x0803720C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r2, _0803725C @ =gUnknown_02001020
	ldrh r1, [r2]
	ldr r3, _08037260 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r3
	orrs r0, r1
	str r0, [sp]
	ldrh r1, [r2, #2]
	mov r0, sp
	strh r1, [r0, #2]
	ldr r0, [sp, #4]
	ands r0, r3
	str r0, [sp, #4]
	movs r1, #1
	cmp r7, #5
	bne _08037240
	movs r0, #1
	rsbs r0, r0, #0
	adds r1, r0, #0
_08037240:
	add r0, sp, #4
	strh r1, [r0, #2]
	movs r6, #0
	mov sb, r0
	mov r4, sp
	movs r2, #1
	rsbs r2, r2, #0
	mov r8, r2
_08037250:
	cmp r7, #5
	bne _08037264
	ldrh r0, [r4, #2]
	subs r0, #1
	b _08037268
	.align 2, 0
_0803725C: .4byte gUnknown_02001020
_08037260: .4byte 0xFFFF0000
_08037264:
	ldrh r0, [r4, #2]
	adds r0, #1
_08037268:
	strh r0, [r4, #2]
	mov r5, sp
	mov r0, sp
	bl sub_080372D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080372B6
	mov r0, sp
	mov r1, sb
	bl sub_08037330
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080372B6
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r1, _080372C8 @ =gUnknown_02001020
	ldrh r0, [r4]
	strh r0, [r1]
	ldrh r2, [r5, #2]
	strh r2, [r1, #2]
	ldr r0, _080372CC @ =gGame
	ldr r3, _080372D0 @ =0x0000845E
	adds r1, r0, r3
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, r8
	beq _080372A8
	cmp r0, r6
	ble _080372B6
_080372A8:
	ldr r0, _080372D4 @ =gUnknown_0200101C
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	movs r2, #2
	ldrsh r0, [r0, r2]
	cmp r1, r0
	bne _08037250
_080372B6:
	adds r0, r6, #0
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080372C8: .4byte gUnknown_02001020
_080372CC: .4byte gGame
_080372D0: .4byte 0x0000845E
_080372D4: .4byte gUnknown_0200101C

	thumb_func_start sub_080372D8
sub_080372D8: @ 0x080372D8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08037320 @ =gGame
	ldr r1, _08037324 @ =0x00008494
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08037328
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _0803731A
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _0803731A
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, r5
	bgt _0803731A
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, r1
	ble _08037328
_0803731A:
	movs r0, #0
	b _0803732A
	.align 2, 0
_08037320: .4byte gGame
_08037324: .4byte 0x00008494
_08037328:
	movs r0, #1
_0803732A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08037330
sub_08037330: @ 0x08037330
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	adds r5, r1, #0
	ldr r0, _080373AC @ =gGame
	ldr r1, _080373B0 @ =0x00008494
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08037348
	b _08037524
_08037348:
	ldrh r3, [r7]
	ldr r1, _080373B4 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	orrs r0, r3
	str r0, [sp]
	ldrh r2, [r7, #2]
	mov r4, sp
	strh r2, [r4, #2]
	ldr r0, [sp, #4]
	ands r0, r1
	orrs r0, r3
	str r0, [sp, #4]
	add r0, sp, #4
	strh r2, [r0, #2]
	movs r3, #2
	ldrsh r2, [r5, r3]
	asrs r1, r1, #0x10
	adds r6, r0, #0
	ldrh r3, [r5, #2]
	cmp r2, r1
	bgt _08037388
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	cmp r0, #7
	bgt _08037388
	ldrh r0, [r4, #2]
	subs r0, #7
	strh r0, [r4, #2]
_08037388:
	movs r2, #0
	ldrsh r0, [r5, r2]
	ldrh r2, [r5]
	cmp r0, #0
	bge _080373B8
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	cmp r0, #7
	bgt _080373D6
	mov r0, sp
	ldrh r0, [r0]
	subs r0, #7
	b _080373D2
	.align 2, 0
_080373AC: .4byte gGame
_080373B0: .4byte 0x00008494
_080373B4: .4byte 0xFFFF0000
_080373B8:
	cmp r0, #0
	ble _080373D6
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #1
	movs r1, #0xf
	ands r0, r1
	cmp r0, #7
	ble _080373D6
	mov r0, sp
	ldrh r0, [r0]
	adds r0, #7
_080373D2:
	mov r1, sp
	strh r0, [r1]
_080373D6:
	lsls r0, r2, #0x10
	cmp r0, #0
	bne _080373F2
	ldrh r0, [r6]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #6
	bhi _080373EA
	subs r0, #8
	b _080373F0
_080373EA:
	cmp r1, #8
	bls _080373F2
	adds r0, #8
_080373F0:
	strh r0, [r6]
_080373F2:
	lsls r0, r3, #0x10
	cmp r0, #0
	bne _0803740E
	ldrh r1, [r6, #2]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #6
	bhi _08037408
	adds r0, r1, #0
	subs r0, #8
	strh r0, [r6, #2]
_08037408:
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r6]
_0803740E:
	mov r0, sp
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	blt _0803743A
	mov r0, sp
	movs r3, #0
	ldrsh r4, [r0, r3]
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _08037432
	mov r0, sp
	ldrh r1, [r0]
	b _0803743C
_08037432:
	bl sub_0801A5EC
	subs r1, r0, #1
	b _0803743C
_0803743A:
	movs r1, #0
_0803743C:
	mov r0, sp
	strh r1, [r0]
	mov r5, sp
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08037468
	movs r0, #2
	ldrsh r4, [r5, r0]
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _08037460
	ldrh r1, [r5, #2]
	b _0803746A
_08037460:
	bl sub_0801A604
	subs r1, r0, #1
	b _0803746A
_08037468:
	movs r1, #0
_0803746A:
	mov r0, sp
	strh r1, [r0, #2]
	movs r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, #0
	blt _08037492
	adds r4, r0, #0
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0803748A
	ldrh r0, [r6]
	b _08037494
_0803748A:
	bl sub_0801A5EC
	subs r0, #1
	b _08037494
_08037492:
	movs r0, #0
_08037494:
	strh r0, [r6]
	add r5, sp, #4
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080374BE
	movs r3, #2
	ldrsh r4, [r5, r3]
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _080374B6
	ldrh r1, [r5, #2]
	b _080374C0
_080374B6:
	bl sub_0801A604
	subs r1, r0, #1
	b _080374C0
_080374BE:
	movs r1, #0
_080374C0:
	adds r0, r6, #0
	strh r1, [r0, #2]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	cmp r1, r0
	bne _080374DC
	ldr r0, _080374D8 @ =gUnknown_02001026
	ldrh r0, [r0]
	movs r1, #1
	mov r2, sp
	b _080374F4
	.align 2, 0
_080374D8: .4byte gUnknown_02001026
_080374DC:
	ldr r4, _0803751C @ =gUnknown_02001026
	ldrh r0, [r4]
	movs r1, #1
	mov r2, sp
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08037518
	ldrh r0, [r4]
	movs r1, #1
	adds r2, r6, #0
_080374F4:
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08037518
	ldr r0, _08037520 @ =gUnknown_02001028
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08037524
	adds r0, r7, #0
	bl sub_08037530
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08037524
_08037518:
	movs r0, #0
	b _08037526
	.align 2, 0
_0803751C: .4byte gUnknown_02001026
_08037520: .4byte gUnknown_02001028
_08037524:
	movs r0, #1
_08037526:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08037530
sub_08037530: @ 0x08037530
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, _08037574 @ =gUnknown_02001028
	ldrh r0, [r0]
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0x85
	ldrb r0, [r0]
	mov sb, r0
	adds r0, r1, #0
	adds r0, #0xaa
	ldrh r0, [r0]
	mov r8, r0
	adds r0, r1, #0
	adds r0, #0xac
	ldrh r0, [r0]
	lsrs r5, r0, #1
	ldrh r0, [r7, #2]
	subs r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r1, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0803757C
	b _080375F0
	.align 2, 0
_08037574: .4byte gUnknown_02001028
_08037578:
	movs r0, #0
	b _080375F2
_0803757C:
	movs r0, #5
	bl get_obj_direct
	adds r3, r0, #0
	movs r4, #0
	ldr r0, _08037600 @ =gGame
	ldr r1, _08037604 @ =0x00008370
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r4, r1
	bhs _080375F0
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
	mov sl, r5
	adds r5, r1, #0
	adds r2, r3, #0
	adds r2, #0xaa
_080375A0:
	adds r0, r4, #5
	cmp sb, r0
	beq _080375E2
	ldrb r1, [r2, #0x12]
	movs r0, #0x81
	ands r0, r1
	cmp r0, #1
	bne _080375E2
	movs r6, #0
	ldrsh r1, [r7, r6]
	movs r6, #0
	ldrsh r0, [r3, r6]
	subs r1, r1, r0
	cmp r1, #0
	bge _080375C0
	rsbs r1, r1, #0
_080375C0:
	ldrh r0, [r2]
	add r0, r8
	cmp r1, r0
	bge _080375E2
	movs r0, #2
	ldrsh r1, [r3, r0]
	ldrh r0, [r2, #2]
	lsrs r0, r0, #1
	subs r1, r1, r0
	mov r6, ip
	subs r1, r6, r1
	cmp r1, #0
	bge _080375DC
	rsbs r1, r1, #0
_080375DC:
	add r0, sl
	cmp r1, r0
	blt _08037578
_080375E2:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, #0xd0
	adds r3, #0xd0
	cmp r4, r5
	blo _080375A0
_080375F0:
	movs r0, #1
_080375F2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08037600: .4byte gGame
_08037604: .4byte 0x00008370

	thumb_func_start sub_08037608
sub_08037608: @ 0x08037608
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _080376C8 @ =0x0000090A
	adds r3, r4, r0
	ldrb r1, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	strb r0, [r3]
	movs r1, #0x88
	lsls r1, r1, #4
	adds r0, r4, r1
	movs r2, #0
	strb r2, [r0]
	ldr r5, _080376CC @ =0x00000881
	adds r1, r4, r5
	movs r0, #2
	strb r0, [r1]
	ldr r6, _080376D0 @ =0x00000883
	adds r0, r4, r6
	strb r2, [r0]
	ldrb r0, [r3]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3]
	movs r7, #0x86
	lsls r7, r7, #4
	adds r0, r4, r7
	bl sub_080376EC
	movs r2, #0
	ldr r3, _080376D4 @ =gUnknown_080C2050
_08037662:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r0, r4
	adds r0, r0, r3
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #3
	bls _08037662
	ldr r0, _080376D8 @ =gUnknown_02005080
	ldrb r0, [r0]
	cmp r0, #4
	bne _080376C0
	ldr r1, _080376DC @ =gUnknown_020051E8
	ldrb r0, [r1, #3]
	cmp r0, #0
	beq _080376C0
	movs r2, #0
	strb r2, [r1, #3]
	ldr r1, _080376E0 @ =gUnknown_02004100
	ldrb r0, [r1]
	cmp r0, #3
	bgt _080376C0
	cmp r0, #0
	blt _080376C0
	ldr r0, _080376E4 @ =gGame
	strb r2, [r0]
	ldrb r1, [r1]
	ldr r2, _080376E8 @ =0x000082B8
	adds r0, r0, r2
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _080376BA
	cmp r1, #1
	bls _080376BA
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_080376BA:
	adds r0, r1, #0
	bl sub_08037794
_080376C0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080376C8: .4byte 0x0000090A
_080376CC: .4byte 0x00000881
_080376D0: .4byte 0x00000883
_080376D4: .4byte gUnknown_080C2050
_080376D8: .4byte gUnknown_02005080
_080376DC: .4byte gUnknown_020051E8
_080376E0: .4byte gUnknown_02004100
_080376E4: .4byte gGame
_080376E8: .4byte 0x000082B8

	thumb_func_start sub_080376EC
sub_080376EC: @ 0x080376EC
	ldrb r2, [r0, #0xa]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #0xf
	rsbs r2, r2, #0
	ands r1, r2
	movs r2, #2
	orrs r1, r2
	strb r1, [r0, #0xa]
	movs r1, #0
	str r1, [r0]
	strh r1, [r0, #8]
	bx lr

	thumb_func_start sub_08037708
sub_08037708: @ 0x08037708
	push {r4, r5, lr}
	ldr r4, _08037774 @ =gSomeBlend
	ldr r2, _08037778 @ =gGame
	ldrb r1, [r2]
	ldr r3, _0803777C @ =0x00003532
	adds r0, r4, r3
	movs r5, #0
	strb r1, [r0]
	movs r0, #0xe
	strb r0, [r2]
	ldr r0, _08037780 @ =0x000121BB
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08037784 @ =0x00003510
	adds r0, r4, r1
	bl sub_080376EC
	ldr r3, _08037788 @ =0x000035BA
	adds r2, r4, r3
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0803778C @ =0x00003530
	adds r0, r4, r1
	strb r5, [r0]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080012BC
	bl sub_08037B4C
	ldr r3, _08037790 @ =0x00003528
	adds r4, r4, r3
	strh r5, [r4]
	strh r5, [r4, #2]
	movs r0, #0x20
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08037774: .4byte gSomeBlend
_08037778: .4byte gGame
_0803777C: .4byte 0x00003532
_08037780: .4byte 0x000121BB
_08037784: .4byte 0x00003510
_08037788: .4byte 0x000035BA
_0803778C: .4byte 0x00003530
_08037790: .4byte 0x00003528

	thumb_func_start sub_08037794
sub_08037794: @ 0x08037794
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_08037708
	ldr r0, _080377B0 @ =gUnknown_02018CD8
	movs r1, #0
	strh r4, [r0, #4]
	strh r1, [r0, #0xa]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080377B0: .4byte gUnknown_02018CD8

	thumb_func_start sub_080377B4
sub_080377B4: @ 0x080377B4
	push {lr}
	ldr r2, _080377CC @ =gUnknown_02018CD8
	ldrh r0, [r2, #0xa]
	cmp r0, #2
	beq _080377C6
	movs r1, #0
	movs r0, #2
	strh r0, [r2, #0xa]
	strh r1, [r2, #8]
_080377C6:
	pop {r0}
	bx r0
	.align 2, 0
_080377CC: .4byte gUnknown_02018CD8

	thumb_func_start sub_080377D0
sub_080377D0: @ 0x080377D0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r5, _08037860 @ =gGame
	ldr r4, _08037864 @ =gSomeBlend
	ldr r1, _08037868 @ =0x00003532
	adds r0, r4, r1
	ldrb r0, [r0]
	movs r6, #0
	strb r0, [r5]
	ldr r2, _0803786C @ =0x000035BA
	adds r3, r4, r2
	ldrb r2, [r3]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3]
	ldr r2, _08037870 @ =0x00003530
	adds r0, r4, r2
	strb r6, [r0]
	ldr r0, _08037874 @ =0x00003531
	adds r2, r4, r0
	movs r0, #2
	mov r8, r0
	movs r0, #2
	strb r0, [r2]
	ldr r0, _08037878 @ =0x0000351A
	adds r2, r4, r0
	ldrb r0, [r2]
	ands r1, r0
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r1, r0
	mov r0, r8
	orrs r1, r0
	strb r1, [r2]
	ldr r1, _0803787C @ =0x000082A4
	adds r5, r5, r1
	movs r0, #0xa
	strh r0, [r5]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080012BC
	ldr r2, _08037880 @ =0x00003528
	adds r0, r4, r2
	strh r6, [r0]
	strh r6, [r0, #2]
	movs r1, #0x20
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	ldr r0, _08037884 @ =0x000121B8
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08037888 @ =0x000121BA
	adds r4, r4, r1
	ldrb r0, [r4]
	mov r2, r8
	orrs r0, r2
	strb r0, [r4]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08037860: .4byte gGame
_08037864: .4byte gSomeBlend
_08037868: .4byte 0x00003532
_0803786C: .4byte 0x000035BA
_08037870: .4byte 0x00003530
_08037874: .4byte 0x00003531
_08037878: .4byte 0x0000351A
_0803787C: .4byte 0x000082A4
_08037880: .4byte 0x00003528
_08037884: .4byte 0x000121B8
_08037888: .4byte 0x000121BA

	thumb_func_start sub_0803788C
sub_0803788C: @ 0x0803788C
	push {r4, r5, r6, lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _080378B0
	ldr r2, _080378A8 @ =gSomeBlend
	ldr r0, _080378AC @ =0x000035B6
	adds r1, r2, r0
	movs r0, #0xb4
	b _080378B8
	.align 2, 0
_080378A8: .4byte gSomeBlend
_080378AC: .4byte 0x000035B6
_080378B0:
	ldr r2, _0803791C @ =gSomeBlend
	ldr r0, _08037920 @ =0x000035B6
	adds r1, r2, r0
	ldr r0, _08037924 @ =0x0000FFFF
_080378B8:
	strh r0, [r1]
	adds r4, r2, #0
	ldr r1, _08037928 @ =0x000035BA
	adds r5, r4, r1
	ldrb r3, [r5]
	movs r6, #2
	adds r0, r6, #0
	ands r0, r3
	cmp r0, #0
	bne _08037914
	ldr r0, _0803792C @ =0x000121BB
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r3
	movs r1, #2
	orrs r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r5]
	ldr r1, _08037930 @ =0x00003530
	adds r0, r4, r1
	strb r6, [r0]
	ldrh r0, [r4, #0x1a]
	ldr r0, _08037934 @ =0x0000FFE0
	strh r0, [r4, #0x1a]
	ldr r0, _08037938 @ =0x000121B9
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080012BC
	bl sub_08037B4C
_08037914:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803791C: .4byte gSomeBlend
_08037920: .4byte 0x000035B6
_08037924: .4byte 0x0000FFFF
_08037928: .4byte 0x000035BA
_0803792C: .4byte 0x000121BB
_08037930: .4byte 0x00003530
_08037934: .4byte 0x0000FFE0
_08037938: .4byte 0x000121B9

	thumb_func_start sub_0803793C
sub_0803793C: @ 0x0803793C
	push {lr}
	ldr r2, _08037954 @ =gUnknown_02018D08
	ldrh r0, [r2, #0xa]
	cmp r0, #2
	beq _0803794E
	movs r1, #0
	movs r0, #2
	strh r0, [r2, #0xa]
	strh r1, [r2, #8]
_0803794E:
	pop {r0}
	bx r0
	.align 2, 0
_08037954: .4byte gUnknown_02018D08

	thumb_func_start sub_08037958
sub_08037958: @ 0x08037958
	push {lr}
	ldr r3, _080379A4 @ =gSomeBlend
	ldr r0, _080379A8 @ =0x000035BA
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	strb r0, [r2]
	ldr r1, _080379AC @ =0x00003530
	adds r0, r3, r1
	movs r2, #0
	strb r2, [r0]
	ldr r0, _080379B0 @ =0x00003531
	adds r1, r3, r0
	movs r0, #2
	strb r0, [r1]
	ldr r1, _080379B4 @ =0x000035B6
	adds r0, r3, r1
	strh r2, [r0]
	ldr r0, _080379B8 @ =gGame
	ldrb r0, [r0]
	cmp r0, #7
	beq _0803799E
	ldr r1, _080379BC @ =0x000121B8
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
_0803799E:
	pop {r0}
	bx r0
	.align 2, 0
_080379A4: .4byte gSomeBlend
_080379A8: .4byte 0x000035BA
_080379AC: .4byte 0x00003530
_080379B0: .4byte 0x00003531
_080379B4: .4byte 0x000035B6
_080379B8: .4byte gGame
_080379BC: .4byte 0x000121B8

	thumb_func_start sub_080379C0
sub_080379C0: @ 0x080379C0
	push {r4, lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	ldr r0, _080379E4 @ =gSomeBlend
	ldr r1, _080379E8 @ =0x000035BA
	adds r4, r0, r1
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080379EC
	movs r0, #0xd9
	bl play_sound
	bl sub_0803793C
	b _08037A04
	.align 2, 0
_080379E4: .4byte gSomeBlend
_080379E8: .4byte 0x000035BA
_080379EC:
	movs r0, #0xd8
	bl play_sound
	mov r0, sp
	ldrh r0, [r0]
	bl sub_0803788C
	ldrb r1, [r4]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
_08037A04:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08037A0C
sub_08037A0C: @ 0x08037A0C
	push {r4, r5, lr}
	sub sp, #8
	mov r5, sp
	movs r0, #0
	mov r1, sp
	bl sub_08036C00
	add r4, sp, #4
	adds r0, r4, #0
	bl sub_0801A530
	movs r1, #2
	ldrsh r0, [r5, r1]
	movs r2, #2
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	cmp r0, #0x60
	ble _08037A50
	ldr r2, _08037A48 @ =gSomeBlend
	ldr r0, _08037A4C @ =0x000035BA
	adds r3, r2, r0
	ldrb r0, [r3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	ldrh r0, [r2, #0x1a]
	movs r0, #0xa0
	strh r0, [r2, #0x1a]
	b _08037A66
	.align 2, 0
_08037A48: .4byte gSomeBlend
_08037A4C: .4byte 0x000035BA
_08037A50:
	ldr r1, _08037A70 @ =gSomeBlend
	ldr r2, _08037A74 @ =0x000035BA
	adds r3, r1, r2
	ldrb r2, [r3]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r3]
	ldrh r0, [r1, #0x1a]
	ldr r0, _08037A78 @ =0x0000FFE0
	strh r0, [r1, #0x1a]
_08037A66:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08037A70: .4byte gSomeBlend
_08037A74: .4byte 0x000035BA
_08037A78: .4byte 0x0000FFE0

	thumb_func_start sub_08037A7C
sub_08037A7C: @ 0x08037A7C
	push {r4, lr}
	ldr r0, _08037AD8 @ =gSomeBlend
	ldr r3, _08037ADC @ =gGame
	ldrb r2, [r3]
	ldr r4, _08037AE0 @ =0x00003532
	adds r1, r0, r4
	strb r2, [r1]
	movs r1, #0xe
	strb r1, [r3]
	ldr r1, _08037AE4 @ =0x000121BB
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r4, #0x10
	orrs r1, r4
	strb r1, [r2]
	ldr r1, _08037AE8 @ =0x000035BA
	adds r3, r0, r1
	ldrb r1, [r3]
	movs r2, #1
	orrs r1, r2
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r1, r2
	subs r2, #0x20
	ands r1, r2
	strb r1, [r3]
	ldr r1, _08037AEC @ =0x00003530
	adds r2, r0, r1
	movs r1, #3
	strb r1, [r2]
	ldr r1, _08037AF0 @ =0x000121B9
	adds r2, r0, r1
	ldrb r1, [r2]
	orrs r1, r4
	strb r1, [r2]
	adds r0, #0x50
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080012BC
	bl sub_08037B4C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037AD8: .4byte gSomeBlend
_08037ADC: .4byte gGame
_08037AE0: .4byte 0x00003532
_08037AE4: .4byte 0x000121BB
_08037AE8: .4byte 0x000035BA
_08037AEC: .4byte 0x00003530
_08037AF0: .4byte 0x000121B9

	thumb_func_start sub_08037AF4
sub_08037AF4: @ 0x08037AF4
	push {r4, lr}
	ldr r2, _08037B34 @ =gGame
	ldr r0, _08037B38 @ =gSomeBlend
	ldr r3, _08037B3C @ =0x00003532
	adds r1, r0, r3
	ldrb r1, [r1]
	movs r4, #0
	strb r1, [r2]
	ldr r1, _08037B40 @ =0x000035BA
	adds r3, r0, r1
	ldrb r2, [r3]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r3]
	ldr r2, _08037B44 @ =0x00003530
	adds r1, r0, r2
	strb r4, [r1]
	ldr r3, _08037B48 @ =0x00003531
	adds r2, r0, r3
	movs r1, #2
	strb r1, [r2]
	adds r0, #0x50
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_080012BC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037B34: .4byte gGame
_08037B38: .4byte gSomeBlend
_08037B3C: .4byte 0x00003532
_08037B40: .4byte 0x000035BA
_08037B44: .4byte 0x00003530
_08037B48: .4byte 0x00003531

	thumb_func_start sub_08037B4C
sub_08037B4C: @ 0x08037B4C
	push {r4, lr}
	ldr r4, _08037B84 @ =gUnknown_0201B7A0
	adds r0, r4, #0
	bl sub_08009F70
	bl sub_080381DC
	ldr r0, _08037B88 @ =0xFFFFDDB8
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #3
	bhi _08037B7E
	ldr r0, _08037B8C @ =gUnknown_08D2E11C
	ldrb r1, [r1]
	lsls r2, r1, #2
	adds r2, r2, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r3, _08037B90 @ =0xFFFFD538
	adds r1, r4, r3
	adds r0, r0, r1
	ldr r1, [r2]
	bl _call_via_r1
_08037B7E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037B84: .4byte gUnknown_0201B7A0
_08037B88: .4byte 0xFFFFDDB8
_08037B8C: .4byte gUnknown_08D2E11C
_08037B90: .4byte 0xFFFFD538

	thumb_func_start sub_08037B94
sub_08037B94: @ 0x08037B94
	push {r4, lr}
	adds r1, r0, #0
	ldr r4, _08037BE8 @ =gSomeBlend
	ldr r2, _08037BEC @ =0x00003530
	adds r0, r4, r2
	movs r3, #0
	strb r3, [r0]
	strh r3, [r1, #4]
	ldr r0, _08037BF0 @ =gGame
	ldr r2, _08037BF4 @ =0x000082B8
	adds r0, r0, r2
	ldrb r0, [r0]
	lsrs r0, r0, #7
	movs r2, #4
	cmp r0, #0
	beq _08037BB6
	movs r2, #5
_08037BB6:
	strh r2, [r1, #2]
	movs r0, #1
	strh r0, [r1, #0xa]
	strh r3, [r1, #8]
	ldr r0, _08037BF8 @ =0x0000351A
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #0xf
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08037BFC @ =gUnknown_09AF3790
	movs r1, #0xc
	bl sub_0800289C
	ldr r2, _08037C00 @ =0x00003510
	adds r1, r4, r2
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037BE8: .4byte gSomeBlend
_08037BEC: .4byte 0x00003530
_08037BF0: .4byte gGame
_08037BF4: .4byte 0x000082B8
_08037BF8: .4byte 0x0000351A
_08037BFC: .4byte gUnknown_09AF3790
_08037C00: .4byte 0x00003510

	thumb_func_start sub_08037C04
sub_08037C04: @ 0x08037C04
	push {r4, r5, lr}
	ldr r2, _08037C44 @ =gSomeBlend
	ldr r1, _08037C48 @ =0x00003530
	adds r3, r2, r1
	movs r4, #0
	movs r5, #1
	movs r1, #1
	strb r1, [r3]
	strh r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r0, _08037C4C @ =0x000035BA
	adds r3, r2, r0
	ldrb r0, [r3]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3]
	ldr r1, _08037C50 @ =0x0000351A
	adds r2, r2, r1
	ldrb r0, [r2]
	orrs r0, r5
	movs r1, #0xf
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08037C44: .4byte gSomeBlend
_08037C48: .4byte 0x00003530
_08037C4C: .4byte 0x000035BA
_08037C50: .4byte 0x0000351A

	thumb_func_start sub_08037C54
sub_08037C54: @ 0x08037C54
	ldr r1, _08037C74 @ =gSomeBlend
	ldr r2, _08037C78 @ =0x00003530
	adds r1, r1, r2
	movs r3, #0
	movs r2, #2
	strb r2, [r1]
	strh r3, [r0, #4]
	ldr r1, _08037C7C @ =gGame
	ldr r2, _08037C80 @ =0x00008299
	adds r1, r1, r2
	ldrb r1, [r1]
	strh r1, [r0, #2]
	movs r1, #1
	strh r1, [r0, #0xa]
	strh r3, [r0, #8]
	bx lr
	.align 2, 0
_08037C74: .4byte gSomeBlend
_08037C78: .4byte 0x00003530
_08037C7C: .4byte gGame
_08037C80: .4byte 0x00008299

	thumb_func_start sub_08037C84
sub_08037C84: @ 0x08037C84
	push {lr}
	ldr r1, _08037C9C @ =gSomeBlend
	ldr r2, _08037CA0 @ =0x00003530
	adds r1, r1, r2
	movs r2, #3
	strb r2, [r1]
	movs r1, #1
	bl sub_08037CA4
	pop {r0}
	bx r0
	.align 2, 0
_08037C9C: .4byte gSomeBlend
_08037CA0: .4byte 0x00003530

	thumb_func_start sub_08037CA4
sub_08037CA4: @ 0x08037CA4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r6, _08037CE8 @ =gSomeBlend
	ldr r0, _08037CEC @ =0x000035BA
	adds r3, r6, r0
	lsls r4, r1, #7
	ldrb r0, [r3]
	movs r2, #0x7f
	ands r2, r0
	orrs r2, r4
	strb r2, [r3]
	ldr r3, _08037CF0 @ =0x0000351C
	adds r0, r6, r3
	movs r3, #0
	str r3, [r0]
	ldr r0, _08037CF4 @ =0x00003524
	adds r4, r6, r0
	ldr r0, _08037CF8 @ =0x0000FFFF
	strh r0, [r4]
	ldr r4, _08037CFC @ =0x00003526
	adds r0, r6, r4
	strh r3, [r0]
	strh r3, [r5, #4]
	strh r1, [r5, #0xa]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x1f
	cmp r2, #0
	beq _08037D00
	cmp r2, #1
	beq _08037D34
	b _08037DA8
	.align 2, 0
_08037CE8: .4byte gSomeBlend
_08037CEC: .4byte 0x000035BA
_08037CF0: .4byte 0x0000351C
_08037CF4: .4byte 0x00003524
_08037CF8: .4byte 0x0000FFFF
_08037CFC: .4byte 0x00003526
_08037D00:
	ldr r0, _08037D18 @ =gSave
	ldr r2, [r0, #0xc]
	ldr r1, _08037D1C @ =0x000F423F
	subs r1, r1, r2
	ldr r2, [r0, #8]
	adds r3, r0, #0
	cmp r2, r1
	bls _08037D24
	ldr r2, _08037D20 @ =0x00003520
	adds r0, r6, r2
	str r1, [r0]
	b _08037D2A
	.align 2, 0
_08037D18: .4byte gSave
_08037D1C: .4byte 0x000F423F
_08037D20: .4byte 0x00003520
_08037D24:
	ldr r4, _08037D30 @ =0x00003520
	adds r0, r6, r4
	str r2, [r0]
_08037D2A:
	ldr r1, [r3, #8]
	b _08037D60
	.align 2, 0
_08037D30: .4byte 0x00003520
_08037D34:
	ldr r0, _08037D4C @ =gSave
	ldr r2, [r0, #8]
	ldr r1, _08037D50 @ =0x000F423F
	subs r1, r1, r2
	ldr r2, [r0, #0xc]
	adds r3, r0, #0
	cmp r2, r1
	bls _08037D58
	ldr r2, _08037D54 @ =0x00003520
	adds r0, r6, r2
	str r1, [r0]
	b _08037D5E
	.align 2, 0
_08037D4C: .4byte gSave
_08037D50: .4byte 0x000F423F
_08037D54: .4byte 0x00003520
_08037D58:
	ldr r4, _08037D6C @ =0x00003520
	adds r0, r6, r4
	str r2, [r0]
_08037D5E:
	ldr r1, [r3, #0xc]
_08037D60:
	ldr r0, _08037D70 @ =0x0001869F
	cmp r1, r0
	bls _08037D74
	movs r0, #6
	b _08037DA6
	.align 2, 0
_08037D6C: .4byte 0x00003520
_08037D70: .4byte 0x0001869F
_08037D74:
	ldr r0, _08037D80 @ =0x0000270F
	cmp r1, r0
	bls _08037D84
	movs r0, #5
	b _08037DA6
	.align 2, 0
_08037D80: .4byte 0x0000270F
_08037D84:
	ldr r0, _08037D90 @ =0x000003E7
	cmp r1, r0
	bls _08037D94
	movs r0, #4
	b _08037DA6
	.align 2, 0
_08037D90: .4byte 0x000003E7
_08037D94:
	cmp r1, #0x63
	bls _08037D9C
	movs r0, #3
	b _08037DA6
_08037D9C:
	cmp r1, #9
	bls _08037DA4
	movs r0, #2
	b _08037DA6
_08037DA4:
	movs r0, #1
_08037DA6:
	strh r0, [r5, #2]
_08037DA8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08037DB0
sub_08037DB0: @ 0x08037DB0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, _08037DD0 @ =gSomeBlend
	ldr r0, _08037DD4 @ =0x000035BA
	adds r3, r1, r0
	ldrb r2, [r3]
	movs r0, #0x10
	ands r0, r2
	adds r5, r1, #0
	cmp r0, #0
	beq _08037DD8
	movs r0, #8
	orrs r0, r2
	strb r0, [r3]
	b _08037DEA
	.align 2, 0
_08037DD0: .4byte gSomeBlend
_08037DD4: .4byte 0x000035BA
_08037DD8:
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	lsls r0, r0, #3
	movs r1, #9
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_08037DEA:
	adds r3, r5, #0
	ldr r6, _08037E28 @ =0x00003530
	adds r2, r3, r6
	ldrb r0, [r2]
	cmp r0, #3
	bhi _08037E10
	ldr r1, _08037E2C @ =gUnknown_08D2E12C
	lsls r2, r0, #2
	adds r2, r2, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r6, _08037E30 @ =0x00002CB0
	adds r0, r3, r6
	adds r1, r1, r0
	ldr r2, [r2]
	adds r0, r4, #0
	bl _call_via_r2
_08037E10:
	ldr r0, _08037E34 @ =0x000035BA
	adds r1, r5, r0
	ldrb r2, [r1]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08037E38
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	b _08037E4C
	.align 2, 0
_08037E28: .4byte 0x00003530
_08037E2C: .4byte gUnknown_08D2E12C
_08037E30: .4byte 0x00002CB0
_08037E34: .4byte 0x000035BA
_08037E38:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _08037E4C
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	bl sub_080394F0
_08037E4C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08037E54
sub_08037E54: @ 0x08037E54
	push {r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r2, r1, #0
	ldr r0, _08037E7C @ =gSomeBlend
	ldr r1, _08037E80 @ =0x000035BA
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08037EC6
	ldrh r1, [r4]
	cmp r1, #1
	bne _08037E84
	adds r0, r2, #0
	bl sub_080380C0
	b _08037EC6
	.align 2, 0
_08037E7C: .4byte gSomeBlend
_08037E80: .4byte 0x000035BA
_08037E84:
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0
	bne _08037E96
	ldrh r1, [r4, #2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08037EA8
_08037E96:
	ldrh r0, [r2, #0xa]
	cmp r0, #2
	beq _08037EC6
	movs r0, #0xe0
	bl play_sound
	bl sub_080377B4
	b _08037EC6
_08037EA8:
	adds r0, r2, #4
	ldrh r3, [r2, #2]
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0x10
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r1, r4, #0
	movs r2, #0
	bl sub_08039544
_08037EC6:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08037ED0
sub_08037ED0: @ 0x08037ED0
	push {r4, r5, lr}
	sub sp, #8
	adds r3, r0, #0
	adds r4, r1, #0
	ldr r5, _08037F00 @ =gSomeBlend
	ldr r1, _08037F04 @ =0x000035BA
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08037F68
	ldrh r2, [r4, #0xa]
	cmp r2, #1
	bne _08037F0C
	ldrh r0, [r3]
	cmp r0, #1
	bne _08037F68
	ldr r0, _08037F08 @ =gGame
	ldrb r1, [r0, #3]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0, #3]
	b _08037F68
	.align 2, 0
_08037F00: .4byte gSomeBlend
_08037F04: .4byte 0x000035BA
_08037F08: .4byte gGame
_08037F0C:
	ldrh r1, [r3]
	cmp r1, #1
	bne _08037F34
	ldrh r0, [r4, #4]
	cmp r0, #0
	bne _08037F30
	adds r0, r2, #1
	strh r0, [r4, #0xa]
	ldr r0, _08037F2C @ =0x000121B6
	adds r2, r5, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	b _08037F68
	.align 2, 0
_08037F2C: .4byte 0x000121B6
_08037F30:
	movs r0, #0xdd
	b _08037F3E
_08037F34:
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08037F54
	movs r0, #0xd3
_08037F3E:
	bl play_sound
	adds r0, r4, #0
	bl sub_080381B0
	ldr r0, _08037F50 @ =gUnknown_080C1FF8
	bl sub_0800A480
	b _08037F68
	.align 2, 0
_08037F50: .4byte gUnknown_080C1FF8
_08037F54:
	adds r0, r4, #4
	movs r1, #2
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	adds r1, r3, #0
	movs r2, #2
	movs r3, #1
	bl sub_080397D0
_08037F68:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start nullsub_41
nullsub_41: @ 0x08037F70
	bx lr
	.align 2, 0

	thumb_func_start sub_08037F74
sub_08037F74: @ 0x08037F74
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r7, _08037FB8 @ =gSomeBlend
	ldr r0, _08037FBC @ =0x000035BA
	adds r5, r7, r0
	ldrb r1, [r5]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08037F92
	b _080380AC
_08037F92:
	ldrh r1, [r6]
	cmp r1, #1
	bne _08037FD8
	ldr r1, _08037FC0 @ =0x0000351C
	adds r4, r7, r1
	ldr r0, [r4]
	cmp r0, #0
	beq _08037FD4
	movs r0, #0xe7
	bl play_sound
	ldrb r0, [r5]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08037FC4
	cmp r0, #1
	beq _08037FCC
	b _08037FEA
	.align 2, 0
_08037FB8: .4byte gSomeBlend
_08037FBC: .4byte 0x000035BA
_08037FC0: .4byte 0x0000351C
_08037FC4:
	ldr r0, [r4]
	bl sub_0802A0BC
	b _08037FEA
_08037FCC:
	ldr r0, [r4]
	bl sub_0802A080
	b _08037FEA
_08037FD4:
	movs r0, #0xd2
	b _08037FE6
_08037FD8:
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08037FF0
	movs r0, #0xd3
_08037FE6:
	bl play_sound
_08037FEA:
	bl sub_08037AF4
	b _080380AC
_08037FF0:
	ldrh r3, [r4, #2]
	cmp r3, #1
	bls _08038048
	ldrh r0, [r4, #4]
	mov r8, r0
	adds r0, r4, #4
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0x20
	str r1, [sp]
	movs r1, #0x10
	str r1, [sp, #4]
	str r5, [sp, #8]
	adds r1, r6, #0
	movs r2, #0
	bl sub_08039544
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08038048
	ldrh r0, [r4, #4]
	cmp r0, r8
	bls _0803802C
	ldr r1, _08038028 @ =0x00003524
	adds r0, r7, r1
	strh r5, [r0]
	b _08038034
	.align 2, 0
_08038028: .4byte 0x00003524
_0803802C:
	ldr r0, _08038040 @ =0x00003524
	adds r1, r7, r0
	movs r0, #1
	strh r0, [r1]
_08038034:
	ldr r0, _08038044 @ =0x00003526
	adds r1, r7, r0
	movs r0, #0xa
	strh r0, [r1]
	b _080380AC
	.align 2, 0
_08038040: .4byte 0x00003524
_08038044: .4byte 0x00003526
_08038048:
	adds r0, r4, #0
	adds r0, #0xa
	movs r1, #0
	str r1, [sp]
	adds r1, r6, #0
	movs r2, #0
	movs r3, #1
	bl sub_08039694
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08038098
	ldrh r1, [r4, #0xa]
	adds r0, r4, #0
	bl sub_08037CA4
	ldr r2, _08038088 @ =gSomeBlend
	ldr r1, _0803808C @ =0x000121B9
	adds r3, r2, r1
	ldrb r0, [r3]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3]
	ldr r1, _08038090 @ =0x000035BA
	adds r0, r2, r1
	ldrb r0, [r0]
	lsrs r0, r0, #7
	ldr r1, _08038094 @ =0x000121C6
	adds r2, r2, r1
	strb r0, [r2]
	b _080380AC
	.align 2, 0
_08038088: .4byte gSomeBlend
_0803808C: .4byte 0x000121B9
_08038090: .4byte 0x000035BA
_08038094: .4byte 0x000121C6
_08038098:
	ldr r0, _080380B8 @ =gSomeBlend
	ldr r1, _080380BC @ =0x00003520
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080380AC
	adds r0, r4, #4
	adds r1, r6, #0
	bl sub_08039934
_080380AC:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080380B8: .4byte gSomeBlend
_080380BC: .4byte 0x00003520

	thumb_func_start sub_080380C0
sub_080380C0: @ 0x080380C0
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	cmp r0, #4
	bhi _08038116
	lsls r0, r0, #2
	ldr r1, _080380D4 @ =_080380D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080380D4: .4byte _080380D8
_080380D8: @ jump table
	.4byte _080380EC @ case 0
	.4byte _080380F8 @ case 1
	.4byte _08038104 @ case 2
	.4byte _08038110 @ case 3
	.4byte _0803812E @ case 4
_080380EC:
	ldr r1, _080380F4 @ =gUnknown_02004100
	movs r0, #0
	b _08038114
	.align 2, 0
_080380F4: .4byte gUnknown_02004100
_080380F8:
	ldr r1, _08038100 @ =gUnknown_02004100
	movs r0, #1
	b _08038114
	.align 2, 0
_08038100: .4byte gUnknown_02004100
_08038104:
	ldr r1, _0803810C @ =gUnknown_02004100
	movs r0, #2
	b _08038114
	.align 2, 0
_0803810C: .4byte gUnknown_02004100
_08038110:
	ldr r1, _08038140 @ =gUnknown_02004100
	movs r0, #3
_08038114:
	strb r0, [r1]
_08038116:
	ldr r0, _08038144 @ =gGame
	ldr r1, _08038148 @ =0x000082B8
	adds r0, r0, r1
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _08038154
	ldrh r0, [r4, #4]
	cmp r0, #1
	bls _08038154
	cmp r0, #3
	bne _0803814C
_0803812E:
	movs r0, #0xd2
	bl play_sound
	adds r0, r4, #0
	movs r1, #1
	bl sub_0803817C
	b _0803816C
	.align 2, 0
_08038140: .4byte gUnknown_02004100
_08038144: .4byte gGame
_08038148: .4byte 0x000082B8
_0803814C:
	ldr r1, _08038174 @ =gUnknown_02004100
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08038154:
	movs r0, #0xdc
	bl play_sound
	movs r0, #0
	bl sub_0803C4DC
	ldr r1, _08038178 @ =gGame
	movs r0, #0xa
	strb r0, [r1]
	movs r0, #2
	bl sub_080052E4
_0803816C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08038174: .4byte gUnknown_02004100
_08038178: .4byte gGame

	thumb_func_start sub_0803817C
sub_0803817C: @ 0x0803817C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	cmp r3, #3
	bhi _080381A6
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	ldr r2, _080381AC @ =gUnknown_02018CD8
	adds r0, r0, r2
	ldrh r1, [r4]
	strh r1, [r0, #0xc]
	ldrh r1, [r4, #4]
	strh r1, [r0, #0xe]
	movs r0, #0x88
	lsls r0, r0, #4
	adds r2, r2, r0
	strb r3, [r2]
	bl sub_08037B4C
_080381A6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080381AC: .4byte gUnknown_02018CD8

	thumb_func_start sub_080381B0
sub_080381B0: @ 0x080381B0
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0xc]
	cmp r0, #3
	bhi _080381D4
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _080381D8 @ =gUnknown_02018CD8
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r2, #0x88
	lsls r2, r2, #4
	adds r1, r1, r2
	strb r0, [r1]
	bl sub_08037B4C
_080381D4:
	pop {r0}
	bx r0
	.align 2, 0
_080381D8: .4byte gUnknown_02018CD8

	thumb_func_start sub_080381DC
sub_080381DC: @ 0x080381DC
	push {lr}
	ldr r0, _080381FC @ =gSomeBlend
	ldr r2, _08038200 @ =0x00003530
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #3
	bhi _080381F8
	ldr r0, _08038204 @ =gUnknown_08D2E13C
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl _call_via_r0
_080381F8:
	pop {r0}
	bx r0
	.align 2, 0
_080381FC: .4byte gSomeBlend
_08038200: .4byte 0x00003530
_08038204: .4byte gUnknown_08D2E13C

	thumb_func_start sub_08038208
sub_08038208: @ 0x08038208
	push {r4, lr}
	sub sp, #4
	ldr r0, _0803822C @ =gSomeBlend
	ldr r1, _08038230 @ =0x00003531
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038284
	ldr r0, _08038234 @ =gGame
	ldr r1, _08038238 @ =0x000082B8
	adds r0, r0, r1
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08038240
	ldr r0, _0803823C @ =gUnknown_09AF3790
	movs r1, #8
	b _08038244
	.align 2, 0
_0803822C: .4byte gSomeBlend
_08038230: .4byte 0x00003531
_08038234: .4byte gGame
_08038238: .4byte 0x000082B8
_0803823C: .4byte gUnknown_09AF3790
_08038240:
	ldr r0, _0803828C @ =gUnknown_09AF3790
	movs r1, #9
_08038244:
	bl sub_0800289C
	adds r1, r0, #0
	ldr r4, _08038290 @ =gUnknown_02018CE8
	movs r3, #0x80
	lsls r3, r3, #1
	movs r0, #0xc
	str r0, [sp]
	movs r0, #0
	adds r2, r4, #0
	bl sub_080382F4
	ldr r0, _08038294 @ =0x0000F4FA
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08038298 @ =0x00000871
	adds r1, r4, r0
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0803829C @ =0x00000868
	adds r1, r4, r0
	ldrh r0, [r4]
	strh r0, [r1]
	ldrh r0, [r4, #2]
	strh r0, [r1, #2]
	ldrh r0, [r4, #4]
	strh r0, [r1, #4]
	ldrh r0, [r4, #6]
	strh r0, [r1, #6]
_08038284:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803828C: .4byte gUnknown_09AF3790
_08038290: .4byte gUnknown_02018CE8
_08038294: .4byte 0x0000F4FA
_08038298: .4byte 0x00000871
_0803829C: .4byte 0x00000868

	thumb_func_start sub_080382A0
sub_080382A0: @ 0x080382A0
	push {r4, r5, lr}
	ldr r4, _080382D8 @ =gSomeBlend
	ldr r0, _080382DC @ =0x00003531
	adds r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #1
	beq _080382D2
	cmp r0, #0
	bne _080382BE
	ldr r1, _080382E0 @ =0x000121BA
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
_080382BE:
	ldr r0, _080382E4 @ =gUnknown_080C1FF8
	bl sub_0800A3EC
	ldr r1, _080382E8 @ =0x00005778
	adds r0, r4, r1
	movs r1, #0
	bl sub_08009E38
	movs r0, #1
	strb r0, [r5]
_080382D2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080382D8: .4byte gSomeBlend
_080382DC: .4byte 0x00003531
_080382E0: .4byte 0x000121BA
_080382E4: .4byte gUnknown_080C1FF8
_080382E8: .4byte 0x00005778

	thumb_func_start nullsub_69
nullsub_69: @ 0x080382EC
	bx lr
	.align 2, 0

	thumb_func_start nullsub_70
nullsub_70: @ 0x080382F0
	bx lr
	.align 2, 0

	thumb_func_start sub_080382F4
sub_080382F4: @ 0x080382F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r0, [sp, #0x24]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sl, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, _08038324 @ =gUnknown_02016078
	ldrh r2, [r5]
	ldrh r3, [r5, #2]
	movs r1, #0
	bl sub_08001378
	adds r3, r0, #0
	movs r0, #0
	b _0803838C
	.align 2, 0
_08038324: .4byte gUnknown_02016078
_08038328:
	movs r6, #0
	adds r0, #1
	mov r8, r0
	ldrh r0, [r5, #4]
	cmp r6, r0
	bhs _0803837A
	ldr r7, _080383A4 @ =0x000003FF
	ldr r1, _080383A8 @ =0xFFFFFC00
	mov sb, r1
	ldr r0, [sp]
	lsls r0, r0, #4
	mov ip, r0
_08038340:
	ldrh r2, [r4]
	strh r2, [r3]
	adds r0, r7, #0
	ands r0, r2
	cmp r0, #0
	beq _0803836A
	ldr r1, [r3]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	add r1, sl
	ands r1, r7
	mov r0, sb
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	ldrb r1, [r3, #1]
	movs r0, #0xf
	ands r0, r1
	mov r1, ip
	orrs r0, r1
	strb r0, [r3, #1]
_0803836A:
	adds r4, #2
	adds r3, #2
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r5, #4]
	cmp r6, r0
	blo _08038340
_0803837A:
	ldrh r0, [r5, #4]
	movs r1, #0x20
	subs r1, r1, r0
	lsls r1, r1, #1
	adds r3, r3, r1
	adds r4, r4, r1
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
_0803838C:
	ldrh r1, [r5, #6]
	cmp r0, r1
	blo _08038328
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080383A4: .4byte 0x000003FF
_080383A8: .4byte 0xFFFFFC00

	thumb_func_start sub_080383AC
sub_080383AC: @ 0x080383AC
	push {r4, lr}
	bl sub_08038BDC
	ldr r4, _080383FC @ =gSomeBlend
	ldr r1, _08038400 @ =0x000035BA
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080383CA
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080383F6
_080383CA:
	ldr r3, _08038404 @ =0x00003530
	adds r1, r4, r3
	ldrb r0, [r1]
	cmp r0, #3
	bhi _080383EE
	ldr r0, _08038408 @ =gUnknown_08D2E14C
	ldrb r1, [r1]
	lsls r2, r1, #2
	adds r2, r2, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r3, _0803840C @ =0x00002CB0
	adds r1, r4, r3
	adds r0, r0, r1
	ldr r1, [r2]
	bl _call_via_r1
_080383EE:
	ldr r1, _08038410 @ =0x00003510
	adds r0, r4, r1
	bl sub_080393D8
_080383F6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080383FC: .4byte gSomeBlend
_08038400: .4byte 0x000035BA
_08038404: .4byte 0x00003530
_08038408: .4byte gUnknown_08D2E14C
_0803840C: .4byte 0x00002CB0
_08038410: .4byte 0x00003510

	thumb_func_start sub_08038414
sub_08038414: @ 0x08038414
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r6, #0
	ldrh r0, [r4, #0xa]
	cmp r0, #1
	beq _0803842C
	cmp r0, #1
	ble _08038472
	cmp r0, #2
	beq _08038450
	b _08038472
_0803842C:
	ldrh r2, [r4, #8]
	movs r0, #0x18
	movs r1, #0
	movs r3, #0xc
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xc
	bne _08038472
	movs r0, #0
	strh r0, [r4, #0xa]
	b _08038472
_08038450:
	ldrh r2, [r4, #8]
	movs r0, #0
	movs r1, #0x18
	movs r3, #0xc
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xc
	bne _08038472
	bl sub_080377D0
_08038472:
	ldr r1, _080384CC @ =gSomeBlend
	ldrh r0, [r1, #0x1a]
	strh r6, [r1, #0x1a]
	ldr r2, _080384D0 @ =0x000035BA
	adds r0, r1, r2
	ldrb r2, [r0]
	movs r0, #1
	ands r0, r2
	adds r5, r1, #0
	cmp r0, #0
	beq _08038534
	ldrh r4, [r4, #4]
	ldr r0, _080384D4 @ =gGame
	ldr r2, _080384D8 @ =0x000082B8
	adds r1, r0, r2
	ldrb r1, [r1]
	lsrs r1, r1, #7
	adds r3, r4, #0
	adds r7, r0, #0
	cmp r1, #0
	bne _080384A6
	cmp r4, #1
	bls _080384A6
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080384A6:
	ldr r0, _080384DC @ =0x000121B9
	adds r2, r5, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _080384E0 @ =0x000121C3
	adds r0, r5, r1
	strb r4, [r0]
	ldr r2, _080384D8 @ =0x000082B8
	adds r0, r7, r2
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _080384E8
	lsls r1, r3, #2
	ldr r0, _080384E4 @ =gUnknown_080C20B0
	b _080384EC
	.align 2, 0
_080384CC: .4byte gSomeBlend
_080384D0: .4byte 0x000035BA
_080384D4: .4byte gGame
_080384D8: .4byte 0x000082B8
_080384DC: .4byte 0x000121B9
_080384E0: .4byte 0x000121C3
_080384E4: .4byte gUnknown_080C20B0
_080384E8:
	lsls r1, r3, #2
	ldr r0, _0803853C @ =gUnknown_080C20C4
_080384EC:
	adds r2, r1, r0
	ldr r1, _08038540 @ =gUnknown_0201953C
	ldrh r0, [r2]
	movs r5, #0
	strh r0, [r1]
	ldrh r0, [r2, #2]
	subs r0, r0, r6
	strh r0, [r1, #2]
	adds r0, r4, #0
	adds r0, #0x23
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08039B24
	ldr r2, _08038544 @ =gUnknown_080C20E8
	lsls r1, r4, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	movs r2, #7
	subs r2, r2, r6
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r3, #1
	rsbs r3, r3, #0
	movs r4, #7
	str r4, [sp]
	str r5, [sp, #4]
	bl draw_ui_text
	movs r1, #4
	subs r1, r1, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x8c
	bl sub_08038A40
_08038534:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803853C: .4byte gUnknown_080C20C4
_08038540: .4byte gUnknown_0201953C
_08038544: .4byte gUnknown_080C20E8

	thumb_func_start sub_08038548
sub_08038548: @ 0x08038548
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	ldrh r6, [r7, #0xa]
	cmp r6, #0
	bne _080385B8
	movs r0, #0x1e
	bl sub_08039B24
	movs r5, #1
	rsbs r5, r5, #0
	movs r4, #7
	str r4, [sp]
	str r6, [sp, #4]
	movs r1, #0x3a
	movs r2, #0x44
	adds r3, r5, #0
	bl draw_ui_text
	movs r0, #0x21
	bl sub_08039B24
	str r4, [sp]
	str r6, [sp, #4]
	movs r1, #0x46
	movs r2, #0x54
	adds r3, r5, #0
	bl draw_ui_text
	movs r0, #0x22
	bl sub_08039B24
	str r4, [sp]
	str r6, [sp, #4]
	movs r1, #0x82
	movs r2, #0x54
	adds r3, r5, #0
	bl draw_ui_text
	ldr r2, _080385B0 @ =gUnknown_0201953C
	ldrh r0, [r7, #4]
	lsls r0, r0, #2
	ldr r1, _080385B4 @ =gUnknown_080C20D8
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	ldrh r0, [r7, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0, #2]
	strh r0, [r2, #2]
	b _080385F2
	.align 2, 0
_080385B0: .4byte gUnknown_0201953C
_080385B4: .4byte gUnknown_080C20D8
_080385B8:
	movs r0, #0x1f
	bl sub_08039B24
	movs r6, #1
	rsbs r6, r6, #0
	movs r5, #7
	str r5, [sp]
	movs r4, #0
	str r4, [sp, #4]
	movs r1, #0x10
	movs r2, #0x44
	adds r3, r6, #0
	bl draw_ui_text
	movs r0, #0x20
	bl sub_08039B24
	str r5, [sp]
	str r4, [sp, #4]
	movs r1, #0x10
	movs r2, #0x54
	adds r3, r6, #0
	bl draw_ui_text
	ldr r1, _080385FC @ =gUnknown_0201953C
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #2]
_080385F2:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080385FC: .4byte gUnknown_0201953C

	thumb_func_start sub_08038600
sub_08038600: @ 0x08038600
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	movs r0, #0
	mov sl, r0
	movs r5, #0
	ldr r0, _08038674 @ =gGame
	ldr r1, _08038678 @ =0x00008299
	adds r0, r0, r1
	ldrb r2, [r0]
	cmp r5, r2
	bhs _0803864E
	adds r7, r0, #0
_08038620:
	adds r0, r5, #0
	bl get_char_stats
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _08038642
	bl sub_08001D2C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08038642
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_08038642:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrb r3, [r7]
	cmp r5, r3
	blo _08038620
_0803864E:
	ldr r1, _0803867C @ =gUnknown_08D2E15C
	mov r0, sl
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r7, [r0]
	ldr r0, _08038680 @ =gSomeBlend
	ldr r1, _08038684 @ =0x000035BA
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0803868C
	movs r1, #0
	ldr r2, _08038688 @ =0x0000FFE0
	movs r0, #0x80
	movs r3, #0xa0
	b _08038694
	.align 2, 0
_08038674: .4byte gGame
_08038678: .4byte 0x00008299
_0803867C: .4byte gUnknown_08D2E15C
_08038680: .4byte gSomeBlend
_08038684: .4byte 0x000035BA
_08038688: .4byte 0x0000FFE0
_0803868C:
	movs r1, #0x80
	movs r2, #0xa0
	movs r0, #0
	ldr r3, _080386B0 @ =0x0000FFE0
_08038694:
	mov sb, r3
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	mov r8, r3
	lsls r5, r0, #0x10
	lsrs r4, r5, #0x10
	ldrh r0, [r6, #0xa]
	cmp r0, #1
	beq _080386B4
	cmp r0, #1
	ble _0803872A
	cmp r0, #2
	beq _080386F0
	b _0803872A
	.align 2, 0
_080386B0: .4byte 0x0000FFE0
_080386B4:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r6, #8]
	movs r3, #0x10
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	asrs r1, r5, #0x10
	ldrh r2, [r6, #8]
	movs r3, #0x10
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r0, [r6, #8]
	adds r0, #1
	strh r0, [r6, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bne _0803872A
	movs r0, #0
	strh r0, [r6, #0xa]
	b _0803872A
_080386F0:
	asrs r0, r1, #0x10
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r6, #8]
	movs r3, #0x10
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	asrs r0, r5, #0x10
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r6, #8]
	movs r3, #0x10
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r0, [r6, #8]
	adds r0, #1
	strh r0, [r6, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bne _0803872A
	bl sub_08037958
_0803872A:
	ldr r0, _08038778 @ =gSomeBlend
	ldrh r1, [r0, #0x1a]
	strh r4, [r0, #0x1a]
	movs r5, #0
	ldr r0, _0803877C @ =gGame
	ldr r3, _08038780 @ =0x00008299
	adds r0, r0, r3
	ldrb r1, [r0]
	cmp r5, r1
	bhs _0803879A
	mov sb, r0
	mov r2, r8
	lsls r6, r2, #0x10
_08038744:
	adds r0, r5, #0
	bl get_char_stats
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803878C
	bl sub_08001D2C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803878C
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	asrs r3, r6, #0x10
	bl sub_08038ABC
	mov r3, sl
	cmp r3, #3
	bls _08038784
	adds r0, r7, #0
	adds r0, #0x3c
	b _08038788
	.align 2, 0
_08038778: .4byte gSomeBlend
_0803877C: .4byte gGame
_08038780: .4byte 0x00008299
_08038784:
	adds r0, r7, #0
	adds r0, #0x40
_08038788:
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0803878C:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, sb
	ldrb r0, [r0]
	cmp r5, r0
	blo _08038744
_0803879A:
	ldr r0, _080387CC @ =gSomeBlend
	ldr r1, _080387D0 @ =0x000035B6
	adds r2, r0, r1
	ldrh r3, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080387BC
	subs r0, r3, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080387BC
	bl sub_0803793C
_080387BC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080387CC: .4byte gSomeBlend
_080387D0: .4byte 0x000035B6

	thumb_func_start sub_080387D4
sub_080387D4: @ 0x080387D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp, #0x14]
	ldr r6, _08038900 @ =gUnknown_080C1FB8
	ldr r5, _08038904 @ =gUnknown_080C2030
	ldr r0, _08038908 @ =gGame
	ldr r1, _0803890C @ =0x00009D10
	adds r1, r1, r0
	mov sl, r1
	ldr r0, [r1]
	lsrs r0, r0, #3
	movs r4, #7
	ands r0, r4
	adds r0, r0, r5
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #0x24
	movs r7, #0
	str r7, [sp]
	str r7, [sp, #4]
	adds r0, r6, #0
	movs r2, #0x22
	movs r3, #0x20
	bl sub_0803D678
	adds r0, r6, #0
	adds r0, #0x18
	mov r2, sl
	ldr r1, [r2]
	lsrs r1, r1, #3
	ands r1, r4
	adds r1, r1, r5
	movs r2, #0
	ldrsb r2, [r1, r2]
	movs r1, #0xbc
	subs r1, r1, r2
	str r7, [sp]
	str r7, [sp, #4]
	movs r2, #0x22
	movs r3, #0x20
	bl sub_0803D678
	ldr r4, _08038910 @ =gSomeBlend
	mov sb, r4
	ldr r4, _08038914 @ =0x00003524
	add r4, sb
	movs r5, #0
	ldrsh r0, [r4, r5]
	adds r1, r6, #0
	subs r1, #0x60
	cmp r0, #0
	bne _08038846
	adds r1, #0x30
_08038846:
	str r7, [sp]
	str r7, [sp, #4]
	adds r0, r1, #0
	movs r1, #0x78
	movs r2, #0x40
	movs r3, #0x20
	bl sub_0803D678
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r1, r6, #0
	subs r1, #0x48
	cmp r0, #1
	bne _08038864
	adds r1, #0x30
_08038864:
	str r7, [sp]
	str r7, [sp, #4]
	adds r0, r1, #0
	movs r1, #0xb5
	movs r2, #0x40
	movs r3, #0x20
	bl sub_0803D678
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r3, r6, #0
	subs r3, #0xc0
	cmp r0, #2
	bne _08038882
	adds r3, #0x30
_08038882:
	ldr r5, [sp, #0x14]
	ldrh r1, [r5, #4]
	lsls r1, r1, #3
	movs r0, #0xa6
	mov r8, r0
	mov r2, r8
	subs r1, r2, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, _08038918 @ =gUnknown_080C2040
	mov r5, sl
	ldr r0, [r5]
	lsrs r0, r0, #3
	movs r5, #3
	ands r0, r5
	adds r0, r0, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r2, #0x3a
	str r7, [sp]
	str r7, [sp, #4]
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0803D6C8
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r3, r6, #0
	subs r3, #0xa8
	cmp r0, #3
	bne _080388C2
	adds r3, #0x30
_080388C2:
	ldr r2, [sp, #0x14]
	ldrh r1, [r2, #4]
	lsls r1, r1, #3
	mov r4, r8
	subs r1, r4, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, _0803891C @ =gUnknown_080C2048
	mov r4, sl
	ldr r0, [r4]
	lsrs r0, r0, #3
	ands r0, r5
	adds r0, r0, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r2, #0x4d
	str r7, [sp]
	str r7, [sp, #4]
	adds r0, r3, #0
	movs r3, #0x20
	bl sub_0803D6C8
	ldr r0, _08038920 @ =0x000035BA
	add r0, sb
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08038924
	cmp r0, #1
	beq _08038974
	b _080389B8
	.align 2, 0
_08038900: .4byte gUnknown_080C1FB8
_08038904: .4byte gUnknown_080C2030
_08038908: .4byte gGame
_0803890C: .4byte 0x00009D10
_08038910: .4byte gSomeBlend
_08038914: .4byte 0x00003524
_08038918: .4byte gUnknown_080C2040
_0803891C: .4byte gUnknown_080C2048
_08038920: .4byte 0x000035BA
_08038924:
	ldr r6, _0803896C @ =gSave
	ldr r5, _08038970 @ =0x0000351C
	add r5, sb
	mov r8, r5
	ldr r0, [r6, #0xc]
	ldr r1, [r5]
	adds r0, r0, r1
	movs r5, #0x98
	lsls r5, r5, #2
	str r5, [sp]
	movs r4, #0xe
	str r4, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	movs r1, #0x83
	movs r2, #0x33
	movs r3, #6
	bl sub_0803DAAC
	ldr r0, [r6, #8]
	mov r2, r8
	ldr r1, [r2]
	subs r0, r0, r1
	str r5, [sp]
	str r4, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	movs r1, #0x83
	movs r2, #0x53
	movs r3, #6
	bl sub_0803DAAC
	b _080389B8
	.align 2, 0
_0803896C: .4byte gSave
_08038970: .4byte 0x0000351C
_08038974:
	ldr r6, _08038A28 @ =gSave
	ldr r4, _08038A2C @ =0x0000351C
	add r4, sb
	mov r8, r4
	ldr r0, [r6, #0xc]
	ldr r1, [r4]
	subs r0, r0, r1
	movs r5, #0x98
	lsls r5, r5, #2
	str r5, [sp]
	movs r4, #0xe
	str r4, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	movs r1, #0x83
	movs r2, #0x33
	movs r3, #6
	bl sub_0803DAAC
	ldr r0, [r6, #8]
	mov r2, r8
	ldr r1, [r2]
	adds r0, r0, r1
	str r5, [sp]
	str r4, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	movs r1, #0x83
	movs r2, #0x53
	movs r3, #6
	bl sub_0803DAAC
_080389B8:
	ldr r4, _08038A30 @ =gSomeBlend
	ldr r5, _08038A2C @ =0x0000351C
	adds r0, r4, r5
	ldr r0, [r0]
	movs r1, #0x98
	lsls r1, r1, #2
	str r1, [sp]
	movs r1, #0xe
	str r1, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	movs r1, #0x83
	movs r2, #0x43
	movs r3, #6
	bl sub_0803DAAC
	ldr r0, _08038A34 @ =0x00003524
	adds r2, r4, r0
	ldrh r3, [r2]
	movs r5, #0
	ldrsh r1, [r2, r5]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08038A0A
	ldr r0, _08038A38 @ =0x00003526
	adds r1, r4, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _08038A0A
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08038A0A
	ldr r1, _08038A3C @ =0x0000FFFF
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r2]
_08038A0A:
	ldr r0, _08038A30 @ =gSomeBlend
	ldrh r1, [r0, #0x12]
	movs r1, #0
	strh r1, [r0, #0x12]
	ldrh r2, [r0, #0x1a]
	strh r1, [r0, #0x1a]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08038A28: .4byte gSave
_08038A2C: .4byte 0x0000351C
_08038A30: .4byte gSomeBlend
_08038A34: .4byte 0x00003524
_08038A38: .4byte 0x00003526
_08038A3C: .4byte 0x0000FFFF

	thumb_func_start sub_08038A40
sub_08038A40: @ 0x08038A40
	push {r4, r5, r6, lr}
	sub sp, #0x18
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r0, #3
	bl get_progression_flag
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	bne _08038AA6
	ldr r0, _08038AB0 @ =gUnknown_080C1EE0
	lsls r1, r4, #0x10
	asrs r4, r1, #0x10
	ldr r2, _08038AB4 @ =0xFFE00000
	adds r1, r1, r2
	asrs r1, r1, #0x10
	lsls r6, r6, #0x10
	movs r2, #0x80
	lsls r2, r2, #0xc
	adds r6, r6, r2
	asrs r6, r6, #0x10
	movs r5, #0
	str r5, [sp]
	str r5, [sp, #4]
	adds r2, r6, #0
	movs r3, #0x20
	bl sub_0803D678
	ldr r0, _08038AB8 @ =gSave
	ldr r0, [r0, #8]
	subs r4, #0xe
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #1
	str r1, [sp]
	movs r1, #0xfc
	lsls r1, r1, #2
	str r1, [sp, #4]
	movs r1, #2
	str r1, [sp, #8]
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	str r5, [sp, #0x14]
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #6
	bl sub_0803D878
_08038AA6:
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08038AB0: .4byte gUnknown_080C1EE0
_08038AB4: .4byte 0xFFE00000
_08038AB8: .4byte gSave

	thumb_func_start sub_08038ABC
sub_08038ABC: @ 0x08038ABC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	adds r4, r2, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x18]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	adds r0, #2
	mov sb, r0
	movs r1, #9
	bl sub_08022F6C
	lsls r0, r0, #0x10
	lsls r4, r4, #0x10
	asrs r7, r4, #0x10
	adds r1, r7, #0
	adds r1, #0x1e
	lsrs r0, r0, #0xe
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r0, _08038BCC @ =gSomeBlend
	ldr r1, _08038BD0 @ =0x000035BA
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	movs r5, #0
	cmp r0, #0
	beq _08038B0A
	ldr r5, _08038BD4 @ =0x0000FFFD
_08038B0A:
	lsls r6, r6, #0x10
	mov r8, r6
	mov r0, r8
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	add r5, r8
	adds r2, r5, #4
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #7
	str r0, [sp]
	movs r6, #0
	str r6, [sp, #4]
	mov r0, sb
	adds r1, r3, #0
	movs r3, #9
	bl draw_ui_text
	movs r0, #1
	movs r1, #0
	bl sub_080225B4
	ldr r1, [sp, #0x18]
	lsls r4, r1, #1
	adds r4, r4, r1
	lsls r4, r4, #2
	ldr r0, _08038BD8 @ =gUnknown_0200DE08
	mov sl, r0
	adds r0, r4, r0
	movs r1, #0x1d
	adds r1, r1, r7
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov sb, r1
	adds r2, r5, #0
	adds r2, #0xc
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #0x98
	lsls r1, r1, #2
	str r1, [sp]
	movs r1, #0xe
	str r1, [sp, #4]
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	mov r1, sb
	movs r3, #3
	bl sub_0803D9A8
	movs r0, #0x3c
	add sl, r0
	add r4, sl
	adds r5, #0x16
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	movs r1, #0x98
	lsls r1, r1, #2
	str r1, [sp]
	movs r0, #0xe
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r5, #0
	movs r3, #3
	bl sub_0803D9A8
	adds r2, r7, #0
	adds r2, #0x18
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #0x10
	rsbs r1, r1, #0
	add r8, r1
	mov r0, r8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	mov r3, r8
	bl sub_08038E80
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08038BCC: .4byte gSomeBlend
_08038BD0: .4byte 0x000035BA
_08038BD4: .4byte 0x0000FFFD
_08038BD8: .4byte gUnknown_0200DE08

	thumb_func_start sub_08038BDC
sub_08038BDC: @ 0x08038BDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r2, _08038C64 @ =gGame
	ldr r0, [r2]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	cmp r0, #0
	bne _08038BF6
	b _08038E64
_08038BF6:
	ldr r1, _08038C68 @ =0x00008494
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08038C04
	b _08038E64
_08038C04:
	ldr r0, _08038C6C @ =gSomeBlend
	ldr r1, _08038C70 @ =0x000035BA
	adds r0, r0, r1
	ldrb r3, [r0]
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _08038C16
	b _08038E64
_08038C16:
	ldr r1, _08038C74 @ =0x00009484
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r1, _08038C78 @ =0x0002FF00
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bne _08038C2A
	b _08038E64
_08038C2A:
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _08038CA0
	ldr r1, _08038C7C @ =0x000082B4
	adds r0, r2, r1
	ldrh r1, [r0]
	ldr r0, _08038C80 @ =0x0000012B
	cmp r1, r0
	bhi _08038C88
	ldr r1, _08038C84 @ =0x00008495
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08038C4C
	b _08038E64
_08038C4C:
	movs r0, #1
	bl sub_08003D14
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb7
	bne _08038C5C
	b _08038E64
_08038C5C:
	movs r0, #0xb7
	bl play_sound
	b _08038E64
	.align 2, 0
_08038C64: .4byte gGame
_08038C68: .4byte 0x00008494
_08038C6C: .4byte gSomeBlend
_08038C70: .4byte 0x000035BA
_08038C74: .4byte 0x00009484
_08038C78: .4byte 0x0002FF00
_08038C7C: .4byte 0x000082B4
_08038C80: .4byte 0x0000012B
_08038C84: .4byte 0x00008495
_08038C88:
	movs r0, #1
	bl sub_08003D14
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb7
	beq _08038C98
	b _08038E64
_08038C98:
	movs r0, #1
	bl sub_08003B58
	b _08038E64
_08038CA0:
	ldr r1, _08038CD4 @ =0x000082B4
	adds r0, r2, r1
	ldrh r1, [r0]
	ldr r0, _08038CD8 @ =0x0000012B
	cmp r1, r0
	bhi _08038CE0
	movs r0, #0x19
	mov r8, r0
	ldr r1, _08038CDC @ =0x00008495
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08038CF8
	movs r0, #1
	bl sub_08003D14
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb7
	beq _08038CF8
	movs r0, #0xb7
	bl play_sound
	b _08038CF8
	.align 2, 0
_08038CD4: .4byte 0x000082B4
_08038CD8: .4byte 0x0000012B
_08038CDC: .4byte 0x00008495
_08038CE0:
	movs r2, #0x15
	mov r8, r2
	movs r0, #1
	bl sub_08003D14
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb7
	bne _08038CF8
	movs r0, #1
	bl sub_08003B58
_08038CF8:
	ldr r7, _08038D7C @ =gUnknown_080C1D48
	movs r5, #1
	str r5, [sp]
	movs r4, #0
	str r4, [sp, #4]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0x90
	movs r3, #0x20
	bl sub_0803D678
	adds r0, r7, #0
	adds r0, #0x18
	str r5, [sp]
	str r4, [sp, #4]
	movs r1, #0x40
	movs r2, #0x90
	movs r3, #0x20
	bl sub_0803D678
	ldr r4, _08038D80 @ =gGame
	ldr r0, _08038D84 @ =0x000082B4
	adds r4, r4, r0
	ldrh r0, [r4]
	movs r1, #0x3c
	bl Divide
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r6, #9
	ldrh r1, [r4]
	movs r0, #0xe1
	lsls r0, r0, #3
	cmp r1, r0
	bls _08038D8C
	movs r5, #0
	mov r1, r8
	lsls r0, r1, #1
	add r0, r8
	lsls r0, r0, #3
	mov r8, r0
	ldr r2, _08038D88 @ =0xFFFFFE38
	adds r7, r7, r2
	movs r4, #0
_08038D52:
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	str r4, [sp]
	str r4, [sp, #4]
	mov r2, r8
	adds r0, r2, r7
	movs r2, #0x98
	movs r3, #0x20
	bl sub_0803D678
	adds r0, r6, #0
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #6
	bls _08038D52
	b _08038E64
	.align 2, 0
_08038D7C: .4byte gUnknown_080C1D48
_08038D80: .4byte gGame
_08038D84: .4byte 0x000082B4
_08038D88: .4byte 0xFFFFFE38
_08038D8C:
	ldr r0, [sp, #8]
	movs r1, #4
	bl Divide
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r5, #0
	cmp r5, r4
	bhs _08038DD6
	mov r1, r8
	lsls r0, r1, #1
	add r0, r8
	lsls r0, r0, #3
	mov sb, r0
	ldr r2, _08038DF4 @ =0xFFFFFE38
	adds r2, r2, r7
	mov sl, r2
	movs r7, #0
_08038DB0:
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	str r7, [sp]
	str r7, [sp, #4]
	mov r0, sb
	add r0, sl
	movs r2, #0x98
	movs r3, #0x20
	bl sub_0803D678
	adds r0, r6, #0
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r4
	blo _08038DB0
_08038DD6:
	ldr r0, [sp, #8]
	movs r1, #4
	bl sub_08002FD4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bne _08038DFC
	mov r1, r8
	lsls r0, r1, #1
	add r0, r8
	lsls r0, r0, #3
	ldr r1, _08038DF8 @ =gUnknown_080C1B98
	b _08038E1E
	.align 2, 0
_08038DF4: .4byte 0xFFFFFE38
_08038DF8: .4byte gUnknown_080C1B98
_08038DFC:
	cmp r4, #2
	bne _08038E10
	mov r2, r8
	lsls r0, r2, #1
	add r0, r8
	lsls r0, r0, #3
	ldr r1, _08038E0C @ =gUnknown_080C1BB0
	b _08038E1E
	.align 2, 0
_08038E0C: .4byte gUnknown_080C1BB0
_08038E10:
	cmp r4, #1
	bne _08038E38
	mov r1, r8
	lsls r0, r1, #1
	add r0, r8
	lsls r0, r0, #3
	ldr r1, _08038E34 @ =gUnknown_080C1BC8
_08038E1E:
	adds r0, r0, r1
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r2, #0x98
	movs r3, #0x20
	bl sub_0803D678
	b _08038E64
	.align 2, 0
_08038E34: .4byte gUnknown_080C1BC8
_08038E38:
	ldr r0, _08038E74 @ =gGame
	ldr r2, _08038E78 @ =0x000082B4
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #0
	beq _08038E64
	cmp r6, #9
	bne _08038E64
	mov r1, r8
	lsls r0, r1, #1
	add r0, r8
	lsls r0, r0, #3
	ldr r1, _08038E7C @ =gUnknown_080C1BC8
	adds r0, r0, r1
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #9
	movs r2, #0x98
	movs r3, #0x20
	bl sub_0803D678
_08038E64:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08038E74: .4byte gGame
_08038E78: .4byte 0x000082B4
_08038E7C: .4byte gUnknown_080C1BC8

	thumb_func_start sub_08038E80
sub_08038E80: @ 0x08038E80
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	ldrh r0, [r6, #0x30]
	cmp r0, #0
	beq _08038F82
	ldr r0, _08038EE0 @ =gGame
	lsls r4, r1, #2
	ldr r1, _08038EE4 @ =0x00008280
	adds r0, r0, r1
	adds r5, r4, r0
	ldr r0, [r5]
	movs r1, #0x3c
	bl Divide
	movs r1, #8
	bl sub_08002FD4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	lsls r1, r0
	lsrs r3, r1, #0x10
	adds r0, #0xb
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrh r0, [r6, #0x30]
	ands r0, r3
	adds r7, r4, #0
	cmp r0, #0
	beq _08038EDC
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
_08038EDC:
	movs r4, #0
	b _08038F14
	.align 2, 0
_08038EE0: .4byte gGame
_08038EE4: .4byte 0x00008280
_08038EE8:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x12
	bls _08038EF8
	movs r2, #0xb
	movs r3, #1
	b _08038EFC
_08038EF8:
	lsls r0, r3, #0x11
	lsrs r3, r0, #0x10
_08038EFC:
	ldr r0, _08038F58 @ =gGame
	ldr r1, _08038F5C @ =0x00008280
	adds r0, r0, r1
	adds r0, r7, r0
	ldr r1, [r0]
	adds r1, #0x3c
	str r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #7
	bhi _08038F24
_08038F14:
	cmp r2, #0xd
	beq _08038EE8
	cmp r2, #0xf
	beq _08038EE8
	ldrh r0, [r6, #0x30]
	ands r0, r3
	cmp r0, #0
	beq _08038EE8
_08038F24:
	movs r4, #0
	ldrh r1, [r6, #0x30]
	mov r0, sb
	lsls r5, r0, #0x10
	mov r0, r8
	lsls r6, r0, #0x10
_08038F30:
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08038F64
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _08038F60 @ =gUnknown_080C1B80
	adds r0, r0, r1
	movs r1, #1
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	asrs r1, r5, #0x10
	asrs r2, r6, #0x10
	movs r3, #0x20
	bl sub_0803D678
	b _08038F82
	.align 2, 0
_08038F58: .4byte gGame
_08038F5C: .4byte 0x00008280
_08038F60: .4byte gUnknown_080C1B80
_08038F64:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x12
	bls _08038F74
	movs r2, #0xb
	movs r3, #1
	b _08038F78
_08038F74:
	lsls r0, r3, #0x11
	lsrs r3, r0, #0x10
_08038F78:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #7
	bls _08038F30
_08038F82:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08038F90
sub_08038F90: @ 0x08038F90
	push {r4, r5, r6, lr}
	sub sp, #0xc
	ldr r4, _08039014 @ =gSomeBlend
	ldr r1, _08039018 @ =0x00003670
	adds r0, r4, r1
	ldrh r0, [r0]
	ldrh r1, [r4, #0x12]
	movs r6, #0
	strh r0, [r4, #0x12]
	ldr r2, _0803901C @ =0x00003672
	adds r0, r4, r2
	ldrh r0, [r0]
	ldrh r1, [r4, #0x1a]
	strh r0, [r4, #0x1a]
	movs r0, #0
	add r1, sp, #8
	bl sub_08036C00
	ldr r3, _08039020 @ =0x00003514
	adds r5, r4, r3
	adds r0, r5, #0
	add r1, sp, #8
	bl sub_080392C4
	ldr r1, [r5]
	ldr r0, _08039024 @ =0x00A000F0
	cmp r1, r0
	beq _08039002
	ldrh r0, [r5]
	ldr r1, _08039028 @ =0x00003516
	adds r4, r4, r1
	ldrh r1, [r4]
	subs r0, #4
	strh r0, [r5]
	subs r1, #4
	strh r1, [r4]
	ldr r0, _0803902C @ =gGame
	ldr r2, _08039030 @ =0x00009D10
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x1e
	bl Divide
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08039002
	ldr r0, _08039034 @ =gUnknown_080C1E50
	movs r3, #0
	ldrsh r1, [r5, r3]
	movs r3, #0
	ldrsh r2, [r4, r3]
	str r6, [sp]
	str r6, [sp, #4]
	movs r3, #0x20
	bl sub_0803D678
_08039002:
	bl sub_0803917C
	bl sub_08039038
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08039014: .4byte gSomeBlend
_08039018: .4byte 0x00003670
_0803901C: .4byte 0x00003672
_08039020: .4byte 0x00003514
_08039024: .4byte 0x00A000F0
_08039028: .4byte 0x00003516
_0803902C: .4byte gGame
_08039030: .4byte 0x00009D10
_08039034: .4byte gUnknown_080C1E50

	thumb_func_start sub_08039038
sub_08039038: @ 0x08039038
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	ldr r6, _08039058 @ =gUnknown_080C5AC8
	movs r0, #0
	mov r8, r0
_08039046:
	ldrh r2, [r6]
	ldrh r0, [r6, #2]
	adds r1, r0, #0
	cmp r1, #0xf0
	bne _0803905C
	movs r1, #0xf
	movs r4, #0xf2
	b _0803906E
	.align 2, 0
_08039058: .4byte gUnknown_080C5AC8
_0803905C:
	cmp r1, #0xef
	bne _08039066
	movs r1, #0x10
	movs r4, #0xf1
	b _0803906E
_08039066:
	subs r0, #0xf1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r4, [r6, #2]
_0803906E:
	ldr r5, _08039158 @ =gSomeBlend
	ldr r3, _0803915C @ =0x00003684
	adds r0, r5, r3
	ldrh r0, [r0]
	cmp r1, r0
	bne _0803913A
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r2, r0
	beq _0803913A
	adds r0, r2, #0
	bl get_flag
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803913A
	cmp r4, #0
	beq _0803913A
	ldr r0, _08039160 @ =gSave
	adds r0, #0x10
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0x62
	bhi _080390A2
	cmp r0, #0
	beq _0803913A
_080390A2:
	ldr r1, _08039164 @ =0x0000366C
	adds r0, r5, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r3, _08039168 @ =0x00003670
	adds r0, r5, r3
	lsls r1, r1, #3
	ldrh r0, [r0]
	adds r1, r1, r0
	movs r7, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _0803916C @ =0xFFFF0000
	ldr r0, [sp, #8]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	ldr r1, _08039170 @ =0x0000366E
	adds r0, r5, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r3, _08039174 @ =0x00003672
	adds r1, r5, r3
	lsls r0, r0, #3
	ldrh r1, [r1]
	adds r0, r0, r1
	add r5, sp, #8
	strh r0, [r5, #2]
	movs r0, #0xf0
	strh r0, [r5, #4]
	movs r0, #0xa0
	strh r0, [r5, #6]
	ldrh r1, [r6, #4]
	subs r1, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #0x10]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x10]
	ldrh r0, [r6, #6]
	subs r0, #0x10
	add r4, sp, #0x10
	strh r0, [r4, #2]
	movs r0, #0x20
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080023E0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803913A
	ldrb r1, [r6, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08039178 @ =gUnknown_080C1E50
	adds r0, r0, r1
	ldrh r1, [r4]
	add r2, sp, #8
	ldrh r2, [r2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r4, #2]
	ldrh r3, [r5, #2]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r7, [sp]
	str r7, [sp, #4]
	movs r3, #0x20
	bl sub_0803D678
_0803913A:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r6, #0xc
	cmp r0, #0x13
	bhi _0803914C
	b _08039046
_0803914C:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039158: .4byte gSomeBlend
_0803915C: .4byte 0x00003684
_08039160: .4byte gSave
_08039164: .4byte 0x0000366C
_08039168: .4byte 0x00003670
_0803916C: .4byte 0xFFFF0000
_08039170: .4byte 0x0000366E
_08039174: .4byte 0x00003672
_08039178: .4byte gUnknown_080C1E50

	thumb_func_start sub_0803917C
sub_0803917C: @ 0x0803917C
	push {r4, lr}
	sub sp, #8
	ldr r1, _0803928C @ =gSomeBlend
	ldr r2, _08039290 @ =0x0000366E
	adds r0, r1, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bgt _0803919A
	adds r2, #4
	adds r0, r1, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	ble _080391C2
_0803919A:
	ldr r0, _08039294 @ =gUnknown_080C1E80
	ldr r3, _08039298 @ =gUnknown_080C2038
	ldr r1, _0803929C @ =gGame
	ldr r2, _080392A0 @ =0x00009D10
	adds r1, r1, r2
	ldr r1, [r1]
	lsrs r1, r1, #3
	movs r2, #7
	ands r1, r2
	adds r1, r1, r3
	movs r2, #0
	ldrsb r2, [r1, r2]
	rsbs r2, r2, #0
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #0x74
	movs r3, #0x20
	bl sub_0803D678
_080391C2:
	ldr r4, _0803928C @ =gSomeBlend
	ldr r3, _08039290 @ =0x0000366E
	adds r0, r4, r3
	ldr r2, _080392A4 @ =0x00003676
	adds r1, r4, r2
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r2, r0
	bge _08039200
	ldr r0, _080392A8 @ =gUnknown_080C1E98
	ldr r3, _08039298 @ =gUnknown_080C2038
	ldr r1, _0803929C @ =gGame
	ldr r2, _080392A0 @ =0x00009D10
	adds r1, r1, r2
	ldr r1, [r1]
	lsrs r1, r1, #3
	movs r2, #7
	ands r1, r2
	adds r1, r1, r3
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r2, #0x98
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #0x74
	movs r3, #0x20
	bl sub_0803D678
_08039200:
	ldr r3, _080392AC @ =0x0000366C
	adds r0, r4, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _08039218
	ldr r2, _080392B0 @ =0x00003670
	adds r0, r4, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	ble _08039242
_08039218:
	ldr r0, _080392B4 @ =gUnknown_080C1EB0
	ldr r3, _080392B8 @ =gUnknown_080C2030
	ldr r1, _0803929C @ =gGame
	ldr r2, _080392A0 @ =0x00009D10
	adds r1, r1, r2
	ldr r1, [r1]
	lsrs r1, r1, #3
	movs r2, #7
	ands r1, r2
	adds r1, r1, r3
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	rsbs r1, r1, #0
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r2, #0x4c
	movs r3, #0x20
	bl sub_0803D678
_08039242:
	ldr r0, _0803928C @ =gSomeBlend
	ldr r3, _080392AC @ =0x0000366C
	adds r1, r0, r3
	ldr r2, _080392BC @ =0x00003674
	adds r0, r0, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	bge _08039282
	ldr r0, _080392C0 @ =gUnknown_080C1EC8
	ldr r3, _080392B8 @ =gUnknown_080C2030
	ldr r1, _0803929C @ =gGame
	ldr r2, _080392A0 @ =0x00009D10
	adds r1, r1, r2
	ldr r1, [r1]
	lsrs r1, r1, #3
	movs r2, #7
	ands r1, r2
	adds r1, r1, r3
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r1, #0xe8
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r2, #0x4c
	movs r3, #0x20
	bl sub_0803D678
_08039282:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803928C: .4byte gSomeBlend
_08039290: .4byte 0x0000366E
_08039294: .4byte gUnknown_080C1E80
_08039298: .4byte gUnknown_080C2038
_0803929C: .4byte gGame
_080392A0: .4byte 0x00009D10
_080392A4: .4byte 0x00003676
_080392A8: .4byte gUnknown_080C1E98
_080392AC: .4byte 0x0000366C
_080392B0: .4byte 0x00003670
_080392B4: .4byte gUnknown_080C1EB0
_080392B8: .4byte gUnknown_080C2030
_080392BC: .4byte 0x00003674
_080392C0: .4byte gUnknown_080C1EC8

	thumb_func_start sub_080392C4
sub_080392C4: @ 0x080392C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	mov sb, r1
	ldr r0, _08039304 @ =gGame
	ldr r1, _08039308 @ =0x000067AC
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0803930C @ =gTownMapInfoTable
	adds r7, r0, r1
	ldrh r0, [r7, #2]
	cmp r0, #0
	bne _08039310
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _08039310
	ldrh r0, [r7, #8]
	cmp r0, #0
	bne _08039310
	movs r0, #0xf0
	mov r2, r8
	strh r0, [r2]
	movs r0, #0xa0
	strh r0, [r2, #2]
	b _080393B6
	.align 2, 0
_08039304: .4byte gGame
_08039308: .4byte 0x000067AC
_0803930C: .4byte gTownMapInfoTable
_08039310:
	bl sub_0801A5EC
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov sl, r6
	bl sub_0801A604
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldrh r0, [r7, #6]
	ldrh r5, [r7, #2]
	subs r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r4, [r7, #8]
	ldrh r1, [r7, #4]
	subs r4, r4, r1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r3, sb
	movs r6, #0
	ldrsh r1, [r3, r6]
	muls r0, r1, r0
	mov r1, sl
	str r2, [sp]
	bl __divsi3
	adds r5, r5, r0
	mov r0, r8
	strh r5, [r0]
	mov r1, sb
	movs r3, #2
	ldrsh r0, [r1, r3]
	muls r0, r4, r0
	ldr r2, [sp]
	adds r1, r2, #0
	bl __divsi3
	ldrh r3, [r7, #4]
	adds r3, r3, r0
	ldr r1, _080393C8 @ =gSomeBlend
	ldr r4, _080393CC @ =0x0000366C
	adds r0, r1, r4
	movs r6, #0
	ldrsh r0, [r0, r6]
	adds r4, #4
	adds r2, r1, r4
	lsls r0, r0, #3
	ldrh r2, [r2]
	adds r0, r0, r2
	subs r5, r5, r0
	mov r6, r8
	strh r5, [r6]
	ldr r2, _080393D0 @ =0x0000366E
	adds r0, r1, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	ldr r6, _080393D4 @ =0x00003672
	adds r1, r1, r6
	lsls r0, r0, #3
	ldrh r1, [r1]
	adds r0, r0, r1
	subs r3, r3, r0
	mov r0, r8
	strh r3, [r0, #2]
	lsls r5, r5, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x11
	cmp r5, r0
	bhi _080393AC
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _080393AC
	cmp r0, #0xb0
	ble _080393B6
_080393AC:
	movs r0, #0xf0
	mov r1, r8
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #2]
_080393B6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080393C8: .4byte gSomeBlend
_080393CC: .4byte 0x0000366C
_080393D0: .4byte 0x0000366E
_080393D4: .4byte 0x00003672

	thumb_func_start sub_080393D8
sub_080393D8: @ 0x080393D8
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldrb r1, [r5, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080393EA
	b _080394D6
_080393EA:
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1d
	cmp r0, #4
	bhi _080394D6
	lsls r0, r0, #2
	ldr r1, _080393FC @ =_08039400
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080393FC: .4byte _08039400
_08039400: @ jump table
	.4byte _08039414 @ case 0
	.4byte _08039448 @ case 1
	.4byte _08039480 @ case 2
	.4byte _08039488 @ case 3
	.4byte _080394A4 @ case 4
_08039414:
	ldr r0, _08039438 @ =gUnknown_080C1B80
	ldr r3, _0803943C @ =gUnknown_080C2030
	ldr r1, _08039440 @ =gGame
	ldr r2, _08039444 @ =0x00009D10
	adds r1, r1, r2
	ldr r1, [r1]
	lsrs r1, r1, #3
	movs r2, #7
	ands r1, r2
	adds r1, r1, r3
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r3, [r5, #4]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	b _0803948E
	.align 2, 0
_08039438: .4byte gUnknown_080C1B80
_0803943C: .4byte gUnknown_080C2030
_08039440: .4byte gGame
_08039444: .4byte 0x00009D10
_08039448:
	ldr r0, _08039470 @ =gUnknown_080C1B98
	movs r2, #4
	ldrsh r1, [r5, r2]
	ldr r4, _08039474 @ =gUnknown_080C2048
	ldr r2, _08039478 @ =gGame
	ldr r3, _0803947C @ =0x00009D10
	adds r2, r2, r3
	ldr r2, [r2]
	lsrs r2, r2, #3
	movs r3, #7
	ands r2, r3
	adds r2, r2, r4
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	ldrh r5, [r5, #6]
	adds r2, r2, r5
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	b _08039492
	.align 2, 0
_08039470: .4byte gUnknown_080C1B98
_08039474: .4byte gUnknown_080C2048
_08039478: .4byte gGame
_0803947C: .4byte 0x00009D10
_08039480:
	ldr r0, _08039484 @ =gUnknown_080C1B98
	b _0803948A
	.align 2, 0
_08039484: .4byte gUnknown_080C1B98
_08039488:
	ldr r0, _080394A0 @ =gUnknown_080C1C40
_0803948A:
	movs r2, #4
	ldrsh r1, [r5, r2]
_0803948E:
	movs r3, #6
	ldrsh r2, [r5, r3]
_08039492:
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	movs r3, #0x20
	bl sub_0803D678
	b _080394D6
	.align 2, 0
_080394A0: .4byte gUnknown_080C1C40
_080394A4:
	ldr r0, _080394E0 @ =gUnknown_080C1B98
	movs r2, #4
	ldrsh r1, [r5, r2]
	ldr r4, _080394E4 @ =gUnknown_080C2048
	ldr r2, _080394E8 @ =gGame
	ldr r3, _080394EC @ =0x00009D10
	adds r2, r2, r3
	ldr r2, [r2]
	lsrs r2, r2, #3
	movs r3, #7
	ands r2, r3
	adds r2, r2, r4
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	ldrh r5, [r5, #6]
	adds r2, r2, r5
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	movs r3, #0x20
	bl sub_0803D6C8
_080394D6:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080394E0: .4byte gUnknown_080C1B98
_080394E4: .4byte gUnknown_080C2048
_080394E8: .4byte gGame
_080394EC: .4byte 0x00009D10

	thumb_func_start sub_080394F0
sub_080394F0: @ 0x080394F0
	push {r4, lr}
	bl sub_0800A07C
	ldr r3, _08039524 @ =gSomeBlend
	ldr r0, _08039528 @ =0x00003530
	adds r1, r3, r0
	ldrb r0, [r1]
	cmp r0, #3
	bhi _0803951C
	ldr r0, _0803952C @ =gUnknown_08D2E168
	ldrb r1, [r1]
	lsls r2, r1, #2
	adds r2, r2, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r4, _08039530 @ =0x00002CB0
	adds r1, r3, r4
	adds r0, r0, r1
	ldr r1, [r2]
	bl _call_via_r1
_0803951C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08039524: .4byte gSomeBlend
_08039528: .4byte 0x00003530
_0803952C: .4byte gUnknown_08D2E168
_08039530: .4byte 0x00002CB0

	thumb_func_start nullsub_71
nullsub_71: @ 0x08039534
	bx lr
	.align 2, 0

	thumb_func_start nullsub_72
nullsub_72: @ 0x08039538
	bx lr
	.align 2, 0

	thumb_func_start nullsub_73
nullsub_73: @ 0x0803953C
	bx lr
	.align 2, 0

	thumb_func_start nullsub_74
nullsub_74: @ 0x08039540
	bx lr
	.align 2, 0

	thumb_func_start sub_08039544
sub_08039544: @ 0x08039544
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov ip, r2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r3, r4, #0
	mov r0, sp
	strh r5, [r0]
	ldrh r1, [r1, #2]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080395B6
	ldrh r0, [r6]
	cmp r0, r8
	beq _08039596
	cmp r4, #0x40
	bne _0803958A
	movs r0, #0xd0
	bl play_sound
	b _08039590
_0803958A:
	movs r0, #0xd1
	bl play_sound
_08039590:
	ldrh r0, [r6]
	subs r0, #1
	b _080395F8
_08039596:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _080395FE
	cmp r3, #0x40
	bne _080395AA
	movs r0, #0xd0
	bl play_sound
	b _080395B0
_080395AA:
	movs r0, #0xd1
	bl play_sound
_080395B0:
	strh r7, [r6]
	movs r0, #1
	b _08039600
_080395B6:
	ands r1, r2
	cmp r1, #0
	beq _080395FE
	ldrh r0, [r6]
	cmp r0, r7
	beq _080395DA
	cmp r2, #0x80
	bne _080395CE
	movs r0, #0xd0
	bl play_sound
	b _080395D4
_080395CE:
	movs r0, #0xd1
	bl play_sound
_080395D4:
	ldrh r0, [r6]
	adds r0, #1
	b _080395F8
_080395DA:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _080395FE
	mov r0, ip
	cmp r0, #0x80
	bne _080395F0
	movs r0, #0xd0
	bl play_sound
	b _080395F6
_080395F0:
	movs r0, #0xd1
	bl play_sound
_080395F6:
	mov r0, r8
_080395F8:
	strh r0, [r6]
	movs r0, #1
	b _08039600
_080395FE:
	movs r0, #0
_08039600:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0803960C
sub_0803960C: @ 0x0803960C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [sp, #0xc]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r4]
	cmp r0, #0
	bne _08039626
	cmp r1, #0
	beq _0803968A
_08039626:
	ldrh r2, [r2, #2]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _08039658
	ldrh r0, [r4]
	cmp r0, r3
	beq _0803968A
	movs r0, #0xd0
	bl play_sound
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	ldrh r0, [r5, #6]
	cmp r0, #1
	bls _08039686
	ldrh r1, [r5, #8]
	ldrh r2, [r4]
	adds r0, r2, #1
	cmp r1, r0
	bne _08039686
	strh r2, [r5, #8]
	movs r0, #2
	b _0803968C
_08039658:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0803968A
	ldrh r0, [r4]
	cmp r0, r1
	beq _0803968A
	movs r0, #0xd0
	bl play_sound
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	ldrh r1, [r4]
	ldrh r2, [r5, #8]
	ldrh r0, [r5, #6]
	adds r0, r2, r0
	cmp r1, r0
	blt _08039686
	adds r0, r2, #1
	strh r0, [r5, #8]
	movs r0, #2
	b _0803968C
_08039686:
	movs r0, #1
	b _0803968C
_0803968A:
	movs r0, #0
_0803968C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08039694
sub_08039694: @ 0x08039694
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [sp, #0x18]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov ip, r2
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	mov r0, sp
	strh r1, [r0]
	mov r3, sp
	adds r3, #2
	ldrh r0, [r0]
	adds r6, r3, #0
	cmp r0, #0
	beq _080396C4
	ldrh r0, [r4, #2]
	lsrs r0, r0, #9
	movs r1, #1
	adds r2, r1, #0
	ands r2, r0
	b _080396D2
_080396C4:
	movs r2, #0
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bne _080396D2
	movs r2, #1
_080396D2:
	strh r2, [r3]
	ldrh r0, [r6]
	cmp r0, #0
	beq _080396E8
	ldrh r0, [r5]
	cmp r0, ip
	beq _080396E4
	subs r0, #1
	b _08039720
_080396E4:
	strh r7, [r5]
	b _08039722
_080396E8:
	adds r3, r6, #0
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _080396FE
	ldrh r0, [r4, #2]
	lsrs r0, r0, #8
	movs r1, #1
	adds r2, r1, #0
	ands r2, r0
	b _0803970C
_080396FE:
	movs r2, #0
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0803970C
	movs r2, #1
_0803970C:
	strh r2, [r3]
	ldrh r0, [r6]
	cmp r0, #0
	beq _0803972C
	ldrh r0, [r5]
	cmp r0, r7
	beq _0803971E
	adds r0, #1
	b _08039720
_0803971E:
	mov r0, ip
_08039720:
	strh r0, [r5]
_08039722:
	movs r0, #0xd1
	bl play_sound
	movs r0, #1
	b _0803972E
_0803972C:
	movs r0, #0
_0803972E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08039738
sub_08039738: @ 0x08039738
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [sp, #0x18]
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	mov r0, sp
	strh r1, [r0]
	mov r2, sp
	adds r2, #2
	ldrh r0, [r0]
	adds r3, r2, #0
	cmp r0, #0
	beq _08039764
	ldrh r0, [r4, #2]
	lsrs r0, r0, #5
	movs r1, #1
	ands r1, r0
	b _0803976E
_08039764:
	movs r1, #0
	ldrh r0, [r4]
	cmp r0, #0x20
	bne _0803976E
	movs r1, #1
_0803976E:
	strh r1, [r2]
	ldrh r0, [r3]
	cmp r0, #0
	beq _08039786
	ldrh r0, [r5]
	cmp r0, r7
	beq _08039782
	subs r0, #1
	strh r0, [r5]
	b _080397BA
_08039782:
	strh r6, [r5]
	b _080397BA
_08039786:
	adds r2, r3, #0
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0803979A
	ldrh r0, [r4, #2]
	lsrs r0, r0, #4
	movs r1, #1
	ands r1, r0
	b _080397A4
_0803979A:
	movs r1, #0
	ldrh r0, [r4]
	cmp r0, #0x10
	bne _080397A4
	movs r1, #1
_080397A4:
	strh r1, [r2]
	ldrh r0, [r3]
	cmp r0, #0
	beq _080397C4
	ldrh r0, [r5]
	cmp r0, r6
	beq _080397B8
	adds r0, #1
	strh r0, [r5]
	b _080397BA
_080397B8:
	strh r7, [r5]
_080397BA:
	movs r0, #0xd1
	bl play_sound
	movs r0, #1
	b _080397C6
_080397C4:
	movs r0, #0
_080397C6:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080397D0
sub_080397D0: @ 0x080397D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x38]
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	str r6, [sp, #4]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	mov r2, r8
	str r2, [sp, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	str r0, [sp, #0xc]
	mov r0, sp
	strh r1, [r0]
	ldrh r7, [r5]
	adds r0, r7, #0
	adds r1, r6, #0
	bl __umodsi3
	adds r2, r0, #0
	subs r0, r7, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r1, sb
	str r1, [sp, #0x10]
	ldrh r1, [r4, #2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803985C
	adds r0, r7, #0
	adds r1, r6, #0
	bl __udivsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803983C
	movs r0, #0xd0
	bl play_sound
	ldrh r0, [r5]
	subs r0, r0, r6
	b _08039906
_0803983C:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08039922
	mov r2, r8
	cmp r2, #1
	bls _08039922
	movs r0, #0xd0
	bl play_sound
	mov r0, r8
	subs r0, #1
	muls r0, r6, r0
	ldrh r1, [r5]
	adds r0, r0, r1
	b _08039906
_0803985C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080398AA
	adds r0, r7, #0
	adds r1, r6, #0
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r4, r8
	subs r4, #1
	cmp r0, r4
	bge _0803988C
	adds r0, r7, r6
	cmp r0, sl
	bge _0803991E
	movs r0, #0xd0
	bl play_sound
	ldrh r0, [r5]
	adds r0, r6, r0
	strh r0, [r5]
	b _0803991E
_0803988C:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08039922
	ldr r2, [sp, #8]
	cmp r2, #1
	bls _08039922
	movs r0, #0xd0
	bl play_sound
	adds r1, r6, #0
	muls r1, r4, r1
	ldrh r0, [r5]
	subs r0, r0, r1
	b _08039906
_080398AA:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080398E0
	lsls r0, r2, #0x10
	cmp r0, #0
	beq _080398C4
	movs r0, #0xd1
	bl play_sound
	ldrh r0, [r5]
	subs r0, #1
	b _08039906
_080398C4:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08039922
	movs r0, #0xd1
	bl play_sound
	ldr r0, _080398DC @ =0x0000FFFF
	add r0, sb
	adds r0, r6, r0
	b _08039906
	.align 2, 0
_080398DC: .4byte 0x0000FFFF
_080398E0:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08039922
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #4]
	subs r1, #1
	cmp r0, r1
	bge _0803990A
	adds r0, r7, #1
	ldr r1, [sp, #0xc]
	cmp r0, r1
	bge _0803991E
	movs r0, #0xd1
	bl play_sound
	ldrh r0, [r5]
	adds r0, #1
_08039906:
	strh r0, [r5]
	b _0803991E
_0803990A:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08039922
	movs r0, #0xd1
	bl play_sound
	mov r2, sp
	ldrh r2, [r2, #0x10]
	strh r2, [r5]
_0803991E:
	movs r0, #1
	b _08039924
_08039922:
	movs r0, #0
_08039924:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08039934
sub_08039934: @ 0x08039934
	push {r4, r5, r6, r7, lr}
	adds r2, r1, #0
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08039A10
	lsls r0, r0, #2
	ldr r1, _08039948 @ =_0803994C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08039948: .4byte _0803994C
_0803994C: @ jump table
	.4byte _08039964 @ case 0
	.4byte _08039968 @ case 1
	.4byte _0803996C @ case 2
	.4byte _08039970 @ case 3
	.4byte _08039976 @ case 4
	.4byte _08039980 @ case 5
_08039964:
	movs r5, #1
	b _08039982
_08039968:
	movs r5, #0xa
	b _08039982
_0803996C:
	movs r5, #0x64
	b _08039982
_08039970:
	movs r5, #0xfa
	lsls r5, r5, #2
	b _08039982
_08039976:
	ldr r5, _0803997C @ =0x00002710
	b _08039982
	.align 2, 0
_0803997C: .4byte 0x00002710
_08039980:
	ldr r5, _080399BC @ =0x000186A0
_08039982:
	ldrh r1, [r2, #2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080399CC
	ldr r6, _080399C0 @ =gSomeBlend
	ldr r0, _080399C4 @ =0x0000351C
	adds r4, r6, r0
	adds r0, #4
	adds r7, r6, r0
	ldr r1, [r4]
	ldr r0, [r7]
	cmp r1, r0
	bhs _08039A10
	movs r0, #0xd0
	bl play_sound
	ldr r0, [r4]
	adds r0, r0, r5
	str r0, [r4]
	ldr r1, [r7]
	cmp r0, r1
	bls _080399B2
	str r1, [r4]
_080399B2:
	ldr r0, _080399C8 @ =0x00003524
	adds r1, r6, r0
	movs r0, #2
	b _080399F2
	.align 2, 0
_080399BC: .4byte 0x000186A0
_080399C0: .4byte gSomeBlend
_080399C4: .4byte 0x0000351C
_080399C8: .4byte 0x00003524
_080399CC:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08039A10
	ldr r6, _08039A00 @ =gSomeBlend
	ldr r0, _08039A04 @ =0x0000351C
	adds r4, r6, r0
	ldr r0, [r4]
	cmp r0, r5
	blo _08039A10
	movs r0, #0xd0
	bl play_sound
	ldr r0, [r4]
	subs r0, r0, r5
	str r0, [r4]
	ldr r0, _08039A08 @ =0x00003524
	adds r1, r6, r0
	movs r0, #3
_080399F2:
	strh r0, [r1]
	ldr r0, _08039A0C @ =0x00003526
	adds r1, r6, r0
	movs r0, #0xa
	strh r0, [r1]
	movs r0, #1
	b _08039A12
	.align 2, 0
_08039A00: .4byte gSomeBlend
_08039A04: .4byte 0x0000351C
_08039A08: .4byte 0x00003524
_08039A0C: .4byte 0x00003526
_08039A10:
	movs r0, #0
_08039A12:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08039A18
sub_08039A18: @ 0x08039A18
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r0, [sp, #0x1c]
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsrs r6, r1, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r3, #0
	bl sub_08022F14
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r4, #0
	cmp r4, r7
	bhs _08039A68
_08039A4A:
	ldrh r0, [r5]
	adds r1, r6, #0
	mov r2, r8
	mov r3, sb
	bl sub_080088AC
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r5, #2
	cmp r4, r7
	blo _08039A4A
_08039A68:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08039A74
sub_08039A74: @ 0x08039A74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0x40]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
	mov r0, sp
	strh r1, [r0]
	add r6, sp, #4
	ldr r0, _08039B1C @ =gSomeBlend
	ldr r1, _08039B20 @ =0x00011C80
	adds r1, r1, r0
	mov sl, r1
	ldrh r2, [r1]
	adds r0, r6, #0
	mov r1, r8
	bl sub_08002634
	adds r7, r4, #0
	mov r8, r5
	mov r1, sp
	adds r1, #2
	movs r0, #0
	strh r0, [r1]
	movs r4, #0
	cmp r4, sb
	bhs _08039B0C
	adds r5, r1, #0
_08039ACA:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _08039AEA
	ldrh r0, [r5]
	cmp r0, #0
	bne _08039AEA
	mov r0, sb
	subs r0, #1
	cmp r4, r0
	beq _08039AEA
	ldrh r0, [r6]
	mov r2, sl
	ldrh r2, [r2]
	cmp r0, r2
	beq _08039B00
_08039AEA:
	ldrh r0, [r6]
	adds r1, r7, #0
	mov r2, r8
	ldr r3, [sp, #0x18]
	bl sub_080088AC
	movs r0, #1
	strh r0, [r5]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08039B00:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r6, #2
	cmp r4, sb
	blo _08039ACA
_08039B0C:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039B1C: .4byte gSomeBlend
_08039B20: .4byte 0x00011C80

	thumb_func_start sub_08039B24
sub_08039B24: @ 0x08039B24
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r5, _08039B40 @ =gUnknown_09AF3790
	adds r0, r5, #0
	movs r1, #0x24
	bl sub_0800289C
	adds r4, r0, #0
	cmp r4, #0
	bne _08039B44
	movs r0, #0
	b _08039B54
	.align 2, 0
_08039B40: .4byte gUnknown_09AF3790
_08039B44:
	adds r0, r5, #0
	movs r1, #0x25
	bl sub_0800289C
	lsls r1, r6, #1
	adds r1, r1, r4
	ldrh r1, [r1]
	adds r0, r0, r1
_08039B54:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08039B5C
sub_08039B5C: @ 0x08039B5C
	push {lr}
	ldr r0, _08039B84 @ =gGame
	ldr r0, [r0]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _08039B7E
	movs r0, #1
	bl sub_08003D14
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb7
	bne _08039B7E
	movs r0, #1
	bl sub_08003B58
_08039B7E:
	pop {r0}
	bx r0
	.align 2, 0
_08039B84: .4byte gGame

	thumb_func_start sub_08039B88
sub_08039B88: @ 0x08039B88
	push {lr}
	mov ip, r0
	mov r2, ip
	adds r2, #0xac
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	strb r0, [r2]
	mov r0, ip
	adds r0, #0x56
	movs r2, #0
	strh r2, [r0]
	ldr r3, _08039BF8 @ =gGame
	ldr r1, _08039BFC @ =0x000067AC
	adds r0, r3, r1
	ldrh r1, [r0]
	mov r0, ip
	adds r0, #0x58
	strh r1, [r0]
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	mov r1, ip
	adds r1, #0x5a
	strh r0, [r1]
	adds r1, #2
	strh r2, [r1]
	mov r3, ip
	adds r3, #0x5e
	ldr r0, _08039C00 @ =0x0000FFFF
	strh r0, [r3]
	strh r2, [r1]
	mov r0, ip
	str r2, [r0, #0x60]
	str r2, [r0, #0x64]
	str r2, [r0, #0x68]
	adds r0, #0x48
	bl sub_080376EC
	pop {r0}
	bx r0
	.align 2, 0
_08039BF8: .4byte gGame
_08039BFC: .4byte 0x000067AC
_08039C00: .4byte 0x0000FFFF

	thumb_func_start sub_08039C04
sub_08039C04: @ 0x08039C04
	push {r4, r5, r6, lr}
	bl sub_080377D0
	ldr r4, _08039CA8 @ =gSomeBlend
	ldr r2, _08039CAC @ =gGame
	ldrb r1, [r2]
	ldr r3, _08039CB0 @ =0x00003610
	adds r0, r4, r3
	movs r6, #0
	strb r1, [r0]
	movs r0, #0xf
	strb r0, [r2]
	ldr r0, _08039CB4 @ =0x000121BB
	adds r1, r4, r0
	ldrb r0, [r1]
	movs r3, #0x10
	orrs r0, r3
	strb r0, [r1]
	ldr r1, _08039CB8 @ =0x00003668
	adds r5, r4, r1
	ldrb r0, [r5]
	movs r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	orrs r0, r3
	subs r1, #0x18
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	strb r0, [r5]
	ldr r3, _08039CBC @ =0x00003612
	adds r0, r4, r3
	strh r6, [r0]
	ldr r1, _08039CC0 @ =0x000067AC
	adds r0, r2, r1
	ldrh r1, [r0]
	adds r3, #2
	adds r0, r4, r3
	strh r1, [r0]
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	ldr r2, _08039CC4 @ =0x00003616
	adds r1, r4, r2
	strh r0, [r1]
	adds r3, #8
	adds r2, r4, r3
	ldr r1, _08039CC8 @ =gSave
	ldr r0, [r1, #8]
	str r0, [r2]
	ldr r0, _08039CCC @ =0x00003620
	adds r2, r4, r0
	ldr r0, [r1, #0xc]
	str r0, [r2]
	adds r3, #8
	adds r2, r4, r3
	ldr r0, _08039CD0 @ =0x00000744
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, _08039CD4 @ =gUnknown_080C1FE8
	bl sub_0800A1C4
	ldr r1, _08039CD8 @ =0x00005778
	adds r4, r4, r1
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009E38
	bl sub_08039E88
	bl sub_08037958
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08039CA8: .4byte gSomeBlend
_08039CAC: .4byte gGame
_08039CB0: .4byte 0x00003610
_08039CB4: .4byte 0x000121BB
_08039CB8: .4byte 0x00003668
_08039CBC: .4byte 0x00003612
_08039CC0: .4byte 0x000067AC
_08039CC4: .4byte 0x00003616
_08039CC8: .4byte gSave
_08039CCC: .4byte 0x00003620
_08039CD0: .4byte 0x00000744
_08039CD4: .4byte gUnknown_080C1FE8
_08039CD8: .4byte 0x00005778

	thumb_func_start sub_08039CDC
sub_08039CDC: @ 0x08039CDC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r6, _08039DEC @ =gGame
	ldr r4, _08039DF0 @ =gSomeBlend
	ldr r1, _08039DF4 @ =0x00003610
	adds r0, r4, r1
	ldrb r0, [r0]
	movs r7, #0
	strb r0, [r6]
	ldr r2, _08039DF8 @ =0x00003668
	adds r5, r4, r2
	ldrb r2, [r5]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r5]
	ldr r3, _08039DFC @ =0x00003612
	adds r0, r4, r3
	strh r7, [r0]
	ldr r0, _08039E00 @ =0x0000360E
	adds r2, r4, r0
	ldrb r0, [r2]
	ands r1, r0
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r2]
	ldr r2, _08039E04 @ =0x000082A4
	adds r1, r6, r2
	movs r0, #0xa
	strh r0, [r1]
	ldr r3, _08039E08 @ =0x000121B8
	adds r2, r4, r3
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08039E0C @ =gUnknown_080C1FE8
	bl sub_0800A354
	ldr r2, _08039E10 @ =gSave
	ldr r1, _08039E14 @ =0x0000361C
	adds r0, r4, r1
	ldr r0, [r0]
	str r0, [r2, #8]
	ldr r3, _08039E18 @ =0x00003620
	adds r0, r4, r3
	ldr r0, [r0]
	str r0, [r2, #0xc]
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08039D62
	ldr r0, _08039E1C @ =0x00000744
	adds r1, r2, r0
	adds r3, #4
	adds r0, r4, r3
	ldr r0, [r0]
	str r0, [r1]
	movs r1, #0xe9
	lsls r1, r1, #3
	adds r0, r2, r1
	strh r7, [r0]
_08039D62:
	ldrb r1, [r5]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08039D7C
	ldr r2, _08039E20 @ =0x00003614
	adds r0, r4, r2
	ldr r3, _08039E24 @ =0x000067AC
	adds r1, r6, r3
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08039E6E
_08039D7C:
	ldr r0, _08039E20 @ =0x00003614
	adds r5, r4, r0
	ldrh r0, [r5]
	bl sub_0801B2D4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08039E6E
	ldrh r0, [r5]
	bl sub_0801B0C4
	adds r4, r0, #0
	cmp r4, #0
	beq _08039E28
	ldrb r2, [r4, #6]
	lsls r2, r2, #4
	ldrb r1, [r4]
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1b
	adds r0, #8
	adds r3, r2, r0
	ldrb r2, [r4, #7]
	lsls r2, r2, #4
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	adds r1, #1
	lsls r1, r1, #3
	adds r2, r2, r1
	ldrh r1, [r4, #4]
	ldrh r0, [r4]
	lsls r0, r0, #0x17
	lsrs r5, r0, #0x1e
	str r2, [sp]
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	str r0, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	ldrb r0, [r4, #1]
	lsrs r0, r0, #7
	str r0, [sp, #0x10]
	ldrb r0, [r4, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08039DDE
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
_08039DDE:
	str r0, [sp, #0x14]
	movs r0, #1
	adds r2, r5, #0
	bl sub_0801A434
	b _08039E5A
	.align 2, 0
_08039DEC: .4byte gGame
_08039DF0: .4byte gSomeBlend
_08039DF4: .4byte 0x00003610
_08039DF8: .4byte 0x00003668
_08039DFC: .4byte 0x00003612
_08039E00: .4byte 0x0000360E
_08039E04: .4byte 0x000082A4
_08039E08: .4byte 0x000121B8
_08039E0C: .4byte gUnknown_080C1FE8
_08039E10: .4byte gSave
_08039E14: .4byte 0x0000361C
_08039E18: .4byte 0x00003620
_08039E1C: .4byte 0x00000744
_08039E20: .4byte 0x00003614
_08039E24: .4byte 0x000067AC
_08039E28:
	movs r0, #0
	bl sub_08036C68
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r5]
	str r4, [sp]
	str r0, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r0, #1
	movs r2, #0
	movs r3, #0
	bl sub_0801A434
	ldr r1, _08039E78 @ =0x0000597C
	adds r2, r6, r1
	ldr r3, _08039E7C @ =0x00005984
	adds r1, r6, r3
	ldrh r0, [r1]
	strh r0, [r2]
	ldrh r0, [r1, #2]
	strh r0, [r2, #2]
_08039E5A:
	movs r0, #1
	bl sub_08004660
	ldr r0, _08039E80 @ =gSomeBlend
	ldr r1, _08039E84 @ =0x0001ED10
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
_08039E6E:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039E78: .4byte 0x0000597C
_08039E7C: .4byte 0x00005984
_08039E80: .4byte gSomeBlend
_08039E84: .4byte 0x0001ED10

	thumb_func_start sub_08039E88
sub_08039E88: @ 0x08039E88
	push {r4, lr}
	ldr r3, _08039EB8 @ =gSomeBlend
	ldr r0, _08039EBC @ =0x00003612
	adds r1, r3, r0
	ldrh r0, [r1]
	cmp r0, #5
	bhi _08039EB0
	ldr r0, _08039EC0 @ =gUnknown_08D2E178
	ldrh r1, [r1]
	lsls r2, r1, #2
	adds r2, r2, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r4, _08039EC4 @ =0x000035BC
	adds r1, r3, r4
	adds r0, r0, r1
	ldr r1, [r2]
	bl _call_via_r1
_08039EB0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08039EB8: .4byte gSomeBlend
_08039EBC: .4byte 0x00003612
_08039EC0: .4byte gUnknown_08D2E178
_08039EC4: .4byte 0x000035BC

	thumb_func_start sub_08039EC8
sub_08039EC8: @ 0x08039EC8
	ldr r3, _08039EF4 @ =gSomeBlend
	ldr r1, _08039EF8 @ =0x00003612
	adds r2, r3, r1
	movs r1, #0
	strh r1, [r2]
	strh r1, [r0, #4]
	strh r1, [r0, #0xa]
	movs r1, #3
	strh r1, [r0, #2]
	ldr r0, _08039EFC @ =0x0000360E
	adds r3, r3, r0
	ldrb r0, [r3]
	movs r1, #1
	orrs r0, r1
	movs r1, #0xf
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	bx lr
	.align 2, 0
_08039EF4: .4byte gSomeBlend
_08039EF8: .4byte 0x00003612
_08039EFC: .4byte 0x0000360E

	thumb_func_start sub_08039F00
sub_08039F00: @ 0x08039F00
	push {r4, lr}
	ldr r3, _08039F34 @ =gSomeBlend
	ldr r1, _08039F38 @ =0x00003612
	adds r4, r3, r1
	movs r2, #0
	movs r1, #1
	strh r1, [r4]
	strh r2, [r0, #4]
	strh r2, [r0, #0xa]
	movs r1, #3
	strh r1, [r0, #2]
	ldr r0, _08039F3C @ =0x0000360E
	adds r3, r3, r0
	ldrb r0, [r3]
	movs r1, #1
	orrs r0, r1
	movs r1, #0xf
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08039F34: .4byte gSomeBlend
_08039F38: .4byte 0x00003612
_08039F3C: .4byte 0x0000360E

	thumb_func_start sub_08039F40
sub_08039F40: @ 0x08039F40
	push {r4, lr}
	ldr r3, _08039F74 @ =gSomeBlend
	ldr r1, _08039F78 @ =0x00003612
	adds r4, r3, r1
	movs r2, #0
	movs r1, #2
	strh r1, [r4]
	strh r2, [r0, #4]
	strh r2, [r0, #0xa]
	movs r1, #3
	strh r1, [r0, #2]
	ldr r0, _08039F7C @ =0x0000360E
	adds r3, r3, r0
	ldrb r0, [r3]
	movs r1, #1
	orrs r0, r1
	movs r1, #0xf
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08039F74: .4byte gSomeBlend
_08039F78: .4byte 0x00003612
_08039F7C: .4byte 0x0000360E

	thumb_func_start sub_08039F80
sub_08039F80: @ 0x08039F80
	push {r4, lr}
	ldr r2, _08039FB0 @ =gSomeBlend
	ldr r1, _08039FB4 @ =0x00003612
	adds r4, r2, r1
	movs r1, #0
	movs r3, #3
	strh r3, [r4]
	strh r1, [r0, #4]
	strh r1, [r0, #0xa]
	strh r3, [r0, #2]
	ldr r0, _08039FB8 @ =0x0000360E
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #0xf
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08039FB0: .4byte gSomeBlend
_08039FB4: .4byte 0x00003612
_08039FB8: .4byte 0x0000360E

	thumb_func_start sub_08039FBC
sub_08039FBC: @ 0x08039FBC
	push {r4, lr}
	ldr r3, _08039FF0 @ =gSomeBlend
	ldr r1, _08039FF4 @ =0x00003612
	adds r4, r3, r1
	movs r2, #0
	movs r1, #4
	strh r1, [r4]
	strh r2, [r0, #4]
	strh r2, [r0, #0xa]
	movs r1, #3
	strh r1, [r0, #2]
	ldr r0, _08039FF8 @ =0x0000360E
	adds r3, r3, r0
	ldrb r0, [r3]
	movs r1, #1
	orrs r0, r1
	movs r1, #0xf
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08039FF0: .4byte gSomeBlend
_08039FF4: .4byte 0x00003612
_08039FF8: .4byte 0x0000360E

	thumb_func_start sub_08039FFC
sub_08039FFC: @ 0x08039FFC
	push {r4, lr}
	ldr r3, _0803A030 @ =gSomeBlend
	ldr r1, _0803A034 @ =0x00003612
	adds r4, r3, r1
	movs r2, #0
	movs r1, #5
	strh r1, [r4]
	strh r2, [r0, #4]
	strh r2, [r0, #0xa]
	movs r1, #2
	strh r1, [r0, #2]
	ldr r0, _0803A038 @ =0x0000360E
	adds r3, r3, r0
	ldrb r0, [r3]
	movs r1, #1
	orrs r0, r1
	movs r1, #0xf
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803A030: .4byte gSomeBlend
_0803A034: .4byte 0x00003612
_0803A038: .4byte 0x0000360E

	thumb_func_start mode_debug_menu
mode_debug_menu: @ 0x0803A03C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0803A058 @ =gSomeBlend
	ldr r1, _0803A05C @ =0x00003668
	adds r3, r0, r1
	ldrb r2, [r3]
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0803A060
	movs r0, #2
	orrs r0, r2
	strb r0, [r3]
	b _0803A072
	.align 2, 0
_0803A058: .4byte gSomeBlend
_0803A05C: .4byte 0x00003668
_0803A060:
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	lsls r0, r0, #1
	movs r1, #3
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_0803A072:
	ldr r3, _0803A0C0 @ =gSomeBlend
	ldr r5, _0803A0C4 @ =0x00003668
	adds r0, r3, r5
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803A0A6
	ldr r0, _0803A0C8 @ =0x00003612
	adds r2, r3, r0
	ldrh r0, [r2]
	cmp r0, #5
	bhi _0803A0A6
	ldr r1, _0803A0CC @ =gUnknown_08D2E190
	lsls r2, r0, #2
	adds r2, r2, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	subs r5, #0xac
	adds r0, r3, r5
	adds r1, r1, r0
	ldr r2, [r2]
	adds r0, r4, #0
	bl _call_via_r2
_0803A0A6:
	ldr r0, _0803A0C0 @ =gSomeBlend
	ldr r1, _0803A0C4 @ =0x00003668
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803A0D0
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _0803A0E4
	.align 2, 0
_0803A0C0: .4byte gSomeBlend
_0803A0C4: .4byte 0x00003668
_0803A0C8: .4byte 0x00003612
_0803A0CC: .4byte gUnknown_08D2E190
_0803A0D0:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803A0E4
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	bl sub_0803B278
_0803A0E4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803A0EC
sub_0803A0EC: @ 0x0803A0EC
	push {r4, lr}
	sub sp, #0xc
	adds r3, r0, #0
	adds r4, r1, #0
	ldrh r2, [r3]
	cmp r2, #1
	bne _0803A100
	bl sub_0803A198
	b _0803A190
_0803A100:
	ldrh r1, [r3, #2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0803A114
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_0803A224
	b _0803A190
_0803A114:
	movs r1, #0xc
	ands r1, r2
	cmp r1, #0
	beq _0803A128
	movs r0, #0xd9
	bl play_sound
	bl sub_08039CDC
	b _0803A190
_0803A128:
	movs r0, #0x30
	ands r0, r2
	cmp r0, #0
	beq _0803A178
	ldr r4, _0803A16C @ =gUnknown_0201963A
	str r1, [sp]
	adds r0, r4, #0
	adds r1, r3, #0
	movs r2, #0
	movs r3, #5
	bl sub_08039738
	cmp r0, #0
	beq _0803A190
	adds r2, r4, #0
	adds r2, #0x56
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0803A170 @ =gUnknown_080C1FE8
	bl sub_0800A1C4
	ldr r1, _0803A174 @ =0x00002166
	adds r0, r4, r1
	movs r1, #0
	bl sub_08009E38
	bl sub_08039E88
	b _0803A190
	.align 2, 0
_0803A16C: .4byte gUnknown_0201963A
_0803A170: .4byte gUnknown_080C1FE8
_0803A174: .4byte 0x00002166
_0803A178:
	adds r0, r4, #4
	movs r1, #0x80
	str r1, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r1, r3, #0
	movs r2, #0
	movs r3, #2
	bl sub_08039544
_0803A190:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0803A198
sub_0803A198: @ 0x0803A198
	push {lr}
	ldrh r2, [r1, #4]
	cmp r2, #1
	beq _0803A1B6
	cmp r2, #1
	bgt _0803A1AA
	cmp r2, #0
	beq _0803A1B0
	b _0803A214
_0803A1AA:
	cmp r2, #2
	beq _0803A1E8
	b _0803A214
_0803A1B0:
	bl sub_0803A224
	b _0803A214
_0803A1B6:
	movs r0, #0xd2
	bl play_sound
	ldr r1, _0803A1DC @ =gSomeBlend
	ldr r0, _0803A1E0 @ =0x00003668
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1]
	ldr r3, _0803A1E4 @ =gGame
	ldrb r2, [r3, #8]
	lsls r0, r2, #0x1f
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	movs r0, #2
	rsbs r0, r0, #0
	b _0803A20E
	.align 2, 0
_0803A1DC: .4byte gSomeBlend
_0803A1E0: .4byte 0x00003668
_0803A1E4: .4byte gGame
_0803A1E8:
	movs r0, #0xd2
	bl play_sound
	ldr r1, _0803A218 @ =gSomeBlend
	ldr r0, _0803A21C @ =0x00003668
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1]
	ldr r3, _0803A220 @ =gGame
	ldrb r2, [r3, #8]
	lsls r0, r2, #0x1d
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #2
	movs r0, #5
	rsbs r0, r0, #0
_0803A20E:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #8]
_0803A214:
	pop {r0}
	bx r0
	.align 2, 0
_0803A218: .4byte gSomeBlend
_0803A21C: .4byte 0x00003668
_0803A220: .4byte gGame

	thumb_func_start sub_0803A224
sub_0803A224: @ 0x0803A224
	push {r4, r5, lr}
	adds r3, r0, #0
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _0803A2C0
	ldr r1, _0803A24C @ =gSomeBlend
	ldr r0, _0803A250 @ =0x00003668
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1]
	ldrh r1, [r3, #2]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803A254
	movs r4, #0xa
	b _0803A262
	.align 2, 0
_0803A24C: .4byte gSomeBlend
_0803A250: .4byte 0x00003668
_0803A254:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	movs r4, #1
	cmp r0, #0
	beq _0803A262
	movs r4, #0x64
_0803A262:
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0803A298
	movs r0, #0xd2
	bl play_sound
	ldr r0, _0803A28C @ =gSomeBlend
	ldr r1, _0803A290 @ =0x00003614
	adds r2, r0, r1
	ldrh r0, [r2]
	adds r0, r4, r0
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _0803A294 @ =0x03E70000
	cmp r0, r1
	bls _0803A2C0
	strh r5, [r2]
	b _0803A2C0
	.align 2, 0
_0803A28C: .4byte gSomeBlend
_0803A290: .4byte 0x00003614
_0803A294: .4byte 0x03E70000
_0803A298:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803A2C0
	movs r0, #0xd2
	bl play_sound
	ldr r0, _0803A2C8 @ =gSomeBlend
	ldr r2, _0803A2CC @ =0x00003614
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, r4
	blo _0803A2BC
	subs r0, r0, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803A2C0
_0803A2BC:
	ldr r0, _0803A2D0 @ =0x000003E7
	strh r0, [r1]
_0803A2C0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803A2C8: .4byte gSomeBlend
_0803A2CC: .4byte 0x00003614
_0803A2D0: .4byte 0x000003E7

	thumb_func_start sub_0803A2D4
sub_0803A2D4: @ 0x0803A2D4
	push {r4, lr}
	sub sp, #0xc
	adds r3, r0, #0
	adds r4, r1, #0
	ldrh r2, [r3]
	cmp r2, #1
	bne _0803A2E8
	bl sub_0803A3C8
	b _0803A3C0
_0803A2E8:
	ldrh r1, [r3, #2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0803A2FC
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_0803A458
	b _0803A3C0
_0803A2FC:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0803A340
	movs r0, #0xd9
	bl play_sound
	ldr r2, _0803A32C @ =gSomeBlend
	ldr r0, _0803A330 @ =0x00003668
	adds r3, r2, r0
	ldrb r0, [r3]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _0803A334 @ =gGame
	ldr r1, _0803A338 @ =0x000067AC
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _0803A33C @ =0x00003614
	adds r2, r2, r1
	strh r0, [r2]
	bl sub_08039CDC
	b _0803A3C0
	.align 2, 0
_0803A32C: .4byte gSomeBlend
_0803A330: .4byte 0x00003668
_0803A334: .4byte gGame
_0803A338: .4byte 0x000067AC
_0803A33C: .4byte 0x00003614
_0803A340:
	movs r0, #4
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _0803A358
	movs r0, #0xd9
	bl play_sound
	bl sub_08039CDC
	b _0803A3C0
_0803A358:
	movs r0, #0x30
	ands r0, r2
	cmp r0, #0
	beq _0803A3A8
	ldr r4, _0803A39C @ =gUnknown_0201963A
	str r1, [sp]
	adds r0, r4, #0
	adds r1, r3, #0
	movs r2, #0
	movs r3, #5
	bl sub_08039738
	cmp r0, #0
	beq _0803A3C0
	ldr r0, _0803A3A0 @ =gUnknown_080C1FE8
	bl sub_0800A1C4
	ldr r1, _0803A3A4 @ =0x00002166
	adds r0, r4, r1
	movs r1, #0
	bl sub_08009E38
	bl sub_08039E88
	adds r2, r4, #0
	adds r2, #0x56
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	b _0803A3C0
	.align 2, 0
_0803A39C: .4byte gUnknown_0201963A
_0803A3A0: .4byte gUnknown_080C1FE8
_0803A3A4: .4byte 0x00002166
_0803A3A8:
	adds r0, r4, #4
	movs r1, #0x80
	str r1, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r1, r3, #0
	movs r2, #0
	movs r3, #2
	bl sub_08039544
_0803A3C0:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0803A3C8
sub_0803A3C8: @ 0x0803A3C8
	push {lr}
	ldrh r2, [r1, #4]
	cmp r2, #1
	beq _0803A3E6
	cmp r2, #1
	bgt _0803A3DA
	cmp r2, #0
	beq _0803A3E0
	b _0803A448
_0803A3DA:
	cmp r2, #2
	beq _0803A41C
	b _0803A448
_0803A3E0:
	bl sub_0803A458
	b _0803A448
_0803A3E6:
	movs r0, #0xd2
	bl play_sound
	ldr r1, _0803A410 @ =gSomeBlend
	ldr r0, _0803A414 @ =0x00003668
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1]
	ldr r3, _0803A418 @ =gGame
	ldrb r2, [r3, #8]
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #3
	movs r0, #9
	rsbs r0, r0, #0
	b _0803A442
	.align 2, 0
_0803A410: .4byte gSomeBlend
_0803A414: .4byte 0x00003668
_0803A418: .4byte gGame
_0803A41C:
	movs r0, #0xd2
	bl play_sound
	ldr r1, _0803A44C @ =gSomeBlend
	ldr r0, _0803A450 @ =0x00003668
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1]
	ldr r3, _0803A454 @ =gGame
	ldrb r2, [r3, #8]
	lsls r0, r2, #0x1b
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #4
	movs r0, #0x11
	rsbs r0, r0, #0
_0803A442:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #8]
_0803A448:
	pop {r0}
	bx r0
	.align 2, 0
_0803A44C: .4byte gSomeBlend
_0803A450: .4byte 0x00003668
_0803A454: .4byte gGame

	thumb_func_start sub_0803A458
sub_0803A458: @ 0x0803A458
	push {r4, r5, lr}
	adds r3, r0, #0
	ldrh r5, [r1, #4]
	cmp r5, #0
	bne _0803A4C8
	ldr r4, _0803A498 @ =gSomeBlend
	ldr r0, _0803A49C @ =0x00003668
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	ldrh r1, [r3, #2]
	ands r0, r1
	cmp r0, #0
	beq _0803A4A4
	movs r0, #0xd2
	bl play_sound
	ldr r0, _0803A4A0 @ =0x00003616
	adds r2, r4, r0
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bls _0803A4C8
	strh r5, [r2]
	b _0803A4C8
	.align 2, 0
_0803A498: .4byte gSomeBlend
_0803A49C: .4byte 0x00003668
_0803A4A0: .4byte 0x00003616
_0803A4A4:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803A4C8
	movs r0, #0xd2
	bl play_sound
	ldr r0, _0803A4C0 @ =0x00003616
	adds r2, r4, r0
	ldrh r0, [r2]
	cmp r0, #1
	bhs _0803A4C4
	movs r0, #4
	b _0803A4C6
	.align 2, 0
_0803A4C0: .4byte 0x00003616
_0803A4C4:
	subs r0, #1
_0803A4C6:
	strh r0, [r2]
_0803A4C8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803A4D0
sub_0803A4D0: @ 0x0803A4D0
	push {r4, lr}
	sub sp, #0xc
	adds r2, r0, #0
	adds r4, r1, #0
	ldrh r3, [r2]
	cmp r3, #1
	bne _0803A4E4
	bl sub_0803A59C
	b _0803A594
_0803A4E4:
	ldrh r1, [r2, #2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0803A4F8
	adds r0, r2, #0
	adds r1, r4, #0
	bl sub_0803A644
	b _0803A594
_0803A4F8:
	movs r1, #0xc
	ands r1, r3
	cmp r1, #0
	beq _0803A50C
	movs r0, #0xd9
	bl play_sound
	bl sub_08039CDC
	b _0803A594
_0803A50C:
	movs r0, #0x30
	ands r0, r3
	cmp r0, #0
	beq _0803A57C
	ldrh r0, [r4, #4]
	cmp r0, #2
	bne _0803A536
	adds r0, r4, #0
	adds r0, #0xa
	movs r1, #0x10
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r1, r2, #0
	movs r2, #0
	movs r3, #3
	bl sub_08039544
	b _0803A594
_0803A536:
	ldr r4, _0803A570 @ =gUnknown_0201963A
	str r1, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r2, #0
	movs r3, #5
	bl sub_08039738
	cmp r0, #0
	beq _0803A594
	ldr r0, _0803A574 @ =gUnknown_080C1FE8
	bl sub_0800A1C4
	ldr r1, _0803A578 @ =0x00002166
	adds r0, r4, r1
	movs r1, #0
	bl sub_08009E38
	bl sub_08039E88
	adds r2, r4, #0
	adds r2, #0x56
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	b _0803A594
	.align 2, 0
_0803A570: .4byte gUnknown_0201963A
_0803A574: .4byte gUnknown_080C1FE8
_0803A578: .4byte 0x00002166
_0803A57C:
	adds r0, r4, #4
	movs r1, #0x80
	str r1, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r1, r2, #0
	movs r2, #0
	movs r3, #2
	bl sub_08039544
_0803A594:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0803A59C
sub_0803A59C: @ 0x0803A59C
	push {r4, lr}
	ldrh r4, [r1, #4]
	cmp r4, #1
	beq _0803A5F0
	cmp r4, #1
	bgt _0803A5AE
	cmp r4, #0
	beq _0803A5B4
	b _0803A63C
_0803A5AE:
	cmp r4, #2
	beq _0803A638
	b _0803A63C
_0803A5B4:
	movs r0, #0xd2
	bl play_sound
	ldr r1, _0803A5E4 @ =gSomeBlend
	ldr r0, _0803A5E8 @ =0x00003668
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1]
	ldr r3, _0803A5EC @ =gGame
	ldrb r2, [r3, #8]
	lsls r0, r2, #0x1a
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #5
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #8]
	b _0803A63C
	.align 2, 0
_0803A5E4: .4byte gSomeBlend
_0803A5E8: .4byte 0x00003668
_0803A5EC: .4byte gGame
_0803A5F0:
	movs r0, #0xd2
	bl play_sound
	ldr r1, _0803A62C @ =gSomeBlend
	ldr r0, _0803A630 @ =0x00003668
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1]
	ldr r3, _0803A634 @ =gGame
	ldrb r2, [r3, #3]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1f
	eors r1, r4
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #3
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	bl sub_08000D64
	bl sub_0803B5C4
	b _0803A63C
	.align 2, 0
_0803A62C: .4byte gSomeBlend
_0803A630: .4byte 0x00003668
_0803A634: .4byte gGame
_0803A638:
	bl sub_0803A644
_0803A63C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803A644
sub_0803A644: @ 0x0803A644
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r1, #0
	ldrh r0, [r5, #4]
	cmp r0, #2
	beq _0803A652
	b _0803A74C
_0803A652:
	ldrh r1, [r2, #2]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803A662
	movs r4, #0xa
	b _0803A670
_0803A662:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	movs r4, #1
	cmp r0, #0
	beq _0803A670
	movs r4, #0x64
_0803A670:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803A6E8
	movs r0, #0xd2
	bl play_sound
	ldrh r1, [r5, #0xa]
	cmp r1, #1
	beq _0803A6AC
	cmp r1, #1
	bgt _0803A68E
	cmp r1, #0
	beq _0803A698
	b _0803A74C
_0803A68E:
	cmp r1, #2
	beq _0803A6C0
	cmp r1, #3
	beq _0803A6D4
	b _0803A74C
_0803A698:
	ldr r1, _0803A6A4 @ =gSomeBlend
	ldr r0, _0803A6A8 @ =0x00003678
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, r4, r0
	b _0803A74A
	.align 2, 0
_0803A6A4: .4byte gSomeBlend
_0803A6A8: .4byte 0x00003678
_0803A6AC:
	ldr r1, _0803A6B8 @ =gSomeBlend
	ldr r0, _0803A6BC @ =0x0000367A
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, r4, r0
	b _0803A74A
	.align 2, 0
_0803A6B8: .4byte gSomeBlend
_0803A6BC: .4byte 0x0000367A
_0803A6C0:
	ldr r1, _0803A6CC @ =gSomeBlend
	ldr r0, _0803A6D0 @ =0x0000367C
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, r4, r0
	b _0803A74A
	.align 2, 0
_0803A6CC: .4byte gSomeBlend
_0803A6D0: .4byte 0x0000367C
_0803A6D4:
	ldr r1, _0803A6E0 @ =gSomeBlend
	ldr r0, _0803A6E4 @ =0x0000367E
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, r4, r0
	b _0803A74A
	.align 2, 0
_0803A6E0: .4byte gSomeBlend
_0803A6E4: .4byte 0x0000367E
_0803A6E8:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803A74C
	movs r0, #0xd2
	bl play_sound
	ldrh r1, [r5, #0xa]
	cmp r1, #1
	beq _0803A720
	cmp r1, #1
	bgt _0803A706
	cmp r1, #0
	beq _0803A710
	b _0803A74C
_0803A706:
	cmp r1, #2
	beq _0803A730
	cmp r1, #3
	beq _0803A740
	b _0803A74C
_0803A710:
	ldr r1, _0803A718 @ =gSomeBlend
	ldr r0, _0803A71C @ =0x00003678
	b _0803A744
	.align 2, 0
_0803A718: .4byte gSomeBlend
_0803A71C: .4byte 0x00003678
_0803A720:
	ldr r1, _0803A728 @ =gSomeBlend
	ldr r0, _0803A72C @ =0x0000367A
	b _0803A744
	.align 2, 0
_0803A728: .4byte gSomeBlend
_0803A72C: .4byte 0x0000367A
_0803A730:
	ldr r1, _0803A738 @ =gSomeBlend
	ldr r0, _0803A73C @ =0x0000367C
	b _0803A744
	.align 2, 0
_0803A738: .4byte gSomeBlend
_0803A73C: .4byte 0x0000367C
_0803A740:
	ldr r1, _0803A754 @ =gSomeBlend
	ldr r0, _0803A758 @ =0x0000367E
_0803A744:
	adds r1, r1, r0
	ldrh r0, [r1]
	subs r0, r0, r4
_0803A74A:
	strh r0, [r1]
_0803A74C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803A754: .4byte gSomeBlend
_0803A758: .4byte 0x0000367E

	thumb_func_start sub_0803A75C
sub_0803A75C: @ 0x0803A75C
	push {r4, lr}
	sub sp, #0xc
	adds r3, r0, #0
	adds r4, r1, #0
	ldrh r2, [r3]
	cmp r2, #1
	bne _0803A770
	bl sub_0803A830
	b _0803A828
_0803A770:
	ldrh r1, [r3, #2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0803A784
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_0803A844
	b _0803A828
_0803A784:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0803A7A8
	movs r0, #0
	bl sub_080038A4
	ldr r0, _0803A7A0 @ =gSomeBlend
	ldr r1, _0803A7A4 @ =0x00003618
	adds r0, r0, r1
	ldrh r0, [r0]
	bl play_sound
	b _0803A828
	.align 2, 0
_0803A7A0: .4byte gSomeBlend
_0803A7A4: .4byte 0x00003618
_0803A7A8:
	movs r0, #4
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _0803A7C0
	movs r0, #0xd9
	bl play_sound
	bl sub_08039CDC
	b _0803A828
_0803A7C0:
	movs r0, #0x30
	ands r0, r2
	cmp r0, #0
	beq _0803A810
	ldr r4, _0803A804 @ =gUnknown_0201963A
	str r1, [sp]
	adds r0, r4, #0
	adds r1, r3, #0
	movs r2, #0
	movs r3, #5
	bl sub_08039738
	cmp r0, #0
	beq _0803A828
	ldr r0, _0803A808 @ =gUnknown_080C1FE8
	bl sub_0800A1C4
	ldr r1, _0803A80C @ =0x00002166
	adds r0, r4, r1
	movs r1, #0
	bl sub_08009E38
	bl sub_08039E88
	adds r2, r4, #0
	adds r2, #0x56
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	b _0803A828
	.align 2, 0
_0803A804: .4byte gUnknown_0201963A
_0803A808: .4byte gUnknown_080C1FE8
_0803A80C: .4byte 0x00002166
_0803A810:
	adds r0, r4, #4
	movs r1, #0x80
	str r1, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r1, r3, #0
	movs r2, #0
	movs r3, #2
	bl sub_08039544
_0803A828:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0803A830
sub_0803A830: @ 0x0803A830
	push {lr}
	ldrh r2, [r1, #4]
	cmp r2, #0
	blt _0803A840
	cmp r2, #1
	bgt _0803A840
	bl sub_0803A844
_0803A840:
	pop {r0}
	bx r0

	thumb_func_start sub_0803A844
sub_0803A844: @ 0x0803A844
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r3, [r1, #4]
	cmp r3, #0
	beq _0803A854
	cmp r3, #1
	beq _0803A8F8
	b _0803A96C
_0803A854:
	ldr r1, _0803A874 @ =gSomeBlend
	ldr r0, _0803A878 @ =0x00003668
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1]
	ldrh r1, [r5, #2]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803A87C
	movs r4, #0xa
	b _0803A88A
	.align 2, 0
_0803A874: .4byte gSomeBlend
_0803A878: .4byte 0x00003668
_0803A87C:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	movs r4, #1
	cmp r0, #0
	beq _0803A88A
	movs r4, #0x64
_0803A88A:
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0803A8C0
	movs r0, #0xd2
	bl play_sound
	ldr r0, _0803A8B4 @ =gSomeBlend
	ldr r1, _0803A8B8 @ =0x00003618
	adds r2, r0, r1
	ldrh r0, [r2]
	adds r0, r4, r0
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _0803A8BC @ =0x07CE0000
	cmp r0, r1
	bls _0803A96C
	strh r5, [r2]
	b _0803A96C
	.align 2, 0
_0803A8B4: .4byte gSomeBlend
_0803A8B8: .4byte 0x00003618
_0803A8BC: .4byte 0x07CE0000
_0803A8C0:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803A96C
	movs r0, #0xd2
	bl play_sound
	ldr r0, _0803A8EC @ =gSomeBlend
	ldr r2, _0803A8F0 @ =0x00003618
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, r4
	blo _0803A8E4
	subs r0, r0, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803A96C
_0803A8E4:
	ldr r0, _0803A8F4 @ =0x000007CE
	strh r0, [r1]
	b _0803A96C
	.align 2, 0
_0803A8EC: .4byte gSomeBlend
_0803A8F0: .4byte 0x00003618
_0803A8F4: .4byte 0x000007CE
_0803A8F8:
	ldr r4, _0803A928 @ =gSomeBlend
	ldr r1, _0803A92C @ =0x00003668
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
	ldrh r1, [r5, #2]
	ands r3, r1
	cmp r3, #0
	beq _0803A93E
	movs r0, #0xd2
	bl play_sound
	ldr r2, _0803A930 @ =0x0000361A
	adds r1, r4, r2
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0x14
	bne _0803A938
	ldr r0, _0803A934 @ =0x0000FFFF
	strh r0, [r1]
	b _0803A96C
	.align 2, 0
_0803A928: .4byte gSomeBlend
_0803A92C: .4byte 0x00003668
_0803A930: .4byte 0x0000361A
_0803A934: .4byte 0x0000FFFF
_0803A938:
	adds r0, r2, #1
	strh r0, [r1]
	b _0803A96C
_0803A93E:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803A96C
	movs r0, #0xd2
	bl play_sound
	ldr r0, _0803A964 @ =0x0000361A
	adds r2, r4, r0
	ldrh r3, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0803A968
	movs r0, #0x14
	b _0803A96A
	.align 2, 0
_0803A964: .4byte 0x0000361A
_0803A968:
	subs r0, r3, #1
_0803A96A:
	strh r0, [r2]
_0803A96C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803A974
sub_0803A974: @ 0x0803A974
	push {r4, lr}
	sub sp, #0xc
	adds r3, r0, #0
	adds r4, r1, #0
	ldrh r2, [r3]
	cmp r2, #1
	bne _0803A988
	bl sub_0803AA98
	b _0803AA90
_0803A988:
	ldrh r1, [r3, #2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0803A99C
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_0803AAAC
	b _0803AA90
_0803A99C:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0803AA10
	movs r0, #0xd2
	bl play_sound
	ldrh r0, [r4, #4]
	cmp r0, #1
	beq _0803A9D0
	cmp r0, #1
	bgt _0803A9BA
	cmp r0, #0
	beq _0803A9C0
	b _0803AA90
_0803A9BA:
	cmp r0, #2
	beq _0803A9E8
	b _0803AA90
_0803A9C0:
	ldr r0, _0803A9C8 @ =gSomeBlend
	ldr r1, _0803A9CC @ =0x0000361C
	b _0803A9D4
	.align 2, 0
_0803A9C8: .4byte gSomeBlend
_0803A9CC: .4byte 0x0000361C
_0803A9D0:
	ldr r0, _0803A9DC @ =gSomeBlend
	ldr r1, _0803A9E0 @ =0x00003620
_0803A9D4:
	adds r0, r0, r1
	ldr r1, _0803A9E4 @ =0x000F423F
	str r1, [r0]
	b _0803AA90
	.align 2, 0
_0803A9DC: .4byte gSomeBlend
_0803A9E0: .4byte 0x00003620
_0803A9E4: .4byte 0x000F423F
_0803A9E8:
	ldr r2, _0803AA00 @ =gSomeBlend
	ldr r0, _0803AA04 @ =0x00003624
	adds r1, r2, r0
	ldr r0, _0803AA08 @ =0x0009E340
	str r0, [r1]
	ldr r1, _0803AA0C @ =0x00003668
	adds r2, r2, r1
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	b _0803AA90
	.align 2, 0
_0803AA00: .4byte gSomeBlend
_0803AA04: .4byte 0x00003624
_0803AA08: .4byte 0x0009E340
_0803AA0C: .4byte 0x00003668
_0803AA10:
	movs r0, #4
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _0803AA28
	movs r0, #0xd9
	bl play_sound
	bl sub_08039CDC
	b _0803AA90
_0803AA28:
	movs r0, #0x30
	ands r0, r2
	cmp r0, #0
	beq _0803AA78
	ldr r4, _0803AA6C @ =gUnknown_0201963A
	str r1, [sp]
	adds r0, r4, #0
	adds r1, r3, #0
	movs r2, #0
	movs r3, #5
	bl sub_08039738
	cmp r0, #0
	beq _0803AA90
	adds r2, r4, #0
	adds r2, #0x56
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0803AA70 @ =gUnknown_080C1FE8
	bl sub_0800A1C4
	ldr r1, _0803AA74 @ =0x00002166
	adds r0, r4, r1
	movs r1, #0
	bl sub_08009E38
	bl sub_08039E88
	b _0803AA90
	.align 2, 0
_0803AA6C: .4byte gUnknown_0201963A
_0803AA70: .4byte gUnknown_080C1FE8
_0803AA74: .4byte 0x00002166
_0803AA78:
	adds r0, r4, #4
	movs r1, #0x80
	str r1, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r1, r3, #0
	movs r2, #0
	movs r3, #2
	bl sub_08039544
_0803AA90:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0803AA98
sub_0803AA98: @ 0x0803AA98
	push {lr}
	ldrh r2, [r1, #4]
	cmp r2, #2
	bgt _0803AAA8
	cmp r2, #0
	blt _0803AAA8
	bl sub_0803AAAC
_0803AAA8:
	pop {r0}
	bx r0

	thumb_func_start sub_0803AAAC
sub_0803AAAC: @ 0x0803AAAC
	push {r4, r5, lr}
	ldrh r1, [r1, #4]
	cmp r1, #1
	beq _0803AB38
	cmp r1, #1
	bgt _0803AABE
	cmp r1, #0
	beq _0803AAC6
	b _0803AC94
_0803AABE:
	cmp r1, #2
	bne _0803AAC4
	b _0803ABD4
_0803AAC4:
	b _0803AC94
_0803AAC6:
	ldrh r0, [r0, #2]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r2, #0
	ands r1, r0
	adds r3, r0, #0
	cmp r1, r2
	bne _0803AADC
	movs r4, #0xfa
	lsls r4, r4, #2
	b _0803AAF8
_0803AADC:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r3
	cmp r0, #0
	beq _0803AAEA
	movs r4, #0xa
	b _0803AAF8
_0803AAEA:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r3
	movs r4, #1
	cmp r0, #0
	beq _0803AAF8
	movs r4, #0x64
_0803AAF8:
	movs r5, #1
	adds r0, r5, #0
	ands r0, r3
	cmp r0, #0
	beq _0803AB18
	movs r0, #0xd2
	bl play_sound
	ldr r0, _0803AB10 @ =gSomeBlend
	ldr r1, _0803AB14 @ =0x0000361C
	b _0803AB7E
	.align 2, 0
_0803AB10: .4byte gSomeBlend
_0803AB14: .4byte 0x0000361C
_0803AB18:
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	bne _0803AB22
	b _0803AC94
_0803AB22:
	movs r0, #0xd2
	bl play_sound
	ldr r0, _0803AB30 @ =gSomeBlend
	ldr r2, _0803AB34 @ =0x0000361C
	b _0803ABB2
	.align 2, 0
_0803AB30: .4byte gSomeBlend
_0803AB34: .4byte 0x0000361C
_0803AB38:
	ldrh r0, [r0, #2]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r2, #0
	ands r1, r0
	adds r3, r0, #0
	cmp r1, r2
	bne _0803AB4E
	movs r4, #0xfa
	lsls r4, r4, #2
	b _0803AB6A
_0803AB4E:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r3
	cmp r0, #0
	beq _0803AB5C
	movs r4, #0xa
	b _0803AB6A
_0803AB5C:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r3
	movs r4, #1
	cmp r0, #0
	beq _0803AB6A
	movs r4, #0x64
_0803AB6A:
	movs r5, #1
	adds r0, r5, #0
	ands r0, r3
	cmp r0, #0
	beq _0803ABA0
	movs r0, #0xd2
	bl play_sound
	ldr r0, _0803AB94 @ =gSomeBlend
	ldr r1, _0803AB98 @ =0x00003620
_0803AB7E:
	adds r2, r0, r1
	ldr r0, [r2]
	adds r0, r0, r4
	str r0, [r2]
	ldr r1, _0803AB9C @ =0x000F423E
	cmp r0, r1
	bhi _0803AB8E
	b _0803AC94
_0803AB8E:
	str r5, [r2]
	b _0803AC94
	.align 2, 0
_0803AB94: .4byte gSomeBlend
_0803AB98: .4byte 0x00003620
_0803AB9C: .4byte 0x000F423E
_0803ABA0:
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _0803AC94
	movs r0, #0xd2
	bl play_sound
	ldr r0, _0803ABC8 @ =gSomeBlend
	ldr r2, _0803ABCC @ =0x00003620
_0803ABB2:
	adds r1, r0, r2
	ldr r0, [r1]
	cmp r0, r4
	blo _0803ABC2
	subs r0, r0, r4
	str r0, [r1]
	cmp r0, #0
	bne _0803AC94
_0803ABC2:
	ldr r0, _0803ABD0 @ =0x000F423E
	str r0, [r1]
	b _0803AC94
	.align 2, 0
_0803ABC8: .4byte gSomeBlend
_0803ABCC: .4byte 0x00003620
_0803ABD0: .4byte 0x000F423E
_0803ABD4:
	ldrh r0, [r0, #2]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r2, #0
	ands r1, r0
	adds r3, r0, #0
	cmp r1, r2
	bne _0803ABEA
	movs r4, #0xfa
	lsls r4, r4, #2
	b _0803AC06
_0803ABEA:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r3
	cmp r0, #0
	beq _0803ABF8
	movs r4, #0xa
	b _0803AC06
_0803ABF8:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r3
	movs r4, #1
	cmp r0, #0
	beq _0803AC06
	movs r4, #0x64
_0803AC06:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #0x12
	lsrs r4, r0, #0x10
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _0803AC54
	movs r0, #0xd2
	bl play_sound
	ldr r3, _0803AC40 @ =gSomeBlend
	ldr r0, _0803AC44 @ =0x00003668
	adds r2, r3, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0803AC48 @ =0x00003624
	adds r3, r3, r1
	ldr r0, [r3]
	adds r0, r0, r4
	str r0, [r3]
	ldr r1, _0803AC4C @ =0x0009E33F
	cmp r0, r1
	bls _0803AC94
	ldr r0, _0803AC50 @ =0x0009E340
	b _0803AC92
	.align 2, 0
_0803AC40: .4byte gSomeBlend
_0803AC44: .4byte 0x00003668
_0803AC48: .4byte 0x00003624
_0803AC4C: .4byte 0x0009E33F
_0803AC50: .4byte 0x0009E340
_0803AC54:
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _0803AC94
	movs r0, #0xd2
	bl play_sound
	ldr r3, _0803AC80 @ =gSomeBlend
	ldr r0, _0803AC84 @ =0x00003668
	adds r2, r3, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0803AC88 @ =0x00003624
	adds r3, r3, r1
	ldr r0, [r3]
	cmp r0, r4
	bhs _0803AC90
	ldr r0, _0803AC8C @ =0x0009E340
	b _0803AC92
	.align 2, 0
_0803AC80: .4byte gSomeBlend
_0803AC84: .4byte 0x00003668
_0803AC88: .4byte 0x00003624
_0803AC8C: .4byte 0x0009E340
_0803AC90:
	subs r0, r0, r4
_0803AC92:
	str r0, [r3]
_0803AC94:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803AC9C
sub_0803AC9C: @ 0x0803AC9C
	push {r4, lr}
	sub sp, #0xc
	adds r3, r0, #0
	adds r4, r1, #0
	ldrh r2, [r3]
	cmp r2, #1
	bne _0803ACB0
	bl nullsub_19
	b _0803AD40
_0803ACB0:
	ldrh r1, [r3, #2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0803ACC4
	adds r0, r3, #0
	adds r1, r4, #0
	bl nullsub_20
	b _0803AD40
_0803ACC4:
	movs r1, #0xc
	ands r1, r2
	cmp r1, #0
	beq _0803ACD8
	movs r0, #0xd9
	bl play_sound
	bl sub_08039CDC
	b _0803AD40
_0803ACD8:
	movs r0, #0x30
	ands r0, r2
	cmp r0, #0
	beq _0803AD28
	ldr r4, _0803AD1C @ =gUnknown_0201963A
	str r1, [sp]
	adds r0, r4, #0
	adds r1, r3, #0
	movs r2, #0
	movs r3, #5
	bl sub_08039738
	cmp r0, #0
	beq _0803AD40
	adds r2, r4, #0
	adds r2, #0x56
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0803AD20 @ =gUnknown_080C1FE8
	bl sub_0800A1C4
	ldr r1, _0803AD24 @ =0x00002166
	adds r0, r4, r1
	movs r1, #0
	bl sub_08009E38
	bl sub_08039E88
	b _0803AD40
	.align 2, 0
_0803AD1C: .4byte gUnknown_0201963A
_0803AD20: .4byte gUnknown_080C1FE8
_0803AD24: .4byte 0x00002166
_0803AD28:
	adds r0, r4, #4
	movs r1, #0x80
	str r1, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r1, r3, #0
	movs r2, #0
	movs r3, #1
	bl sub_08039544
_0803AD40:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start nullsub_19
nullsub_19: @ 0x0803AD48
	bx lr
	.align 2, 0

	thumb_func_start nullsub_20
nullsub_20: @ 0x0803AD4C
	bx lr
	.align 2, 0

	thumb_func_start sub_0803AD50
sub_0803AD50: @ 0x0803AD50
	push {r4, lr}
	ldr r4, _0803AD94 @ =gSomeBlend
	ldr r1, _0803AD98 @ =0x00003668
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803AD8E
	ldr r3, _0803AD9C @ =0x00003612
	adds r1, r4, r3
	ldrh r0, [r1]
	cmp r0, #5
	bhi _0803AD86
	ldr r0, _0803ADA0 @ =gUnknown_08D2E1A8
	ldrh r1, [r1]
	lsls r2, r1, #2
	adds r2, r2, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r3, #0x56
	adds r1, r4, r3
	adds r0, r0, r1
	ldr r1, [r2]
	bl _call_via_r1
_0803AD86:
	ldr r1, _0803ADA4 @ =0x00003604
	adds r0, r4, r1
	bl sub_080393D8
_0803AD8E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803AD94: .4byte gSomeBlend
_0803AD98: .4byte 0x00003668
_0803AD9C: .4byte 0x00003612
_0803ADA0: .4byte gUnknown_08D2E1A8
_0803ADA4: .4byte 0x00003604

	thumb_func_start sub_0803ADA8
sub_0803ADA8: @ 0x0803ADA8
	ldr r2, _0803ADB8 @ =gUnknown_02019630
	movs r1, #0x10
	strh r1, [r2]
	ldrh r0, [r0, #4]
	lsls r0, r0, #4
	adds r0, #0x58
	strh r0, [r2, #2]
	bx lr
	.align 2, 0
_0803ADB8: .4byte gUnknown_02019630

	thumb_func_start sub_0803ADBC
sub_0803ADBC: @ 0x0803ADBC
	ldr r2, _0803ADCC @ =gUnknown_02019630
	movs r1, #0x10
	strh r1, [r2]
	ldrh r0, [r0, #4]
	lsls r0, r0, #4
	adds r0, #0x58
	strh r0, [r2, #2]
	bx lr
	.align 2, 0
_0803ADCC: .4byte gUnknown_02019630

	thumb_func_start sub_0803ADD0
sub_0803ADD0: @ 0x0803ADD0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	ldr r0, _0803AE8C @ =gSomeBlend
	mov sb, r0
	ldr r0, _0803AE90 @ =0x00003678
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #1
	mov r8, r1
	str r1, [sp]
	movs r6, #0xfc
	lsls r6, r6, #2
	str r6, [sp, #4]
	movs r5, #2
	str r5, [sp, #8]
	movs r4, #0
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0x7d
	movs r2, #0x88
	movs r3, #3
	bl sub_0803D878
	ldr r0, _0803AE94 @ =0x0000367A
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r1, r8
	str r1, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0x96
	movs r2, #0x88
	movs r3, #3
	bl sub_0803D878
	ldr r0, _0803AE98 @ =0x0000367C
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r1, r8
	str r1, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0xaf
	movs r2, #0x88
	movs r3, #3
	bl sub_0803D878
	ldr r0, _0803AE9C @ =0x0000367E
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r1, r8
	str r1, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0xc8
	movs r2, #0x88
	movs r3, #3
	bl sub_0803D878
	ldrh r0, [r7, #4]
	cmp r0, #2
	bne _0803AEA4
	ldr r2, _0803AEA0 @ =0x00003608
	add r2, sb
	ldrh r1, [r7, #0xa]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	adds r0, #0x6e
	strh r0, [r2]
	ldrh r0, [r7, #4]
	lsls r0, r0, #4
	adds r0, #0x58
	strh r0, [r2, #2]
	b _0803AEB4
	.align 2, 0
_0803AE8C: .4byte gSomeBlend
_0803AE90: .4byte 0x00003678
_0803AE94: .4byte 0x0000367A
_0803AE98: .4byte 0x0000367C
_0803AE9C: .4byte 0x0000367E
_0803AEA0: .4byte 0x00003608
_0803AEA4:
	ldr r1, _0803AEC4 @ =0x00003608
	add r1, sb
	movs r0, #0x10
	strh r0, [r1]
	ldrh r0, [r7, #4]
	lsls r0, r0, #4
	adds r0, #0x58
	strh r0, [r1, #2]
_0803AEB4:
	add sp, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803AEC4: .4byte 0x00003608

	thumb_func_start sub_0803AEC8
sub_0803AEC8: @ 0x0803AEC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov sl, r0
	movs r0, #0
	add r1, sp, #0x18
	bl sub_08036C00
	ldr r4, _0803AF38 @ =gSomeBlend
	ldr r1, _0803AF3C @ =0x00003618
	adds r0, r4, r1
	ldrh r0, [r0]
	movs r2, #1
	mov r8, r2
	str r2, [sp]
	movs r7, #0xfc
	lsls r7, r7, #2
	str r7, [sp, #4]
	movs r6, #2
	str r6, [sp, #8]
	movs r5, #0
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	str r5, [sp, #0x14]
	movs r1, #0x6e
	movs r2, #0x68
	movs r3, #4
	bl sub_0803D878
	ldr r0, _0803AF40 @ =0x0000361A
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _0803AF44
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, #0x8d
	mov r1, r8
	str r1, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	str r5, [sp, #0x14]
	movs r1, #0x8c
	movs r2, #0x78
	movs r3, #3
	bl sub_0803D878
	b _0803AF5C
	.align 2, 0
_0803AF38: .4byte gSomeBlend
_0803AF3C: .4byte 0x00003618
_0803AF40: .4byte 0x0000361A
_0803AF44:
	movs r0, #9
	bl sub_08039B24
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #7
	str r1, [sp]
	str r5, [sp, #4]
	movs r1, #0x8c
	movs r2, #0x78
	bl draw_ui_text
_0803AF5C:
	add r0, sp, #0x18
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r1, #1
	mov r8, r1
	str r1, [sp]
	movs r6, #0xfc
	lsls r6, r6, #2
	str r6, [sp, #4]
	movs r5, #2
	str r5, [sp, #8]
	movs r4, #0
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0x64
	movs r2, #0x88
	movs r3, #4
	bl sub_0803D878
	add r2, sp, #0x18
	mov sb, r2
	movs r1, #2
	ldrsh r0, [r2, r1]
	mov r2, r8
	str r2, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0x87
	movs r2, #0x88
	movs r3, #4
	bl sub_0803D878
	add r0, sp, #0x18
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	mov r1, r8
	str r1, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0xaf
	movs r2, #0x88
	movs r3, #3
	bl sub_0803D878
	mov r2, sb
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	mov r1, r8
	str r1, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0xc8
	movs r2, #0x88
	movs r3, #3
	bl sub_0803D878
	ldr r1, _0803B004 @ =gUnknown_02019630
	movs r0, #0x10
	strh r0, [r1]
	mov r2, sl
	ldrh r0, [r2, #4]
	lsls r0, r0, #4
	adds r0, #0x58
	strh r0, [r1, #2]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B004: .4byte gUnknown_02019630

	thumb_func_start sub_0803B008
sub_0803B008: @ 0x0803B008
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #0x18]
	ldr r0, _0803B144 @ =gSomeBlend
	mov r8, r0
	ldr r0, _0803B148 @ =0x0000361C
	add r0, r8
	ldr r0, [r0]
	movs r5, #1
	str r5, [sp]
	movs r1, #0xfc
	lsls r1, r1, #2
	str r1, [sp, #4]
	movs r6, #2
	str r6, [sp, #8]
	movs r4, #0
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0x86
	movs r2, #0x68
	movs r3, #6
	bl sub_0803D878
	ldr r0, _0803B14C @ =0x00003620
	add r0, r8
	ldr r0, [r0]
	str r5, [sp]
	movs r1, #0xfc
	lsls r1, r1, #2
	str r1, [sp, #4]
	str r6, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0x86
	movs r2, #0x78
	movs r3, #6
	bl sub_0803D878
	ldr r0, _0803B150 @ =0x00003624
	add r0, r8
	ldr r7, [r0]
	ldr r5, _0803B154 @ =0x00034BC0
	adds r0, r7, #0
	adds r1, r5, #0
	bl Divide
	mov sb, r0
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08002FD4
	adds r7, r0, #0
	str r6, [sp]
	movs r0, #0xfc
	lsls r0, r0, #2
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	mov r0, sb
	movs r1, #0x76
	movs r2, #0x88
	movs r3, #2
	bl sub_0803D878
	ldr r1, _0803B158 @ =gUnknown_080C1E38
	mov sl, r1
	str r4, [sp]
	str r4, [sp, #4]
	mov r0, sl
	movs r1, #0x86
	movs r2, #0x88
	movs r3, #0x20
	bl sub_0803D678
	movs r5, #0xe1
	lsls r5, r5, #4
	adds r0, r7, #0
	adds r1, r5, #0
	bl Divide
	mov sb, r0
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08002FD4
	adds r7, r0, #0
	str r6, [sp]
	movs r0, #0xfc
	lsls r0, r0, #2
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	mov r0, sb
	movs r1, #0x8e
	movs r2, #0x88
	movs r3, #2
	bl sub_0803D878
	str r4, [sp]
	str r4, [sp, #4]
	mov r0, sl
	movs r1, #0x9e
	movs r2, #0x88
	movs r3, #0x20
	bl sub_0803D678
	adds r0, r7, #0
	movs r1, #0x3c
	bl Divide
	adds r5, r0, #0
	adds r0, r7, #0
	movs r1, #0x3c
	bl sub_08002FD4
	str r6, [sp]
	movs r1, #0xfc
	lsls r1, r1, #2
	str r1, [sp, #4]
	str r6, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	adds r0, r5, #0
	movs r1, #0xa6
	movs r2, #0x88
	movs r3, #2
	bl sub_0803D878
	ldr r0, _0803B15C @ =0x00003608
	add r8, r0
	movs r0, #0x10
	mov r1, r8
	strh r0, [r1]
	ldr r1, [sp, #0x18]
	ldrh r0, [r1, #4]
	lsls r0, r0, #4
	adds r0, #0x58
	mov r1, r8
	strh r0, [r1, #2]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B144: .4byte gSomeBlend
_0803B148: .4byte 0x0000361C
_0803B14C: .4byte 0x00003620
_0803B150: .4byte 0x00003624
_0803B154: .4byte 0x00034BC0
_0803B158: .4byte gUnknown_080C1E38
_0803B15C: .4byte 0x00003608

	thumb_func_start sub_0803B160
sub_0803B160: @ 0x0803B160
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x18
	ldr r5, _0803B268 @ =gSave
	movs r1, #0xe1
	lsls r1, r1, #3
	adds r0, r5, r1
	ldrh r0, [r0]
	movs r1, #1
	mov sl, r1
	str r1, [sp]
	movs r1, #0xfc
	lsls r1, r1, #2
	mov sb, r1
	str r1, [sp, #4]
	movs r1, #2
	mov r8, r1
	str r1, [sp, #8]
	movs r4, #0
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0x7d
	movs r2, #0x68
	movs r3, #3
	bl sub_0803D878
	ldr r1, _0803B26C @ =0x0000070A
	adds r0, r5, r1
	ldrh r0, [r0]
	mov r1, sl
	str r1, [sp]
	mov r1, sb
	str r1, [sp, #4]
	mov r1, r8
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0x96
	movs r2, #0x68
	movs r3, #3
	bl sub_0803D878
	ldr r1, _0803B270 @ =0x0000070C
	adds r0, r5, r1
	ldrh r0, [r0]
	mov r1, sl
	str r1, [sp]
	mov r1, sb
	str r1, [sp, #4]
	mov r1, r8
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0xaf
	movs r2, #0x68
	movs r3, #3
	bl sub_0803D878
	ldr r0, _0803B274 @ =0x0000070E
	adds r5, r5, r0
	ldrh r0, [r5]
	mov r1, sl
	str r1, [sp]
	mov r1, sb
	str r1, [sp, #4]
	mov r1, r8
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0xc8
	movs r2, #0x68
	movs r3, #1
	bl sub_0803D878
	movs r0, #0
	bl sub_08003D14
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #1
	bl sub_08003D14
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, sl
	str r0, [sp]
	mov r1, sb
	str r1, [sp, #4]
	mov r0, r8
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	adds r0, r5, #0
	movs r1, #0x75
	movs r2, #0x78
	movs r3, #4
	bl sub_0803D878
	mov r1, sl
	str r1, [sp]
	mov r0, sb
	str r0, [sp, #4]
	mov r1, r8
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	adds r0, r6, #0
	movs r1, #0x9d
	movs r2, #0x78
	movs r3, #4
	bl sub_0803D878
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803B268: .4byte gSave
_0803B26C: .4byte 0x0000070A
_0803B270: .4byte 0x0000070C
_0803B274: .4byte 0x0000070E

	thumb_func_start sub_0803B278
sub_0803B278: @ 0x0803B278
	push {r4, lr}
	ldr r4, _0803B2B8 @ =gSomeBlend
	ldr r1, _0803B2BC @ =0x00003668
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803B2B2
	bl sub_0800A07C
	ldr r3, _0803B2C0 @ =0x00003612
	adds r1, r4, r3
	ldrh r0, [r1]
	cmp r0, #5
	bhi _0803B2B2
	ldr r0, _0803B2C4 @ =gUnknown_08D2E1C0
	ldrh r1, [r1]
	lsls r2, r1, #2
	adds r2, r2, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r3, #0x56
	adds r1, r4, r3
	adds r0, r0, r1
	ldr r1, [r2]
	bl _call_via_r1
_0803B2B2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803B2B8: .4byte gSomeBlend
_0803B2BC: .4byte 0x00003668
_0803B2C0: .4byte 0x00003612
_0803B2C4: .4byte gUnknown_08D2E1C0

	thumb_func_start sub_0803B2C8
sub_0803B2C8: @ 0x0803B2C8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r5, _0803B3AC @ =gSomeBlend
	ldr r0, _0803B3B0 @ =0x00003614
	adds r4, r5, r0
	ldrh r0, [r4]
	movs r7, #7
	str r7, [sp]
	movs r1, #1
	mov r8, r1
	str r1, [sp, #4]
	movs r1, #3
	movs r2, #0
	movs r3, #3
	bl sub_08039A74
	ldrh r0, [r4]
	bl sub_08001B9C
	adds r4, r0, #0
	ldr r0, _0803B3B4 @ =0x00003628
	adds r6, r5, r0
	ldr r2, _0803B3B8 @ =0x00AC00AC
	adds r0, r6, #0
	movs r1, #0x1c
	bl sub_08001B54
	ldr r1, _0803B3BC @ =0x0000FFFF
	adds r5, r1, #0
	strh r5, [r6, #0x1a]
	adds r0, r4, #0
	bl sub_080025D8
	adds r2, r0, #0
	subs r2, r2, r4
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08001B18
	ldrh r0, [r6]
	cmp r0, r5
	beq _0803B334
	movs r3, #1
	rsbs r3, r3, #0
	str r7, [sp]
	adds r0, r6, #0
	movs r1, #7
	movs r2, #0
	bl sub_08039A18
_0803B334:
	movs r0, #0
	bl sub_08039B24
	movs r4, #1
	rsbs r4, r4, #0
	str r7, [sp]
	movs r1, #3
	movs r2, #1
	adds r3, r4, #0
	bl sub_08039A18
	ldr r5, _0803B3C0 @ =gGame
	ldrb r1, [r5, #8]
	mov r0, r8
	ands r0, r1
	movs r1, #0x11
	cmp r0, #0
	bne _0803B35A
	movs r1, #0x12
_0803B35A:
	adds r0, r1, #0
	bl sub_08039B24
	str r7, [sp]
	movs r1, #9
	movs r2, #1
	adds r3, r4, #0
	bl sub_08039A18
	movs r0, #1
	bl sub_08039B24
	str r7, [sp]
	movs r1, #3
	movs r2, #2
	adds r3, r4, #0
	bl sub_08039A18
	ldrb r1, [r5, #8]
	movs r0, #4
	ands r0, r1
	movs r1, #0x13
	cmp r0, #0
	bne _0803B38C
	movs r1, #0x14
_0803B38C:
	adds r0, r1, #0
	bl sub_08039B24
	str r7, [sp]
	movs r1, #9
	movs r2, #2
	adds r3, r4, #0
	bl sub_08039A18
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B3AC: .4byte gSomeBlend
_0803B3B0: .4byte 0x00003614
_0803B3B4: .4byte 0x00003628
_0803B3B8: .4byte 0x00AC00AC
_0803B3BC: .4byte 0x0000FFFF
_0803B3C0: .4byte gGame

	thumb_func_start sub_0803B3C4
sub_0803B3C4: @ 0x0803B3C4
	push {r4, r5, r6, lr}
	sub sp, #8
	movs r0, #2
	bl sub_08039B24
	movs r5, #1
	rsbs r5, r5, #0
	movs r4, #7
	str r4, [sp]
	movs r1, #3
	movs r2, #0
	adds r3, r5, #0
	bl sub_08039A18
	ldr r0, _0803B468 @ =gSomeBlend
	ldr r1, _0803B46C @ =0x00003616
	adds r0, r0, r1
	ldrh r0, [r0]
	str r4, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r1, #0xc
	movs r2, #0
	movs r3, #1
	bl sub_08039A74
	movs r0, #3
	bl sub_08039B24
	str r4, [sp]
	movs r1, #3
	movs r2, #1
	adds r3, r5, #0
	bl sub_08039A18
	ldr r6, _0803B470 @ =gGame
	ldrb r1, [r6, #8]
	movs r0, #8
	ands r0, r1
	movs r1, #0x11
	cmp r0, #0
	bne _0803B41A
	movs r1, #0x12
_0803B41A:
	adds r0, r1, #0
	bl sub_08039B24
	str r4, [sp]
	movs r1, #9
	movs r2, #1
	adds r3, r5, #0
	bl sub_08039A18
	movs r0, #4
	bl sub_08039B24
	str r4, [sp]
	movs r1, #3
	movs r2, #2
	adds r3, r5, #0
	bl sub_08039A18
	ldrb r1, [r6, #8]
	movs r0, #0x10
	ands r0, r1
	movs r1, #0x15
	cmp r0, #0
	bne _0803B44C
	movs r1, #0x16
_0803B44C:
	adds r0, r1, #0
	bl sub_08039B24
	str r4, [sp]
	movs r1, #9
	movs r2, #2
	adds r3, r5, #0
	bl sub_08039A18
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803B468: .4byte gSomeBlend
_0803B46C: .4byte 0x00003616
_0803B470: .4byte gGame

	thumb_func_start sub_0803B474
sub_0803B474: @ 0x0803B474
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r0, #5
	bl sub_08039B24
	movs r5, #1
	rsbs r5, r5, #0
	movs r4, #7
	str r4, [sp]
	movs r1, #3
	movs r2, #0
	adds r3, r5, #0
	bl sub_08039A18
	ldr r6, _0803B4F8 @ =gGame
	ldrb r1, [r6, #8]
	movs r0, #0x20
	ands r0, r1
	movs r1, #0x11
	cmp r0, #0
	bne _0803B4A0
	movs r1, #0x12
_0803B4A0:
	adds r0, r1, #0
	bl sub_08039B24
	str r4, [sp]
	movs r1, #9
	movs r2, #0
	adds r3, r5, #0
	bl sub_08039A18
	movs r0, #6
	bl sub_08039B24
	str r4, [sp]
	movs r1, #3
	movs r2, #1
	adds r3, r5, #0
	bl sub_08039A18
	ldrb r0, [r6, #3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	adds r0, #0x17
	bl sub_08039B24
	str r4, [sp]
	movs r1, #9
	movs r2, #1
	adds r3, r5, #0
	bl sub_08039A18
	movs r0, #7
	bl sub_08039B24
	str r4, [sp]
	movs r1, #3
	movs r2, #2
	adds r3, r5, #0
	bl sub_08039A18
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803B4F8: .4byte gGame

	thumb_func_start sub_0803B4FC
sub_0803B4FC: @ 0x0803B4FC
	push {r4, r5, lr}
	sub sp, #4
	movs r0, #0xa
	bl sub_08039B24
	movs r5, #1
	rsbs r5, r5, #0
	movs r4, #7
	str r4, [sp]
	movs r1, #3
	movs r2, #0
	adds r3, r5, #0
	bl sub_08039A18
	movs r0, #8
	bl sub_08039B24
	str r4, [sp]
	movs r1, #3
	movs r2, #1
	adds r3, r5, #0
	bl sub_08039A18
	movs r0, #0xb
	bl sub_08039B24
	str r4, [sp]
	movs r1, #3
	movs r2, #2
	adds r3, r5, #0
	bl sub_08039A18
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0803B544
sub_0803B544: @ 0x0803B544
	push {r4, r5, lr}
	sub sp, #4
	movs r0, #0xc
	bl sub_08039B24
	movs r5, #1
	rsbs r5, r5, #0
	movs r4, #7
	str r4, [sp]
	movs r1, #3
	movs r2, #0
	adds r3, r5, #0
	bl sub_08039A18
	movs r0, #0xd
	bl sub_08039B24
	str r4, [sp]
	movs r1, #3
	movs r2, #1
	adds r3, r5, #0
	bl sub_08039A18
	movs r0, #0xe
	bl sub_08039B24
	str r4, [sp]
	movs r1, #3
	movs r2, #2
	adds r3, r5, #0
	bl sub_08039A18
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0803B58C
sub_0803B58C: @ 0x0803B58C
	push {r4, r5, lr}
	sub sp, #4
	movs r0, #0xf
	bl sub_08039B24
	movs r5, #1
	rsbs r5, r5, #0
	movs r4, #7
	str r4, [sp]
	movs r1, #3
	movs r2, #0
	adds r3, r5, #0
	bl sub_08039A18
	movs r0, #0x10
	bl sub_08039B24
	str r4, [sp]
	movs r1, #3
	movs r2, #1
	adds r3, r5, #0
	bl sub_08039A18
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803B5C4
sub_0803B5C4: @ 0x0803B5C4
	push {r4, r5, r6, lr}
	movs r3, #0
	ldr r4, _0803B60C @ =gUnknown_0202AE78
	adds r6, r4, #0
	adds r6, #0x40
	adds r5, r4, #0
	adds r5, #0x80
_0803B5D2:
	lsls r1, r3, #1
	adds r0, r1, r4
	strh r3, [r0]
	adds r2, r1, r6
	lsls r0, r3, #5
	strh r0, [r2]
	adds r1, r1, r5
	lsls r0, r3, #0xa
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x1f
	bls _0803B5D2
	bl sub_0805BAD4
	bl sub_0803B610
	bl sub_0805BAF4
	bl sub_0803B638
	bl sub_0805BB14
	bl sub_0803B660
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803B60C: .4byte gUnknown_0202AE78

	thumb_func_start sub_0803B610
sub_0803B610: @ 0x0803B610
	push {r4, lr}
	adds r3, r0, #0
	movs r2, #0
	ldr r4, _0803B634 @ =gUnknown_0202AE78
_0803B618:
	lsls r1, r2, #1
	adds r1, r1, r4
	adds r0, r3, r2
	ldrb r0, [r0]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1f
	bls _0803B618
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803B634: .4byte gUnknown_0202AE78

	thumb_func_start sub_0803B638
sub_0803B638: @ 0x0803B638
	push {r4, lr}
	adds r3, r0, #0
	movs r2, #0
	ldr r4, _0803B65C @ =gUnknown_0202AEB8
_0803B640:
	lsls r1, r2, #1
	adds r1, r1, r4
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #5
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1f
	bls _0803B640
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803B65C: .4byte gUnknown_0202AEB8

	thumb_func_start sub_0803B660
sub_0803B660: @ 0x0803B660
	push {r4, lr}
	adds r3, r0, #0
	movs r2, #0
	ldr r4, _0803B684 @ =gUnknown_0202AEF8
_0803B668:
	lsls r1, r2, #1
	adds r1, r1, r4
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0xa
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1f
	bls _0803B668
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803B684: .4byte gUnknown_0202AEF8

	thumb_func_start sub_0803B688
sub_0803B688: @ 0x0803B688
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r1, _0803B718 @ =gGame
	ldrb r0, [r1, #3]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0803B708
	ldrb r1, [r1, #8]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803B708
	lsls r1, r2, #5
	ldr r0, _0803B71C @ =gUnknown_03005314
	adds r4, r1, r0
	movs r5, #0
	lsls r6, r3, #4
	cmp r5, r6
	bge _0803B708
	movs r0, #0xf8
	lsls r0, r0, #2
	mov sl, r0
	movs r0, #0xf8
	lsls r0, r0, #7
	mov sb, r0
	ldr r7, _0803B720 @ =gUnknown_0202AE78
	movs r0, #0x40
	adds r0, r0, r7
	mov r8, r0
	movs r0, #0x80
	adds r0, r0, r7
	mov ip, r0
_0803B6D6:
	ldrh r3, [r4]
	movs r1, #0x1f
	ands r1, r3
	mov r0, sl
	ands r0, r3
	mov r2, sb
	ands r2, r3
	lsls r1, r1, #1
	adds r1, r1, r7
	lsrs r0, r0, #4
	add r0, r8
	ldrh r1, [r1]
	ldrh r0, [r0]
	orrs r1, r0
	lsrs r2, r2, #9
	add r2, ip
	ldrh r0, [r2]
	orrs r1, r0
	strh r1, [r4]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #2
	cmp r5, r6
	blt _0803B6D6
_0803B708:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B718: .4byte gGame
_0803B71C: .4byte gUnknown_03005314
_0803B720: .4byte gUnknown_0202AE78

	thumb_func_start sub_0803B724
sub_0803B724: @ 0x0803B724
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _0803B7C0 @ =gGame
	ldrb r0, [r1, #3]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0803B7B0
	ldrb r1, [r1, #8]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803B7B0
	lsls r1, r4, #5
	ldr r0, _0803B7C4 @ =gUnknown_03005314
	adds r4, r1, r0
	lsls r0, r3, #1
	adds r4, r4, r0
	movs r5, #0
	subs r6, r2, r3
	adds r0, r6, #1
	cmp r5, r0
	bge _0803B7B0
	movs r0, #0xf8
	lsls r0, r0, #2
	mov sl, r0
	movs r0, #0xf8
	lsls r0, r0, #7
	mov sb, r0
	ldr r7, _0803B7C8 @ =gUnknown_0202AE78
	movs r0, #0x40
	adds r0, r0, r7
	mov r8, r0
	movs r0, #0x80
	adds r0, r0, r7
	mov ip, r0
_0803B77C:
	ldrh r3, [r4]
	movs r1, #0x1f
	ands r1, r3
	mov r0, sl
	ands r0, r3
	mov r2, sb
	ands r2, r3
	lsls r1, r1, #1
	adds r1, r1, r7
	lsrs r0, r0, #4
	add r0, r8
	ldrh r1, [r1]
	ldrh r0, [r0]
	orrs r1, r0
	lsrs r2, r2, #9
	add r2, ip
	ldrh r0, [r2]
	orrs r1, r0
	strh r1, [r4]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #2
	adds r0, r6, #1
	cmp r5, r0
	blt _0803B77C
_0803B7B0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B7C0: .4byte gGame
_0803B7C4: .4byte gUnknown_03005314
_0803B7C8: .4byte gUnknown_0202AE78

	thumb_func_start sub_0803B7CC
sub_0803B7CC: @ 0x0803B7CC
	push {r4, lr}
	ldr r2, _0803B7F8 @ =gUnknown_0202CD38
	ldr r1, _0803B7FC @ =gUnknown_02001030
	movs r0, #0x14
	str r0, [r1]
	movs r4, #0
	movs r3, #0xa5
	strb r3, [r1, #4]
	movs r0, #1
	strb r0, [r1, #5]
	str r2, [r1, #0xc]
	str r2, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r2]
	strb r3, [r2, #4]
	strb r4, [r2, #5]
	str r1, [r2, #0xc]
	str r1, [r2, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803B7F8: .4byte gUnknown_0202CD38
_0803B7FC: .4byte gUnknown_02001030

	thumb_func_start sub_0803B800
sub_0803B800: @ 0x0803B800
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r4, #0x13
	movs r0, #4
	rsbs r0, r0, #0
	ands r4, r0
	ldr r0, _0803B84C @ =gUnknown_02001030
	ldr r2, [r0, #8]
	cmp r2, r0
	beq _0803B856
	movs r6, #1
_0803B816:
	ldrb r5, [r2, #5]
	cmp r5, #0
	bne _0803B850
	ldr r1, [r2]
	cmp r1, r4
	blo _0803B850
	subs r3, r1, r4
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r3, r0
	bls _0803B844
	adds r1, r2, r4
	str r3, [r1]
	movs r0, #0xa5
	strb r0, [r1, #4]
	strb r5, [r1, #5]
	ldr r0, [r2, #8]
	str r1, [r0, #0xc]
	ldr r0, [r2, #8]
	str r0, [r1, #8]
	str r1, [r2, #8]
	str r2, [r1, #0xc]
	str r4, [r2]
_0803B844:
	strb r6, [r2, #5]
	adds r0, r2, #0
	adds r0, #0x10
	b _0803B858
	.align 2, 0
_0803B84C: .4byte gUnknown_02001030
_0803B850:
	ldr r2, [r2, #8]
	cmp r2, r0
	bne _0803B816
_0803B856:
	movs r0, #0
_0803B858:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803B860
sub_0803B860: @ 0x0803B860
	push {lr}
	adds r3, r0, #0
	subs r3, #0x10
	ldr r1, [r3, #0xc]
	ldrb r0, [r1, #5]
	cmp r0, #0
	bne _0803B884
	ldr r0, [r3, #8]
	str r1, [r0, #0xc]
	ldr r1, [r3, #0xc]
	ldr r0, [r3, #8]
	str r0, [r1, #8]
	ldr r2, [r3, #0xc]
	ldr r0, [r2]
	ldr r1, [r3]
	adds r0, r0, r1
	str r0, [r2]
	adds r3, r2, #0
_0803B884:
	ldr r1, [r3, #8]
	ldrb r0, [r1, #5]
	cmp r0, #0
	bne _0803B89E
	ldr r0, [r1, #8]
	str r3, [r0, #0xc]
	ldr r2, [r3, #8]
	ldr r0, [r3]
	ldr r1, [r2]
	adds r0, r0, r1
	str r0, [r3]
	ldr r0, [r2, #8]
	str r0, [r3, #8]
_0803B89E:
	movs r0, #0
	strb r0, [r3, #5]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803B8A8
sub_0803B8A8: @ 0x0803B8A8
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #1
	strh r0, [r4]
	ldr r5, _0803B90C @ =gGame
	ldr r1, _0803B910 @ =0x00009D10
	adds r0, r5, r1
	ldr r0, [r0]
	str r0, [r4, #4]
	adds r4, #0x18
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #8
	bl sub_08001B18
	adds r4, #0x10
	adds r5, #8
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #4
	bl sub_08001B18
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_0803B918
	movs r0, #0xe6
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_0803BD88
	movs r1, #0xfa
	lsls r1, r1, #2
	adds r4, r4, r1
	adds r0, r4, #0
	bl sub_0803BF44
	adds r4, #0xc8
	adds r0, r4, #0
	bl sub_0803BFEC
	ldr r0, _0803B914 @ =0x000006D6
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_0803C4B0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803B90C: .4byte gGame
_0803B910: .4byte 0x00009D10
_0803B914: .4byte 0x000006D6

	thumb_func_start sub_0803B918
sub_0803B918: @ 0x0803B918
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	movs r6, #0
	ldr r0, _0803BCF4 @ =gGame
	mov sb, r0
	mov r8, r6
	movs r1, #1
	mov sl, r1
_0803B932:
	lsls r0, r6, #2
	add r0, sb
	ldrb r0, [r0, #0x1c]
	lsrs r0, r0, #6
	lsls r5, r6, #3
	cmp r0, #3
	bne _0803B96C
	adds r0, r6, #0
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	bne _0803B96C
	subs r0, r5, r6
	lsls r0, r0, #3
	add r0, sb
	ldr r3, _0803BCF8 @ =0x000058B0
	adds r1, r0, r3
	mov r4, r8
	strh r4, [r1]
	ldr r2, _0803BCFC @ =0x000058B4
	adds r1, r0, r2
	strh r4, [r1]
	adds r3, #8
	adds r0, r0, r3
	strh r4, [r0]
_0803B96C:
	ldr r4, _0803BCF4 @ =gGame
	lsls r0, r6, #2
	adds r0, r0, r4
	ldrb r0, [r0, #0x1d]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bne _0803B9A8
	adds r0, r6, #0
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bne _0803B9A8
	subs r0, r5, r6
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r2, _0803BD00 @ =0x000058B2
	adds r1, r0, r2
	mov r3, r8
	strh r3, [r1]
	ldr r4, _0803BD04 @ =0x000058B6
	adds r1, r0, r4
	strh r3, [r1]
	ldr r1, _0803BD08 @ =0x000058BA
	adds r0, r0, r1
	strh r3, [r0]
_0803B9A8:
	lsls r3, r6, #4
	adds r3, r7, r3
	subs r5, r5, r6
	lsls r5, r5, #3
	mov r2, sb
	adds r4, r5, r2
	ldr r0, _0803BD0C @ =0x000058E5
	adds r4, r4, r0
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	mov r1, sl
	ands r0, r1
	ldrb r2, [r3, #0xc]
	mov ip, r2
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	mov r2, ip
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	mov r1, sl
	ands r0, r1
	lsls r0, r0, #1
	movs r1, #3
	rsbs r1, r1, #0
	mov ip, r1
	mov r1, ip
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	mov r4, sl
	ands r0, r4
	lsls r0, r0, #2
	movs r4, #5
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0xc]
	ldr r2, _0803BCF8 @ =0x000058B0
	add r2, sb
	adds r1, r5, r2
	ldrh r0, [r1]
	strh r0, [r3]
	ldrh r0, [r1, #2]
	strh r0, [r3, #2]
	ldr r1, _0803BCFC @ =0x000058B4
	add r1, sb
	adds r1, r5, r1
	ldrh r0, [r1]
	strh r0, [r3, #4]
	ldrh r0, [r1, #2]
	strh r0, [r3, #6]
	ldr r0, _0803BD10 @ =gUnknown_0200B4B8
	adds r5, r5, r0
	ldrh r0, [r5]
	strh r0, [r3, #8]
	ldrh r0, [r5, #2]
	strh r0, [r3, #0xa]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #2
	bhi _0803BA3A
	b _0803B932
_0803BA3A:
	movs r6, #0
	movs r1, #1
	mov r8, r1
_0803BA40:
	lsls r0, r6, #2
	adds r0, r0, r7
	mov ip, r0
	lsls r3, r6, #1
	adds r3, r3, r6
	lsls r3, r3, #3
	ldr r2, _0803BCF4 @ =gGame
	adds r3, r3, r2
	ldr r0, _0803BD14 @ =0x00005D74
	adds r4, r3, r0
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	mov r5, ip
	adds r5, #0x32
	mov r1, r8
	ands r0, r1
	ldrb r1, [r5]
	movs r2, #2
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r5]
	ldrb r0, [r4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #2
	movs r1, #5
	rsbs r1, r1, #0
	mov sl, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	ldrb r2, [r4]
	lsrs r2, r2, #3
	lsls r2, r2, #3
	movs r0, #7
	ands r1, r0
	orrs r1, r2
	strb r1, [r5]
	ldr r2, _0803BD18 @ =0x00005D75
	adds r0, r3, r2
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	mov r4, ip
	adds r4, #0x33
	lsrs r1, r1, #0x1c
	ldrb r2, [r4]
	movs r0, #0x10
	rsbs r0, r0, #0
	mov sb, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldr r1, _0803BD1C @ =0x00005D70
	adds r3, r3, r1
	ldrh r0, [r3]
	mov r2, ip
	strh r0, [r2, #0x30]
	lsls r3, r6, #4
	ldr r4, _0803BCF4 @ =gGame
	adds r3, r3, r4
	ldr r0, _0803BD20 @ =0x00006488
	adds r4, r3, r0
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	movs r5, #0x91
	lsls r5, r5, #1
	add r5, ip
	lsrs r0, r0, #0x1f
	mov r1, r8
	ands r0, r1
	ldrb r1, [r5]
	movs r2, #2
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r5]
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #6
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	ldrb r0, [r4]
	movs r2, #0x3e
	ands r2, r0
	movs r0, #0x3f
	rsbs r0, r0, #0
	ands r1, r0
	orrs r1, r2
	strb r1, [r5]
	ldr r2, _0803BD24 @ =0x00006484
	adds r3, r3, r2
	ldrh r1, [r3]
	movs r0, #0x90
	lsls r0, r0, #1
	add r0, ip
	strh r1, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x13
	bls _0803BA40
	movs r6, #0
	movs r3, #1
	mov r8, r3
	movs r4, #0xf
	mov sl, r4
_0803BB28:
	lsls r3, r6, #2
	adds r0, r7, r3
	mov ip, r0
	ldr r1, _0803BCF4 @ =gGame
	adds r3, r3, r1
	ldr r2, _0803BD28 @ =0x00005F42
	adds r4, r3, r2
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	mov r5, ip
	adds r5, #0x82
	lsrs r0, r0, #0x1f
	mov r1, r8
	ands r0, r1
	ldrb r1, [r5]
	movs r2, #2
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r5]
	ldrb r0, [r4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #2
	movs r1, #5
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	ldrb r2, [r4]
	lsrs r2, r2, #3
	lsls r2, r2, #3
	movs r0, #7
	ands r1, r0
	orrs r1, r2
	strb r1, [r5]
	ldr r2, _0803BD2C @ =0x00005F43
	adds r0, r3, r2
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	mov r4, ip
	adds r4, #0x83
	lsrs r1, r1, #0x1c
	mov r0, sl
	ands r1, r0
	ldrb r2, [r4]
	mov r0, sb
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldr r1, _0803BD30 @ =0x00005F40
	adds r3, r3, r1
	ldrh r1, [r3]
	mov r0, ip
	adds r0, #0x80
	strh r1, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x27
	bls _0803BB28
	movs r6, #0
	ldr r2, _0803BCF4 @ =gGame
	mov sb, r2
	movs r3, #1
	mov r8, r3
_0803BBB0:
	lsls r1, r6, #3
	adds r1, r1, r6
	lsls r1, r1, #2
	adds r5, r7, r1
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	mov r2, sb
	adds r4, r0, r2
	ldr r3, _0803BD34 @ =0x000065E0
	adds r3, r3, r4
	mov ip, r3
	ldrb r2, [r3]
	lsls r2, r2, #0x1f
	movs r4, #0xc8
	lsls r4, r4, #1
	adds r5, r5, r4
	lsrs r2, r2, #0x1f
	mov r3, r8
	ands r2, r3
	ldrb r3, [r5]
	movs r4, #2
	rsbs r4, r4, #0
	ands r3, r4
	orrs r3, r2
	strb r3, [r5]
	mov r4, ip
	ldrb r2, [r4]
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1f
	mov r4, r8
	ands r2, r4
	lsls r2, r2, #1
	str r2, [sp]
	movs r2, #3
	rsbs r2, r2, #0
	mov sl, r2
	mov r4, sl
	ands r3, r4
	ldr r2, [sp]
	orrs r3, r2
	strb r3, [r5]
	mov r4, ip
	ldrb r2, [r4]
	movs r4, #0x3c
	ands r4, r2
	movs r2, #0x3d
	rsbs r2, r2, #0
	mov ip, r2
	mov r2, ip
	ands r3, r2
	orrs r3, r4
	strb r3, [r5]
	ldr r3, _0803BD38 @ =gUnknown_0200C1BC
	adds r0, r0, r3
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r1, r1, r4
	adds r1, r7, r1
	movs r2, #0x20
	bl sub_08001B18
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0xb
	bls _0803BBB0
	ldr r3, _0803BCF4 @ =gGame
	ldr r1, _0803BD3C @ =0x000067AC
	adds r0, r3, r1
	ldrh r1, [r0]
	movs r2, #0xc8
	lsls r2, r2, #2
	adds r0, r7, r2
	strh r1, [r0]
	ldr r4, _0803BD40 @ =0x000067AE
	adds r0, r3, r4
	ldrh r1, [r0]
	adds r2, #2
	adds r0, r7, r2
	strh r1, [r0]
	adds r4, #2
	adds r0, r3, r4
	ldrh r1, [r0]
	adds r2, #2
	adds r0, r7, r2
	strh r1, [r0]
	adds r4, #2
	adds r0, r3, r4
	ldrh r1, [r0]
	adds r2, #2
	adds r0, r7, r2
	strh r1, [r0]
	adds r4, #2
	adds r0, r3, r4
	ldrh r1, [r0]
	adds r2, #2
	adds r0, r7, r2
	strh r1, [r0]
	adds r4, #2
	adds r0, r3, r4
	ldrh r1, [r0]
	adds r2, #2
	adds r0, r7, r2
	strh r1, [r0]
	adds r4, #2
	adds r0, r3, r4
	ldrh r1, [r0]
	adds r2, #2
	adds r0, r7, r2
	strh r1, [r0]
	adds r4, #8
	adds r0, r3, r4
	ldrh r1, [r0]
	adds r2, #8
	adds r0, r7, r2
	strh r1, [r0]
	subs r4, #6
	adds r0, r3, r4
	ldrh r1, [r0]
	subs r2, #6
	adds r0, r7, r2
	strh r1, [r0]
	adds r4, #2
	adds r0, r3, r4
	ldrh r1, [r0]
	adds r2, #2
	adds r0, r7, r2
	strh r1, [r0]
	adds r4, #2
	adds r0, r3, r4
	ldrh r1, [r0]
	adds r2, #2
	adds r0, r7, r2
	strh r1, [r0]
	adds r4, #6
	adds r0, r3, r4
	ldrb r4, [r0]
	lsls r2, r4, #0x1f
	ldr r0, _0803BD44 @ =0x00000336
	adds r5, r7, r0
	lsrs r2, r2, #0x1f
	ldrb r0, [r5]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r0
	orrs r1, r2
	movs r0, #2
	ands r0, r4
	mov r2, sl
	ands r1, r2
	orrs r1, r0
	movs r0, #4
	ands r0, r4
	movs r2, #5
	rsbs r2, r2, #0
	ands r1, r2
	orrs r1, r0
	movs r0, #8
	ands r0, r4
	subs r2, #4
	b _0803BD48
	.align 2, 0
_0803BCF4: .4byte gGame
_0803BCF8: .4byte 0x000058B0
_0803BCFC: .4byte 0x000058B4
_0803BD00: .4byte 0x000058B2
_0803BD04: .4byte 0x000058B6
_0803BD08: .4byte 0x000058BA
_0803BD0C: .4byte 0x000058E5
_0803BD10: .4byte gUnknown_0200B4B8
_0803BD14: .4byte 0x00005D74
_0803BD18: .4byte 0x00005D75
_0803BD1C: .4byte 0x00005D70
_0803BD20: .4byte 0x00006488
_0803BD24: .4byte 0x00006484
_0803BD28: .4byte 0x00005F42
_0803BD2C: .4byte 0x00005F43
_0803BD30: .4byte 0x00005F40
_0803BD34: .4byte 0x000065E0
_0803BD38: .4byte gUnknown_0200C1BC
_0803BD3C: .4byte 0x000067AC
_0803BD40: .4byte 0x000067AE
_0803BD44: .4byte 0x00000336
_0803BD48:
	ands r1, r2
	orrs r1, r0
	movs r0, #0x10
	ands r0, r4
	subs r2, #8
	ands r1, r2
	orrs r1, r0
	movs r0, #0x20
	ands r0, r4
	subs r2, #0x10
	ands r1, r2
	orrs r1, r0
	ldr r4, _0803BD84 @ =0x000067C5
	adds r3, r3, r4
	ldrb r0, [r3]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	lsls r0, r0, #6
	subs r2, #0x20
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803BD84: .4byte 0x000067C5

	thumb_func_start sub_0803BD88
sub_0803BD88: @ 0x0803BD88
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r3, _0803BF00 @ =gUnknown_0200D908
	adds r1, r7, #0
	movs r2, #0
	ldr r0, _0803BF04 @ =0xFFFF82F8
	adds r0, r0, r3
	mov ip, r0
_0803BD9C:
	ldrh r0, [r3]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #2]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #4]
	strh r0, [r1]
	adds r1, #2
	adds r3, #8
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x9f
	bls _0803BD9C
	movs r2, #0
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r3, r7, r1
	ldr r4, _0803BF08 @ =gUnknown_0200DE94
_0803BDC4:
	adds r1, r3, r2
	adds r0, r2, r4
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #4
	bls _0803BDC4
	ldr r0, _0803BF0C @ =0x00008299
	add r0, ip
	ldrb r1, [r0]
	ldr r2, _0803BF10 @ =0x000003C5
	adds r0, r7, r2
	strb r1, [r0]
	ldr r0, _0803BF14 @ =0x0000829A
	add r0, ip
	ldrb r1, [r0]
	adds r2, #1
	adds r0, r7, r2
	strb r1, [r0]
	ldr r0, _0803BF18 @ =0x0000829B
	add r0, ip
	ldrb r1, [r0]
	adds r2, #1
	adds r0, r7, r2
	strb r1, [r0]
	ldr r0, _0803BF1C @ =0x0000829E
	add r0, ip
	ldrh r1, [r0]
	adds r2, #1
	adds r0, r7, r2
	strh r1, [r0]
	ldr r0, _0803BF20 @ =0x000082AC
	add r0, ip
	ldrh r1, [r0]
	adds r2, #2
	adds r0, r7, r2
	strh r1, [r0]
	ldr r0, _0803BF24 @ =0x000082B4
	add r0, ip
	ldrh r1, [r0]
	adds r2, #2
	adds r0, r7, r2
	strh r1, [r0]
	ldr r5, _0803BF28 @ =0x000082B6
	add r5, ip
	ldrb r4, [r5]
	lsls r1, r4, #0x1f
	ldr r0, _0803BF2C @ =0x000003CE
	adds r3, r7, r0
	lsrs r1, r1, #0x1f
	ldrb r2, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	movs r1, #0x1e
	ands r1, r4
	movs r2, #0x1f
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrh r0, [r5]
	movs r1, #0xf0
	lsls r1, r1, #1
	ands r1, r0
	ldrh r2, [r3]
	ldr r0, _0803BF30 @ =0xFFFFFE1F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	ldr r0, _0803BF34 @ =0x000082B7
	add r0, ip
	ldrb r3, [r0]
	ldr r1, _0803BF38 @ =0x000003CF
	adds r1, r1, r7
	mov r8, r1
	movs r1, #2
	ands r1, r3
	mov r0, r8
	ldrb r2, [r0]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	movs r1, #4
	ands r1, r3
	movs r2, #5
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	movs r1, #8
	ands r1, r3
	subs r2, #4
	ands r0, r2
	orrs r0, r1
	movs r1, #0x10
	ands r1, r3
	movs r5, #0x11
	rsbs r5, r5, #0
	ands r0, r5
	orrs r0, r1
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	lsls r1, r1, #5
	movs r6, #0x21
	rsbs r6, r6, #0
	ands r0, r6
	orrs r0, r1
	lsrs r3, r3, #7
	lsls r3, r3, #6
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	orrs r0, r3
	ldr r1, _0803BF3C @ =0x000082B8
	add r1, ip
	ldrb r3, [r1]
	lsls r4, r3, #0x1b
	lsrs r1, r4, #0x1b
	movs r2, #1
	ands r1, r2
	lsls r1, r1, #7
	movs r2, #0x7f
	ands r0, r2
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	movs r0, #0xf4
	lsls r0, r0, #2
	adds r2, r7, r0
	lsrs r4, r4, #0x1c
	ldrb r0, [r2]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	orrs r1, r4
	lsls r3, r3, #0x1a
	lsrs r3, r3, #0x1f
	lsls r3, r3, #4
	ands r1, r5
	orrs r1, r3
	ldr r0, _0803BF40 @ =0x000082B9
	add r0, ip
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	lsls r0, r0, #5
	ands r1, r6
	orrs r1, r0
	strb r1, [r2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803BF00: .4byte gUnknown_0200D908
_0803BF04: .4byte 0xFFFF82F8
_0803BF08: .4byte gUnknown_0200DE94
_0803BF0C: .4byte 0x00008299
_0803BF10: .4byte 0x000003C5
_0803BF14: .4byte 0x0000829A
_0803BF18: .4byte 0x0000829B
_0803BF1C: .4byte 0x0000829E
_0803BF20: .4byte 0x000082AC
_0803BF24: .4byte 0x000082B4
_0803BF28: .4byte 0x000082B6
_0803BF2C: .4byte 0x000003CE
_0803BF30: .4byte 0xFFFFFE1F
_0803BF34: .4byte 0x000082B7
_0803BF38: .4byte 0x000003CF
_0803BF3C: .4byte 0x000082B8
_0803BF40: .4byte 0x000082B9

	thumb_func_start sub_0803BF44
sub_0803BF44: @ 0x0803BF44
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0803BF88 @ =gUnknown_0200DEBC
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0xa0
	bl sub_08001B18
	adds r0, r4, #0
	adds r0, #0xc6
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803BF8C
	adds r0, r4, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r5, #0
	adds r1, #0xa0
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb5
	ldrb r0, [r0]
	subs r0, #1
	adds r1, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb6
	ldrb r0, [r0]
	subs r0, #1
	b _0803BFAA
	.align 2, 0
_0803BF88: .4byte gUnknown_0200DEBC
_0803BF8C:
	adds r0, r4, #0
	adds r0, #0xb4
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0xa0
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0xb5
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0xa1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb6
	ldrb r0, [r0]
_0803BFAA:
	adds r1, #1
	strb r0, [r1]
	ldr r1, _0803BFDC @ =gGame
	ldr r2, _0803BFE0 @ =0x00008373
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, r5, #0
	adds r2, #0xa3
	strb r0, [r2]
	ldr r2, _0803BFE4 @ =0x00008374
	adds r0, r1, r2
	ldrb r2, [r0]
	adds r0, r5, #0
	adds r0, #0xa4
	strb r2, [r0]
	ldr r0, _0803BFE8 @ =0x00008375
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r0, r5, #0
	adds r0, #0xa5
	strb r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803BFDC: .4byte gGame
_0803BFE0: .4byte 0x00008373
_0803BFE4: .4byte 0x00008374
_0803BFE8: .4byte 0x00008375

	thumb_func_start sub_0803BFEC
sub_0803BFEC: @ 0x0803BFEC
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
	ldr r1, _0803C468 @ =gUnknown_0200D908
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
	ldr r3, _0803C46C @ =0xFFFFFE0F
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
	ldr r2, _0803C470 @ =0xFFFE07FF
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

	thumb_func_start sub_0803C4B0
sub_0803C4B0: @ 0x0803C4B0
	push {lr}
	adds r1, r0, #0
	ldr r0, _0803C4C0 @ =gUnknown_0200F888
	movs r2, #0x80
	bl sub_08001B18
	pop {r0}
	bx r0
	.align 2, 0
_0803C4C0: .4byte gUnknown_0200F888

	thumb_func_start sub_0803C4C4
sub_0803C4C4: @ 0x0803C4C4
	push {lr}
	adds r1, r0, #0
	ldr r0, _0803C4D8 @ =gUnknown_0200F488
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
	pop {r0}
	bx r0
	.align 2, 0
_0803C4D8: .4byte gUnknown_0200F488

	thumb_func_start sub_0803C4DC
sub_0803C4DC: @ 0x0803C4DC
	push {r4, r5, r6, lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0803C4F8
	ldr r0, _0803C534 @ =gUnknown_03005314
	ldr r1, _0803C538 @ =gUnknown_0200F088
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
_0803C4F8:
	ldr r0, _0803C53C @ =gUnknown_020050C0
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r6, [r0]
	ldr r0, _0803C534 @ =gUnknown_03005314
	ldr r4, _0803C540 @ =gUnknown_0200F488
	movs r5, #0x80
	lsls r5, r5, #3
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08001B18
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_08001B18
	adds r6, r6, r5
	ldr r0, _0803C544 @ =0xFFFFFC00
	adds r4, r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_08001B18
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803C534: .4byte gUnknown_03005314
_0803C538: .4byte gUnknown_0200F088
_0803C53C: .4byte gUnknown_020050C0
_0803C540: .4byte gUnknown_0200F488
_0803C544: .4byte 0xFFFFFC00

	thumb_func_start nullsub_17
nullsub_17: @ 0x0803C548
	bx lr
	.align 2, 0

	thumb_func_start sub_0803C54C
sub_0803C54C: @ 0x0803C54C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r0, [r5]
	cmp r0, #1
	bne _0803C5AC
	ldr r4, _0803C5B4 @ =gGame
	ldr r0, _0803C5B8 @ =0x00009D10
	adds r1, r4, r0
	ldr r0, [r5, #4]
	str r0, [r1]
	adds r5, #0x18
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #8
	bl sub_08001B18
	adds r5, #0x10
	adds r4, #8
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #4
	bl sub_08001B18
	adds r5, #0x10
	adds r0, r5, #0
	bl sub_0803C5C0
	movs r0, #0xe6
	lsls r0, r0, #2
	adds r5, r5, r0
	adds r0, r5, #0
	bl sub_0803C9AC
	movs r0, #0xfa
	lsls r0, r0, #2
	adds r5, r5, r0
	adds r0, r5, #0
	bl sub_0803CB68
	adds r5, #0xc8
	adds r0, r5, #0
	bl sub_0803CBC4
	ldr r0, _0803C5BC @ =0x000006D6
	adds r5, r5, r0
	adds r0, r5, #0
	bl sub_0803D058
_0803C5AC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803C5B4: .4byte gGame
_0803C5B8: .4byte 0x00009D10
_0803C5BC: .4byte 0x000006D6

	thumb_func_start sub_0803C5C0
sub_0803C5C0: @ 0x0803C5C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	movs r7, #0
	ldr r0, _0803C944 @ =gGame
	mov ip, r0
	movs r6, #1
	movs r1, #3
	rsbs r1, r1, #0
	mov sl, r1
	movs r2, #5
	rsbs r2, r2, #0
	mov sb, r2
_0803C5E0:
	lsls r4, r7, #3
	subs r4, r4, r7
	lsls r4, r4, #3
	mov r3, ip
	adds r5, r4, r3
	lsls r3, r7, #4
	add r3, r8
	ldrb r0, [r3, #0xc]
	lsls r0, r0, #0x1f
	ldr r1, _0803C948 @ =0x000058E5
	adds r5, r5, r1
	lsrs r0, r0, #0x1f
	ands r0, r6
	ldrb r1, [r5]
	movs r2, #2
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r5]
	ldrb r0, [r3, #0xc]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	ands r0, r6
	lsls r0, r0, #1
	mov r1, sl
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	ldrb r0, [r3, #0xc]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	ands r0, r6
	lsls r0, r0, #2
	mov r2, sb
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	ldr r2, _0803C94C @ =0x000058B0
	add r2, ip
	adds r1, r4, r2
	ldrh r0, [r3]
	strh r0, [r1]
	ldrh r0, [r3, #2]
	strh r0, [r1, #2]
	ldr r1, _0803C950 @ =0x000058B4
	add r1, ip
	adds r1, r4, r1
	ldrh r0, [r3, #4]
	strh r0, [r1]
	ldrh r0, [r3, #6]
	strh r0, [r1, #2]
	ldr r0, _0803C954 @ =gUnknown_0200B4B8
	adds r4, r4, r0
	ldrh r0, [r3, #8]
	strh r0, [r4]
	ldrh r0, [r3, #0xa]
	strh r0, [r4, #2]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #2
	bls _0803C5E0
	movs r7, #0
	movs r1, #1
	mov ip, r1
_0803C662:
	lsls r3, r7, #1
	adds r3, r3, r7
	lsls r3, r3, #3
	ldr r2, _0803C944 @ =gGame
	adds r3, r3, r2
	lsls r0, r7, #2
	mov r1, r8
	adds r6, r1, r0
	adds r5, r6, #0
	adds r5, #0x32
	ldrb r0, [r5]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	ldr r2, _0803C958 @ =0x00005D74
	adds r4, r3, r2
	mov r1, ip
	ands r0, r1
	ldrb r1, [r4]
	movs r2, #2
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r4]
	ldrb r0, [r5]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #2
	movs r1, #5
	rsbs r1, r1, #0
	mov sl, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	ldrb r2, [r5]
	lsrs r2, r2, #3
	lsls r2, r2, #3
	movs r0, #7
	ands r1, r0
	orrs r1, r2
	strb r1, [r4]
	adds r0, r6, #0
	adds r0, #0x33
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	ldr r2, _0803C95C @ =0x00005D75
	adds r4, r3, r2
	lsrs r1, r1, #0x1c
	ldrb r2, [r4]
	movs r0, #0x10
	rsbs r0, r0, #0
	mov sb, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldrh r0, [r6, #0x30]
	ldr r1, _0803C960 @ =0x00005D70
	adds r3, r3, r1
	strh r0, [r3]
	lsls r3, r7, #4
	ldr r2, _0803C944 @ =gGame
	adds r3, r3, r2
	movs r0, #0x91
	lsls r0, r0, #1
	adds r5, r6, r0
	ldrb r0, [r5]
	lsls r0, r0, #0x1f
	ldr r1, _0803C964 @ =0x00006488
	adds r4, r3, r1
	lsrs r0, r0, #0x1f
	mov r2, ip
	ands r0, r2
	ldrb r1, [r4]
	movs r2, #2
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r4]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #6
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	ldrb r0, [r5]
	movs r2, #0x3e
	ands r2, r0
	movs r0, #0x3f
	rsbs r0, r0, #0
	ands r1, r0
	orrs r1, r2
	strb r1, [r4]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrh r0, [r0]
	ldr r6, _0803C968 @ =0x00006484
	adds r3, r3, r6
	strh r0, [r3]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x13
	bls _0803C662
	movs r7, #0
	movs r0, #1
	mov ip, r0
	movs r1, #0xf
	mov sl, r1
_0803C748:
	lsls r0, r7, #2
	ldr r2, _0803C944 @ =gGame
	adds r4, r0, r2
	mov r3, r8
	adds r6, r3, r0
	adds r5, r6, #0
	adds r5, #0x82
	ldrb r0, [r5]
	lsls r0, r0, #0x1f
	ldr r1, _0803C96C @ =0x00005F42
	adds r3, r4, r1
	lsrs r0, r0, #0x1f
	mov r2, ip
	ands r0, r2
	ldrb r1, [r3]
	movs r2, #2
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r3]
	ldrb r0, [r5]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #2
	movs r1, #5
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldrb r2, [r5]
	lsrs r2, r2, #3
	lsls r2, r2, #3
	movs r0, #7
	ands r1, r0
	orrs r1, r2
	strb r1, [r3]
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	ldr r2, _0803C970 @ =0x00005F43
	adds r3, r4, r2
	lsrs r1, r1, #0x1c
	mov r0, sl
	ands r1, r0
	ldrb r2, [r3]
	mov r0, sb
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r6, #0
	adds r0, #0x80
	ldrh r0, [r0]
	ldr r1, _0803C974 @ =0x00005F40
	adds r4, r4, r1
	strh r0, [r4]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x27
	bls _0803C748
	movs r7, #0
	ldr r2, _0803C944 @ =gGame
	mov sb, r2
_0803C7CC:
	lsls r1, r7, #2
	adds r1, r1, r7
	lsls r1, r1, #3
	mov r3, sb
	adds r5, r1, r3
	lsls r0, r7, #3
	adds r0, r0, r7
	lsls r0, r0, #2
	mov r6, r8
	adds r4, r6, r0
	movs r2, #0xc8
	lsls r2, r2, #1
	adds r4, r4, r2
	ldrb r2, [r4]
	lsls r2, r2, #0x1f
	ldr r3, _0803C978 @ =0x000065E0
	adds r5, r5, r3
	lsrs r2, r2, #0x1f
	movs r6, #1
	ands r2, r6
	ldrb r3, [r5]
	subs r6, #3
	ands r3, r6
	orrs r3, r2
	strb r3, [r5]
	ldrb r2, [r4]
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1f
	movs r6, #1
	ands r2, r6
	lsls r2, r2, #1
	subs r6, #4
	mov sl, r6
	mov r6, sl
	ands r3, r6
	orrs r3, r2
	strb r3, [r5]
	ldrb r2, [r4]
	movs r4, #0x3c
	ands r4, r2
	movs r6, #0x3d
	rsbs r6, r6, #0
	adds r2, r6, #0
	ands r3, r2
	orrs r3, r4
	strb r3, [r5]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r0, r2
	add r0, r8
	ldr r3, _0803C97C @ =gUnknown_0200C1BC
	adds r1, r1, r3
	movs r2, #0x20
	bl sub_08001B18
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0xb
	bls _0803C7CC
	ldr r4, _0803C944 @ =gGame
	movs r0, #0xc8
	lsls r0, r0, #2
	add r0, r8
	ldrh r1, [r0]
	ldr r6, _0803C980 @ =0x000067AC
	adds r0, r4, r6
	strh r1, [r0]
	ldr r0, _0803C984 @ =0x00000322
	add r0, r8
	ldrh r1, [r0]
	ldr r2, _0803C988 @ =0x000067AE
	adds r0, r4, r2
	strh r1, [r0]
	movs r0, #0xc9
	lsls r0, r0, #2
	add r0, r8
	ldrh r1, [r0]
	ldr r3, _0803C98C @ =0x000067B0
	adds r0, r4, r3
	strh r1, [r0]
	ldr r0, _0803C990 @ =0x00000326
	add r0, r8
	ldrh r1, [r0]
	adds r6, #6
	adds r0, r4, r6
	strh r1, [r0]
	movs r0, #0xca
	lsls r0, r0, #2
	add r0, r8
	ldrh r1, [r0]
	adds r2, #6
	adds r0, r4, r2
	strh r1, [r0]
	ldr r0, _0803C994 @ =0x0000032A
	add r0, r8
	ldrh r1, [r0]
	adds r3, #6
	adds r0, r4, r3
	strh r1, [r0]
	movs r0, #0xcb
	lsls r0, r0, #2
	add r0, r8
	ldrh r1, [r0]
	adds r6, #6
	adds r0, r4, r6
	strh r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #2
	add r0, r8
	ldrh r1, [r0]
	adds r2, #0xc
	adds r0, r4, r2
	strh r1, [r0]
	ldr r0, _0803C998 @ =0x0000032E
	add r0, r8
	ldrh r1, [r0]
	adds r3, #4
	adds r0, r4, r3
	strh r1, [r0]
	movs r0, #0xcc
	lsls r0, r0, #2
	add r0, r8
	ldrh r1, [r0]
	adds r6, #4
	adds r0, r4, r6
	strh r1, [r0]
	ldr r0, _0803C99C @ =0x00000332
	add r0, r8
	ldrh r1, [r0]
	subs r2, #2
	adds r0, r4, r2
	strh r1, [r0]
	ldr r0, _0803C9A0 @ =0x00000336
	add r0, r8
	ldrb r3, [r0]
	lsls r1, r3, #0x1f
	ldr r0, _0803C9A4 @ =0x000067C4
	adds r6, r4, r0
	lsrs r1, r1, #0x1f
	ldrb r2, [r6]
	movs r5, #2
	rsbs r5, r5, #0
	adds r0, r5, #0
	ands r0, r2
	orrs r0, r1
	movs r1, #2
	ands r1, r3
	mov r2, sl
	ands r0, r2
	orrs r0, r1
	movs r1, #4
	ands r1, r3
	movs r2, #5
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	movs r1, #8
	ands r1, r3
	subs r2, #4
	ands r0, r2
	orrs r0, r1
	movs r1, #0x10
	ands r1, r3
	subs r2, #8
	ands r0, r2
	orrs r0, r1
	movs r1, #0x20
	ands r1, r3
	subs r2, #0x10
	ands r0, r2
	orrs r0, r1
	strb r0, [r6]
	lsls r3, r3, #0x19
	ldr r6, _0803C9A8 @ =0x000067C5
	adds r4, r4, r6
	lsrs r3, r3, #0x1f
	ldrb r0, [r4]
	ands r5, r0
	orrs r5, r3
	strb r5, [r4]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C944: .4byte gGame
_0803C948: .4byte 0x000058E5
_0803C94C: .4byte 0x000058B0
_0803C950: .4byte 0x000058B4
_0803C954: .4byte gUnknown_0200B4B8
_0803C958: .4byte 0x00005D74
_0803C95C: .4byte 0x00005D75
_0803C960: .4byte 0x00005D70
_0803C964: .4byte 0x00006488
_0803C968: .4byte 0x00006484
_0803C96C: .4byte 0x00005F42
_0803C970: .4byte 0x00005F43
_0803C974: .4byte 0x00005F40
_0803C978: .4byte 0x000065E0
_0803C97C: .4byte gUnknown_0200C1BC
_0803C980: .4byte 0x000067AC
_0803C984: .4byte 0x00000322
_0803C988: .4byte 0x000067AE
_0803C98C: .4byte 0x000067B0
_0803C990: .4byte 0x00000326
_0803C994: .4byte 0x0000032A
_0803C998: .4byte 0x0000032E
_0803C99C: .4byte 0x00000332
_0803C9A0: .4byte 0x00000336
_0803C9A4: .4byte 0x000067C4
_0803C9A8: .4byte 0x000067C5

	thumb_func_start sub_0803C9AC
sub_0803C9AC: @ 0x0803C9AC
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r3, _0803CB18 @ =gUnknown_0200D908
	adds r1, r7, #0
	movs r2, #0
	ldr r0, _0803CB1C @ =0xFFFF82F8
	adds r0, r0, r3
	mov ip, r0
_0803C9BC:
	ldrh r0, [r1]
	strh r0, [r3]
	adds r1, #2
	ldrh r0, [r1]
	strh r0, [r3, #2]
	adds r1, #2
	ldrh r0, [r1]
	strh r0, [r3, #4]
	adds r1, #2
	adds r3, #8
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x9f
	bls _0803C9BC
	movs r2, #0
	ldr r4, _0803CB20 @ =gUnknown_0200DE94
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r3, r7, r1
_0803C9E4:
	adds r1, r2, r4
	adds r0, r3, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #4
	bls _0803C9E4
	ldr r1, _0803CB24 @ =0x000003C5
	adds r0, r7, r1
	ldrb r1, [r0]
	ldr r0, _0803CB28 @ =0x00008299
	add r0, ip
	strb r1, [r0]
	ldr r1, _0803CB2C @ =0x000003C6
	adds r0, r7, r1
	ldrb r1, [r0]
	ldr r0, _0803CB30 @ =0x0000829A
	add r0, ip
	strb r1, [r0]
	ldr r1, _0803CB34 @ =0x000003C7
	adds r0, r7, r1
	ldrb r1, [r0]
	ldr r0, _0803CB38 @ =0x0000829B
	add r0, ip
	strb r1, [r0]
	movs r1, #0xf2
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrh r1, [r0]
	ldr r0, _0803CB3C @ =0x0000829E
	add r0, ip
	strh r1, [r0]
	ldr r1, _0803CB40 @ =0x000003CA
	adds r0, r7, r1
	ldrh r1, [r0]
	ldr r0, _0803CB44 @ =0x000082AC
	add r0, ip
	strh r1, [r0]
	movs r1, #0xf3
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrh r1, [r0]
	ldr r0, _0803CB48 @ =0x000082B4
	add r0, ip
	strh r1, [r0]
	ldr r0, _0803CB4C @ =0x000003CE
	adds r6, r7, r0
	ldrb r5, [r6]
	lsls r1, r5, #0x1f
	ldr r3, _0803CB50 @ =0x000082B6
	add r3, ip
	lsrs r1, r1, #0x1f
	ldrb r2, [r3]
	movs r4, #2
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r2
	orrs r0, r1
	movs r1, #0x1e
	ands r1, r5
	movs r2, #0x1f
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrh r0, [r6]
	movs r1, #0xf0
	lsls r1, r1, #1
	ands r1, r0
	ldrh r2, [r3]
	ldr r0, _0803CB54 @ =0xFFFFFE1F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _0803CB58 @ =0x000003CF
	adds r0, r7, r1
	ldrb r3, [r0]
	ldr r5, _0803CB5C @ =0x000082B7
	add r5, ip
	movs r1, #2
	ands r1, r3
	ldrb r2, [r5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	movs r1, #4
	ands r1, r3
	movs r2, #5
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	movs r1, #8
	ands r1, r3
	subs r2, #4
	ands r0, r2
	orrs r0, r1
	movs r1, #0x10
	ands r1, r3
	subs r2, #8
	ands r0, r2
	orrs r0, r1
	lsls r1, r3, #0x1a
	lsrs r1, r1, #0x1f
	lsls r1, r1, #6
	subs r2, #0x30
	ands r0, r2
	orrs r0, r1
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	lsls r1, r1, #7
	movs r2, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1f
	movs r0, #0xf4
	lsls r0, r0, #2
	adds r5, r7, r0
	ldrb r1, [r5]
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #1
	ldr r6, _0803CB60 @ =0x000082B8
	add r6, ip
	orrs r1, r3
	ldrb r2, [r6]
	subs r0, #0x2f
	ands r0, r2
	orrs r0, r1
	ldrb r3, [r5]
	lsls r1, r3, #0x1b
	lsrs r1, r1, #0x1f
	lsls r1, r1, #5
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6]
	lsls r3, r3, #0x1a
	ldr r1, _0803CB64 @ =0x000082B9
	add r1, ip
	lsrs r3, r3, #0x1f
	ldrb r0, [r1]
	ands r4, r0
	orrs r4, r3
	strb r4, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803CB18: .4byte gUnknown_0200D908
_0803CB1C: .4byte 0xFFFF82F8
_0803CB20: .4byte gUnknown_0200DE94
_0803CB24: .4byte 0x000003C5
_0803CB28: .4byte 0x00008299
_0803CB2C: .4byte 0x000003C6
_0803CB30: .4byte 0x0000829A
_0803CB34: .4byte 0x000003C7
_0803CB38: .4byte 0x0000829B
_0803CB3C: .4byte 0x0000829E
_0803CB40: .4byte 0x000003CA
_0803CB44: .4byte 0x000082AC
_0803CB48: .4byte 0x000082B4
_0803CB4C: .4byte 0x000003CE
_0803CB50: .4byte 0x000082B6
_0803CB54: .4byte 0xFFFFFE1F
_0803CB58: .4byte 0x000003CF
_0803CB5C: .4byte 0x000082B7
_0803CB60: .4byte 0x000082B8
_0803CB64: .4byte 0x000082B9

	thumb_func_start sub_0803CB68
sub_0803CB68: @ 0x0803CB68
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0803CBC0 @ =gUnknown_0200DEBC
	adds r1, r5, #0
	movs r2, #0xa0
	bl sub_08001B18
	adds r0, r4, #0
	adds r0, #0xa0
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0xb4
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0xa1
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0xb5
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xa2
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xa3
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xa4
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0xb8
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0xa5
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0xb9
	strb r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803CBC0: .4byte gUnknown_0200DEBC

	thumb_func_start sub_0803CBC4
sub_0803CBC4: @ 0x0803CBC4
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
	ldr r1, _0803D024 @ =gUnknown_0200D908
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
	ldr r4, _0803D028 @ =0xFFFFFC03
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
	ldr r2, _0803D02C @ =0xFFE07FFF
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

	thumb_func_start sub_0803D058
sub_0803D058: @ 0x0803D058
	push {lr}
	ldr r1, _0803D068 @ =gUnknown_0200F888
	movs r2, #0x80
	bl sub_08001B18
	pop {r0}
	bx r0
	.align 2, 0
_0803D068: .4byte gUnknown_0200F888

	thumb_func_start sub_0803D06C
sub_0803D06C: @ 0x0803D06C
	push {lr}
	sub sp, #4
	adds r3, r0, #0
	mov r0, sp
	strh r1, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _0803D090
	ldr r1, _0803D08C @ =gUnknown_0200F488
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r3, #0
	bl sub_08001B18
	b _0803D09C
	.align 2, 0
_0803D08C: .4byte gUnknown_0200F488
_0803D090:
	ldr r1, _0803D0A4 @ =gUnknown_03005314
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r3, #0
	bl sub_08001B18
_0803D09C:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0803D0A4: .4byte gUnknown_03005314

	thumb_func_start sub_0803D0A8
sub_0803D0A8: @ 0x0803D0A8
	push {r4, r5, lr}
	ldr r0, _0803D0D4 @ =gUnknown_020050C0
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r1, _0803D0D8 @ =gUnknown_03005314
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_08001B18
	adds r4, r4, r5
	ldr r1, _0803D0DC @ =gUnknown_0200F088
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_08001B18
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803D0D4: .4byte gUnknown_020050C0
_0803D0D8: .4byte gUnknown_03005314
_0803D0DC: .4byte gUnknown_0200F088

	thumb_func_start nullsub_18
nullsub_18: @ 0x0803D0E0
	bx lr
	.align 2, 0

	arm_func_start sub_0803D0E4
sub_0803D0E4: @ 0x0803D0E4
	ldr r2, _0803D128 @ =0x04000006
	ldrh r3, [r2]
	cmp r3, #0x9d
	bhi _0803D118
	ldr r0, _0803D134 @ =gUnknown_03004AF0
	ldr r1, _0803D138 @ =gUnknown_030040F0
	add r1, r1, r3, lsl #1
	ldr r2, _0803D12C @ =0x04000040
	ldrh r3, [r0]
	cmp r3, #0
	beq _0803D118
	ldrh r3, [r1]
	strh r3, [r2]
_0803D118:
	ldr r2, _0803D130 @ =0x04000202
	mov r0, #2
	strh r0, [r2]
	bx lr
	.align 2, 0
_0803D128: .4byte 0x04000006
_0803D12C: .4byte 0x04000040
_0803D130: .4byte 0x04000202
_0803D134: .4byte gUnknown_03004AF0
_0803D138: .4byte gUnknown_030040F0

	arm_func_start sub_0803D13C
sub_0803D13C: @ 0x0803D13C
	ldr r2, _0803D198 @ =0x04000006
	ldrh r3, [r2]
	cmp r3, #0x9d
	bhi _0803D188
	ldr r0, _0803D1A4 @ =gUnknown_03004AF0
	ldr r1, _0803D1AC @ =gUnknown_030040F0
	add r1, r1, r3, lsl #1
	ldr r2, _0803D19C @ =0x04000040
	ldrh r3, [r0]
	cmp r3, #0
	beq _0803D170
	ldrh r3, [r1]
	strh r3, [r2]
_0803D170:
	add r1, r1, #0x140
	ldrh r3, [r0, #2]
	cmp r3, #0
	beq _0803D188
	ldrh r3, [r1]
	strh r3, [r2, #2]
_0803D188:
	ldr r2, _0803D1A0 @ =0x04000202
	mov r0, #2
	strh r0, [r2]
	bx lr
	.align 2, 0
_0803D198: .4byte 0x04000006
_0803D19C: .4byte 0x04000040
_0803D1A0: .4byte 0x04000202
_0803D1A4: .4byte gUnknown_03004AF0
_0803D1A8: .4byte gUnknown_03004AF2
_0803D1AC: .4byte gUnknown_030040F0
_0803D1B0: .4byte gUnknown_03004230

	arm_func_start sub_0803D1B4
sub_0803D1B4: @ 0x0803D1B4
	ldr r2, _0803D284 @ =0x04000006
	ldrh r3, [r2]
	cmp r3, #0x9d
	bhi _0803D274
	ldr r0, _0803D294 @ =gUnknown_03004AF4
	ldr r1, _0803D29C @ =gUnknown_03004370
	add r1, r1, r3, lsl #1
	ldr r2, _0803D288 @ =0x04000014
	ldrh r3, [r0]
	cmp r3, #0
	beq _0803D1E8
	ldrh r3, [r1]
	strh r3, [r2]
_0803D1E8:
	add r1, r1, #0x140
	ldrh r3, [r0, #2]
	cmp r3, #0
	beq _0803D200
	ldrh r3, [r1]
	strh r3, [r2, #4]
_0803D200:
	add r1, r1, #0x140
	ldrh r3, [r0, #4]
	cmp r3, #0
	beq _0803D218
	ldrh r3, [r1]
	strh r3, [r2, #8]
_0803D218:
	ldr r2, _0803D284 @ =0x04000006
	ldrh r3, [r2]
	ldr r0, _0803D298 @ =gUnknown_03004AFA
	ldr r1, _0803D2A0 @ =gUnknown_03004730
	add r1, r1, r3, lsl #1
	ldr r2, _0803D28C @ =0x04000016
	ldrh r3, [r0]
	cmp r3, #0
	beq _0803D244
	ldrh r3, [r1]
	strh r3, [r2]
_0803D244:
	add r1, r1, #0x140
	ldrh r3, [r0, #2]
	cmp r3, #0
	beq _0803D25C
	ldrh r3, [r1]
	strh r3, [r2, #4]
_0803D25C:
	add r1, r1, #0x140
	ldrh r3, [r0, #4]
	cmp r3, #0
	beq _0803D274
	ldrh r3, [r1]
	strh r3, [r2, #8]
_0803D274:
	ldr r2, _0803D290 @ =0x04000202
	mov r0, #2
	strh r0, [r2]
	bx lr
	.align 2, 0
_0803D284: .4byte 0x04000006
_0803D288: .4byte 0x04000014
_0803D28C: .4byte 0x04000016
_0803D290: .4byte 0x04000202
_0803D294: .4byte gUnknown_03004AF4
_0803D298: .4byte gUnknown_03004AFA
_0803D29C: .4byte gUnknown_03004370
_0803D2A0: .4byte gUnknown_03004730

	arm_func_start sub_0803D2A4
sub_0803D2A4: @ 0x0803D2A4
	ldr r2, _0803D318 @ =0x04000006
	ldrh r3, [r2]
	cmp r3, #0x9d
	bhi _0803D308
	ldr r0, _0803D324 @ =gUnknown_03004AF4
	ldr r1, _0803D328 @ =gUnknown_03004370
	add r1, r1, r3, lsl #1
	ldr r2, _0803D31C @ =0x04000014
	ldrh r3, [r0]
	cmp r3, #0
	beq _0803D2D8
	ldrh r3, [r1]
	strh r3, [r2]
_0803D2D8:
	add r1, r1, #0x140
	ldrh r3, [r0, #2]
	cmp r3, #0
	beq _0803D2F0
	ldrh r3, [r1]
	strh r3, [r2, #4]
_0803D2F0:
	add r1, r1, #0x140
	ldrh r3, [r0, #4]
	cmp r3, #0
	beq _0803D308
	ldrh r3, [r1]
	strh r3, [r2, #8]
_0803D308:
	ldr r2, _0803D320 @ =0x04000202
	mov r0, #2
	strh r0, [r2]
	bx lr
	.align 2, 0
_0803D318: .4byte 0x04000006
_0803D31C: .4byte 0x04000014
_0803D320: .4byte 0x04000202
_0803D324: .4byte gUnknown_03004AF4
_0803D328: .4byte gUnknown_03004370

	arm_func_start sub_0803D32C
sub_0803D32C: @ 0x0803D32C
	ldr r2, _0803D360 @ =0x04000006
	ldrh r3, [r2]
	cmp r3, #0x9d
	bhi _0803D350
	ldr r1, _0803D370 @ =gUnknown_030045F0
	add r1, r1, r3, lsl #1
	ldr r2, _0803D364 @ =0x0400001C
	ldrh r3, [r1]
	strh r3, [r2]
_0803D350:
	ldr r2, _0803D368 @ =0x04000202
	mov r0, #2
	strh r0, [r2]
	bx lr
	.align 2, 0
_0803D360: .4byte 0x04000006
_0803D364: .4byte 0x0400001C
_0803D368: .4byte 0x04000202
_0803D36C: .4byte gUnknown_03004AF8
_0803D370: .4byte gUnknown_030045F0

	arm_func_start sub_0803D374
sub_0803D374: @ 0x0803D374
	ldr r2, _0803D3E8 @ =0x04000006
	ldrh r3, [r2]
	cmp r3, #0x9d
	bhi _0803D3D8
	ldr r0, _0803D3F4 @ =gUnknown_03004AFA
	ldr r1, _0803D3F8 @ =gUnknown_03004730
	add r1, r1, r3, lsl #1
	ldr r2, _0803D3EC @ =0x04000016
	ldrh r3, [r0]
	cmp r3, #0
	beq _0803D3A8
	ldrh r3, [r1]
	strh r3, [r2]
_0803D3A8:
	add r1, r1, #0x140
	ldrh r3, [r0, #2]
	cmp r3, #0
	beq _0803D3C0
	ldrh r3, [r1]
	strh r3, [r2, #4]
_0803D3C0:
	add r1, r1, #0x140
	ldrh r3, [r0, #4]
	cmp r3, #0
	beq _0803D3D8
	ldrh r3, [r1]
	strh r3, [r2, #8]
_0803D3D8:
	ldr r2, _0803D3F0 @ =0x04000202
	mov r0, #2
	strh r0, [r2]
	bx lr
	.align 2, 0
_0803D3E8: .4byte 0x04000006
_0803D3EC: .4byte 0x04000016
_0803D3F0: .4byte 0x04000202
_0803D3F4: .4byte gUnknown_03004AFA
_0803D3F8: .4byte gUnknown_03004730

	arm_func_start sub_0803D3FC
sub_0803D3FC: @ 0x0803D3FC
	ldr r2, _0803D45C @ =0x04000006
	ldrh r0, [r2]
	cmp r0, #0x9d
	bhi _0803D44C
	ldr r1, _0803D46C @ =gUnknown_030044B0
	add r1, r1, r0, lsl #1
	ldr r2, _0803D460 @ =0x04000014
	ldrh r3, [r1]
	strh r3, [r2, #4]
	add r1, r1, #0x140
	ldrh r3, [r1]
	strh r3, [r2, #8]
	ldr r1, _0803D470 @ =gUnknown_03004870
	add r1, r1, r0, lsl #1
	ldr r2, _0803D464 @ =0x04000016
	ldrh r3, [r1]
	strh r3, [r2, #4]
	add r1, r1, #0x140
	ldrh r3, [r1]
	strh r3, [r2, #8]
_0803D44C:
	ldr r2, _0803D468 @ =0x04000202
	mov r0, #2
	strh r0, [r2]
	bx lr
	.align 2, 0
_0803D45C: .4byte 0x04000006
_0803D460: .4byte 0x04000014
_0803D464: .4byte 0x04000016
_0803D468: .4byte 0x04000202
_0803D46C: .4byte gUnknown_030044B0
_0803D470: .4byte gUnknown_03004870

	arm_func_start sub_0803D474
sub_0803D474: @ 0x0803D474
	stmdb sp!, {r4}
	ldr r2, _0803D570 @ =0x04000006
	ldrh r3, [r2]
	cmp r3, #0x9d
	bhi _0803D55C
	ldr r0, _0803D584 @ =gUnknown_03004AF0
	ldr r1, _0803D590 @ =gUnknown_030040F0
	add r1, r1, r3, lsl #1
	ldr r2, _0803D574 @ =0x04000040
	ldrh r4, [r0]
	cmp r4, #0
	beq _0803D4AC
	ldrh r4, [r1]
	strh r4, [r2]
_0803D4AC:
	ldr r0, _0803D588 @ =gUnknown_03004AF4
	ldr r1, _0803D594 @ =gUnknown_03004370
	add r1, r1, r3, lsl #1
	ldr r2, _0803D578 @ =0x04000014
	ldrh r4, [r0]
	cmp r4, #0
	beq _0803D4D0
	ldrh r4, [r1]
	strh r4, [r2]
_0803D4D0:
	add r1, r1, #0x140
	ldrh r4, [r0, #2]
	cmp r4, #0
	beq _0803D4E8
	ldrh r4, [r1]
	strh r4, [r2, #4]
_0803D4E8:
	add r1, r1, #0x140
	ldrh r4, [r0, #4]
	cmp r4, #0
	beq _0803D500
	ldrh r4, [r1]
	strh r4, [r2, #8]
_0803D500:
	ldr r2, _0803D570 @ =0x04000006
	ldrh r3, [r2]
	ldr r0, _0803D588 @ =gUnknown_03004AF4
	ldr r1, _0803D594 @ =gUnknown_03004370
	add r1, r1, r3, lsl #1
	ldr r2, _0803D578 @ =0x04000014
	ldrh r3, [r0]
	cmp r3, #0
	beq _0803D52C
	ldrh r3, [r1]
	strh r3, [r2]
_0803D52C:
	add r1, r1, #0x140
	ldrh r3, [r0, #2]
	cmp r3, #0
	beq _0803D544
	ldrh r3, [r1]
	strh r3, [r2, #4]
_0803D544:
	add r1, r1, #0x140
	ldrh r3, [r0, #4]
	cmp r3, #0
	beq _0803D55C
	ldrh r3, [r1]
	strh r3, [r2, #8]
_0803D55C:
	ldr r2, _0803D580 @ =0x04000202
	mov r0, #2
	strh r0, [r2]
	ldm sp!, {r4}
	bx lr
	.align 2, 0
_0803D570: .4byte 0x04000006
_0803D574: .4byte 0x04000040
_0803D578: .4byte 0x04000014
_0803D57C: .4byte 0x04000016
_0803D580: .4byte 0x04000202
_0803D584: .4byte gUnknown_03004AF0
_0803D588: .4byte gUnknown_03004AF4
_0803D58C: .4byte gUnknown_03004AFA
_0803D590: .4byte gUnknown_030040F0
_0803D594: .4byte gUnknown_03004370
_0803D598: .4byte gUnknown_03004730

	.global sub_0803D59C_start
sub_0803D59C_start:

	thumb_func_start sub_0803D59C
sub_0803D59C: @ sub_803D59C
	push {r4, r5, r6, r7}
	movs r6, r0
	ldr r0, _0803D5E8 @ =gSceneObjBuffer
	mov ip, r0
	movs r0, #1
	cmp r0, r6
	bhs _0803D5E2
	movs r7, #0
_0803D5AC:
	adds r3, r0, #0
	adds r5, r3, #1
	cmp r3, #0
	beq _0803D5DC
_0803D5B4:
	lsls r0, r3, #2
	mov r1, ip
	adds r2, r0, r1
	subs r4, r2, #4
	ldrb r1, [r4, #2]
	ldrb r0, [r2, #2]
	cmp r1, r0
	bhi _0803D5CE
	bne _0803D5DC
	ldrsh r1, [r4, r7]
	ldrsh r0, [r2, r7]
	cmp r1, r0
	bge _0803D5DC
_0803D5CE:
	ldr r1, [r2]
	ldr r0, [r4]
	str r0, [r2]
	str r1, [r4]
	subs r3, #1
	cmp r3, #0
	bne _0803D5B4
_0803D5DC:
	movs r0, r5
	cmp r0, r6
	blo _0803D5AC
_0803D5E2:
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_0803D5E8: .4byte gSceneObjBuffer

	.global sub_0803D5EC_start
sub_0803D5EC_start:

	thumb_func_start sub_0803D5EC
sub_0803D5EC: @ sub_0803D5EC
	cmp r0, #0
	bge _0803D5F2
	rsbs r0, r0, #0
_0803D5F2:
	cmp r1, #0
	bge _0803D5F8
	rsbs r1, r1, #0
_0803D5F8:
	cmp r0, r1
	blt _0803D602
	adds r3, r0, #0
	adds r0, r1, #0
	b _0803D604
_0803D602:
	adds r3, r1, #0
_0803D604:
	lsrs r2, r0, #1
	adds r2, r0, r2
	lsrs r0, r3, #5
	subs r0, r3, r0
	lsrs r1, r3, #7
	subs r0, r0, r1
	lsrs r1, r2, #2
	adds r0, r0, r1
	lsrs r2, r2, #6
	adds r0, r0, r2
	bx lr
	.align 2, 0

	.global sub_0803D61C_start
sub_0803D61C_start:

	thumb_func_start sub_0803D61C
sub_0803D61C: @ sub_803D61C
	push {r4, r5, r6, r7}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r3, r1, #0
	ldr r0, _0803D668 @ =gUnknown_03004B0C
	ldrh r2, [r0]
	ldr r0, _0803D66C @ =gUnknown_03004B0E
	ldrh r7, [r0]
	ldr r0, _0803D670 @ =gUnknown_03004B10
	ldrh r6, [r0]
	movs r5, #0x9f
	ldr r0, _0803D674 @ =gSineTable
	mov r8, r0
	movs r1, #0xff
	mov ip, r1
_0803D63C:
	adds r0, r2, #0
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r1, [r0, r1]
	lsrs r1, r1, #3
	rsbs r0, r1, #0
	strh r0, [r4]
	adds r4, #2
	strh r1, [r3]
	adds r3, #2
	adds r2, r2, r6
	subs r5, #1
	cmp r5, #0
	bne _0803D63C
	pop {r7}
	mov r8, r7
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_0803D668: .4byte gUnknown_03004B0C
_0803D66C: .4byte gUnknown_03004B0E
_0803D670: .4byte gUnknown_03004B10
_0803D674: .4byte gSineTable

	thumb_func_start sub_0803D678
sub_0803D678: @ 0x0803D678
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	ldr r4, [sp, #0x30]
	ldr r5, [sp, #0x34]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r1, sp
	movs r2, #0x18
	bl sub_08001B18
	mov r0, sp
	strb r4, [r0, #0xc]
	strh r5, [r0, #0x14]
	cmp r6, #0x1f
	bhi _0803D6AE
	strh r6, [r0, #4]
_0803D6AE:
	mov r0, sp
	mov r1, r8
	strh r1, [r0, #0x10]
	strh r7, [r0, #0x12]
	bl sub_0803D718
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803D6C8
sub_0803D6C8: @ 0x0803D6C8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	ldr r4, [sp, #0x30]
	ldr r5, [sp, #0x34]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r1, sp
	movs r2, #0x18
	bl sub_08001B18
	mov r0, sp
	strb r4, [r0, #0xc]
	strh r5, [r0, #0x14]
	cmp r6, #0x1f
	bhi _0803D6FE
	strh r6, [r0, #4]
_0803D6FE:
	mov r0, sp
	mov r1, r8
	strh r1, [r0, #0x10]
	strh r7, [r0, #0x12]
	bl sub_0803D7CC
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803D718
sub_0803D718: @ 0x0803D718
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4, #0x10]
	ldr r3, _0803D7C0 @ =0x000001FF
	ands r3, r0
	ldrb r5, [r4, #0x12]
	ldrh r7, [r4, #2]
	ldrh r6, [r4, #4]
	movs r0, #0
	mov r8, r0
	ldrh r1, [r4]
	cmp r8, r1
	bhs _0803D7B0
	ldr r0, _0803D7C4 @ =gSceneObjCount
	mov sb, r0
_0803D73E:
	mov r1, sb
	ldrh r2, [r1]
	lsls r2, r2, #3
	ldr r0, _0803D7C8 @ =gUnknown_030038F0
	adds r2, r2, r0
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #0xe
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r2]
	ldrb r1, [r4, #0xb]
	lsls r1, r1, #0xe
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r2, #2]
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #0xa
	orrs r0, r7
	lsls r1, r6, #0xc
	orrs r0, r1
	strh r0, [r2, #4]
	ldrb r1, [r4, #8]
	adds r1, r1, r3
	ldrb r2, [r4, #9]
	adds r2, r2, r5
	ldrb r0, [r4, #6]
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldrb r0, [r4, #7]
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x17
	lsrs r3, r1, #0x17
	lsls r2, r2, #0x10
	movs r0, #0xff
	lsls r0, r0, #0x10
	ands r0, r2
	lsrs r5, r0, #0x10
	movs r1, #0x14
	ldrsh r0, [r4, r1]
	ldrb r1, [r4, #0xc]
	str r3, [sp]
	bl sub_08032DAC
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r3, [sp]
	ldrh r0, [r4]
	cmp r8, r0
	blo _0803D73E
_0803D7B0:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D7C0: .4byte 0x000001FF
_0803D7C4: .4byte gSceneObjCount
_0803D7C8: .4byte gUnknown_030038F0

	thumb_func_start sub_0803D7CC
sub_0803D7CC: @ 0x0803D7CC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4, #0x10]
	ldr r3, _0803D86C @ =0x000001FF
	ands r3, r0
	ldrb r5, [r4, #0x12]
	ldrh r7, [r4, #2]
	ldrh r6, [r4, #4]
	movs r0, #0
	mov r8, r0
	ldrh r0, [r4]
	cmp r8, r0
	bhs _0803D85E
	ldr r0, _0803D870 @ =gMenuObjCount
	mov sb, r0
_0803D7F2:
	mov r0, sb
	ldrh r2, [r0]
	lsls r2, r2, #3
	ldr r0, _0803D874 @ =gMenuObjBuffer
	adds r2, r2, r0
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #0xe
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r2]
	ldrb r1, [r4, #0xb]
	lsls r1, r1, #0xe
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r2, #2]
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #0xa
	orrs r0, r7
	lsls r1, r6, #0xc
	orrs r0, r1
	strh r0, [r2, #4]
	ldrb r1, [r4, #8]
	adds r1, r1, r3
	ldrb r2, [r4, #9]
	adds r2, r2, r5
	ldrb r0, [r4, #6]
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldrb r0, [r4, #7]
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x17
	lsrs r3, r1, #0x17
	lsls r2, r2, #0x10
	movs r0, #0xff
	lsls r0, r0, #0x10
	ands r0, r2
	lsrs r5, r0, #0x10
	str r3, [sp]
	bl sub_08032DF4
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r3, [sp]
	ldrh r0, [r4]
	cmp r8, r0
	blo _0803D7F2
_0803D85E:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D86C: .4byte 0x000001FF
_0803D870: .4byte gMenuObjCount
_0803D874: .4byte gMenuObjBuffer

	thumb_func_start sub_0803D878
sub_0803D878: @ 0x0803D878
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	mov ip, r0
	ldr r0, [sp, #0x54]
	ldr r4, [sp, #0x58]
	ldr r5, [sp, #0x5c]
	ldr r6, [sp, #0x60]
	ldr r7, [sp, #0x64]
	mov r8, r7
	ldr r7, [sp, #0x68]
	mov sb, r7
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x18]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x1c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0x20]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0x24]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	str r6, [sp, #0x28]
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x2c]
	mov r1, sb
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	add r4, sp, #4
	adds r0, r4, #0
	mov r1, ip
	ldr r2, [sp, #0x20]
	bl sub_08002634
	adds r5, r4, #0
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	movs r6, #0
	ldr r4, [sp, #0x1c]
	cmp r6, r4
	bhs _0803D98E
	mov r3, sp
	ldr r0, _0803D918 @ =gMenuObjCount
	mov sb, r0
_0803D8F0:
	ldrh r0, [r3]
	cmp r0, #0
	bne _0803D92E
	ldr r0, [sp, #0x1c]
	subs r0, #1
	cmp r6, r0
	beq _0803D92E
	mov r1, sl
	cmp r1, #1
	bne _0803D91C
	ldrh r0, [r5]
	ldr r4, [sp, #0x20]
	cmp r0, r4
	bne _0803D92E
	lsls r0, r7, #0x10
	movs r7, #0xe0
	lsls r7, r7, #0xb
	adds r0, r0, r7
	lsrs r7, r0, #0x10
	b _0803D980
	.align 2, 0
_0803D918: .4byte gMenuObjCount
_0803D91C:
	mov r0, sl
	cmp r0, #1
	bgt _0803D92E
	cmp r0, #0
	bne _0803D92E
	ldrh r0, [r5]
	ldr r1, [sp, #0x20]
	cmp r0, r1
	beq _0803D980
_0803D92E:
	mov r4, sb
	ldrh r2, [r4]
	lsls r2, r2, #3
	ldr r0, _0803D9A0 @ =gMenuObjBuffer
	adds r2, r2, r0
	ldr r1, [sp, #0x18]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xff
	ands r0, r1
	ldr r4, [sp, #0x28]
	lsls r1, r4, #0xe
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0803D9A4 @ =0x000001FF
	adds r1, r0, #0
	lsls r4, r7, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	ands r0, r1
	ldr r7, [sp, #0x2c]
	lsls r1, r7, #0xe
	orrs r0, r1
	strh r0, [r2, #2]
	mov r0, r8
	lsls r1, r0, #0xa
	ldrh r0, [r5]
	orrs r1, r0
	ldr r7, [sp, #0x24]
	lsls r0, r7, #0xc
	orrs r1, r0
	strh r1, [r2, #4]
	str r3, [sp, #0x30]
	bl sub_08032DF4
	adds r4, #7
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	movs r0, #1
	ldr r3, [sp, #0x30]
	strh r0, [r3]
_0803D980:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r5, #2
	ldr r0, [sp, #0x1c]
	cmp r6, r0
	blo _0803D8F0
_0803D98E:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D9A0: .4byte gMenuObjBuffer
_0803D9A4: .4byte 0x000001FF

	thumb_func_start sub_0803D9A8
sub_0803D9A8: @ 0x0803D9A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sl, r0
	ldr r0, [sp, #0x38]
	ldr r4, [sp, #0x3c]
	ldr r5, [sp, #0x40]
	ldr r6, [sp, #0x44]
	ldr r7, [sp, #0x48]
	mov r8, r7
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0xc]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0x10]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	str r6, [sp, #0x14]
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	movs r5, #0
	cmp r5, sb
	bhs _0803DA8E
	mov r6, sp
_0803DA00:
	mov r1, sl
	adds r0, r1, r5
	ldrb r1, [r0]
	mov r0, sl
	adds r0, #3
	adds r0, r0, r5
	lsls r1, r1, #3
	ldrb r0, [r0]
	adds r3, r1, r0
	ldrh r0, [r6]
	cmp r0, #0
	bne _0803DA30
	mov r0, sb
	subs r0, #1
	cmp r5, r0
	beq _0803DA30
	cmp r3, #0
	bne _0803DA30
	lsls r0, r7, #0x10
	movs r4, #0x80
	lsls r4, r4, #0xc
	adds r0, r0, r4
	lsrs r7, r0, #0x10
	b _0803DA84
_0803DA30:
	ldr r1, [sp, #8]
	adds r0, r3, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r4, _0803DAA0 @ =gMenuObjCount
	ldrh r2, [r4]
	lsls r2, r2, #3
	ldr r0, _0803DAA4 @ =gMenuObjBuffer
	adds r2, r2, r0
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xff
	ands r0, r1
	ldr r4, [sp, #0x10]
	lsls r1, r4, #0xe
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0803DAA8 @ =0x000001FF
	adds r1, r0, #0
	lsls r4, r7, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	ands r0, r1
	ldr r7, [sp, #0x14]
	lsls r1, r7, #0xe
	orrs r0, r1
	strh r0, [r2, #2]
	mov r1, r8
	lsls r0, r1, #0xa
	orrs r3, r0
	ldr r7, [sp, #0xc]
	lsls r0, r7, #0xc
	orrs r3, r0
	strh r3, [r2, #4]
	bl sub_08032DF4
	adds r4, #8
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	movs r0, #1
	strh r0, [r6]
_0803DA84:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, sb
	blo _0803DA00
_0803DA8E:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803DAA0: .4byte gMenuObjCount
_0803DAA4: .4byte gMenuObjBuffer
_0803DAA8: .4byte 0x000001FF

	thumb_func_start sub_0803DAAC
sub_0803DAAC: @ 0x0803DAAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov ip, r0
	ldr r0, [sp, #0x4c]
	ldr r4, [sp, #0x50]
	ldr r5, [sp, #0x54]
	ldr r6, [sp, #0x58]
	ldr r7, [sp, #0x5c]
	mov r8, r7
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x18]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0x1c]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0x20]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	str r6, [sp, #0x24]
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x28]
	add r4, sp, #4
	adds r0, r4, #0
	mov r1, ip
	mov r2, sl
	bl sub_08002634
	adds r6, r4, #0
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	movs r5, #0
	cmp r5, sb
	bhs _0803DB9C
	mov r8, sp
_0803DB12:
	mov r1, r8
	ldrh r0, [r1]
	cmp r0, #0
	bne _0803DB34
	mov r0, sb
	subs r0, #1
	cmp r5, r0
	beq _0803DB34
	ldrh r0, [r6]
	cmp r0, sl
	bne _0803DB34
	lsls r0, r7, #0x10
	movs r4, #0x80
	lsls r4, r4, #0xc
	adds r0, r0, r4
	lsrs r7, r0, #0x10
	b _0803DB90
_0803DB34:
	ldrh r2, [r6]
	mov r0, sl
	subs r2, r2, r0
	lsls r2, r2, #3
	add r2, sl
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _0803DBAC @ =gMenuObjCount
	ldrh r3, [r1]
	lsls r3, r3, #3
	ldr r0, _0803DBB0 @ =gMenuObjBuffer
	adds r3, r3, r0
	ldr r4, [sp, #0x18]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xff
	ands r0, r1
	ldr r4, [sp, #0x20]
	lsls r1, r4, #0xe
	orrs r0, r1
	strh r0, [r3]
	ldr r0, _0803DBB4 @ =0x000001FF
	adds r1, r0, #0
	lsls r4, r7, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	ands r0, r1
	ldr r7, [sp, #0x24]
	lsls r1, r7, #0xe
	orrs r0, r1
	strh r0, [r3, #2]
	ldr r1, [sp, #0x28]
	lsls r0, r1, #0xa
	orrs r2, r0
	ldr r7, [sp, #0x1c]
	lsls r0, r7, #0xc
	orrs r2, r0
	strh r2, [r3, #4]
	bl sub_08032DF4
	adds r4, #8
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	movs r0, #1
	mov r1, r8
	strh r0, [r1]
_0803DB90:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r6, #2
	cmp r5, sb
	blo _0803DB12
_0803DB9C:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803DBAC: .4byte gMenuObjCount
_0803DBB0: .4byte gMenuObjBuffer
_0803DBB4: .4byte 0x000001FF

	thumb_func_start sub_0803DBB8
sub_0803DBB8: @ 0x0803DBB8
	push {r4, r5, lr}
	bl sub_0803E304
	ldr r5, _0803DC0C @ =gUnknown_02004100
	ldrb r0, [r5]
	cmp r0, #0xd
	bne _0803DBF2
	ldr r3, _0803DC10 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r1, _0803DC14 @ =0x04000200
	ldrh r0, [r1]
	movs r4, #1
	orrs r0, r4
	strh r0, [r1]
	ldr r2, _0803DC18 @ =0x04000004
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	strh r4, [r3]
	bl sub_080037D8
	bl snd_vsync
	bl snd_main
	ldr r0, _0803DC1C @ =gUnknown_03004B00
	strh r4, [r0]
_0803DBF2:
	bl clear_gfx
	bl sub_0803ECC0
	ldrb r0, [r5]
	cmp r0, #0xd
	bhi _0803DC90
	lsls r0, r0, #2
	ldr r1, _0803DC20 @ =_0803DC24
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803DC0C: .4byte gUnknown_02004100
_0803DC10: .4byte 0x04000208
_0803DC14: .4byte 0x04000200
_0803DC18: .4byte 0x04000004
_0803DC1C: .4byte gUnknown_03004B00
_0803DC20: .4byte _0803DC24
_0803DC24: @ jump table
	.4byte _0803DC5C @ case 0
	.4byte _0803DC5C @ case 1
	.4byte _0803DC5C @ case 2
	.4byte _0803DC5C @ case 3
	.4byte _0803DC5C @ case 4
	.4byte _0803DC74 @ case 5
	.4byte _0803DC7A @ case 6
	.4byte _0803DC80 @ case 7
	.4byte _0803DC80 @ case 8
	.4byte _0803DC80 @ case 9
	.4byte _0803DC80 @ case 10
	.4byte _0803DC86 @ case 11
	.4byte _0803DC86 @ case 12
	.4byte _0803DC8C @ case 13
_0803DC5C:
	bl sub_0803DCE4
	ldr r1, _0803DC70 @ =gUnknown_020051E8
	ldrb r0, [r1, #2]
	cmp r0, #0
	bne _0803DC90
	movs r0, #1
	strb r0, [r1, #3]
	b _0803DC90
	.align 2, 0
_0803DC70: .4byte gUnknown_020051E8
_0803DC74:
	bl sub_0803DD1C
	b _0803DC90
_0803DC7A:
	bl sub_0803DD3C
	b _0803DC90
_0803DC80:
	bl sub_0803DD5C
	b _0803DC90
_0803DC86:
	bl sub_0803DDD8
	b _0803DC90
_0803DC8C:
	bl sub_0803DE08
_0803DC90:
	ldr r0, _0803DCCC @ =gUnknown_02004100
	ldrb r0, [r0]
	cmp r0, #3
	beq _0803DC9C
	cmp r0, #5
	bne _0803DCA0
_0803DC9C:
	bl sub_0803F36C
_0803DCA0:
	ldr r1, _0803DCD0 @ =gUnknown_03004B00
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0803DCD4 @ =gUnknown_0200F920
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0803DCC4
	ldr r1, _0803DCD8 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r0, _0803DCDC @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _0803DCE0 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
_0803DCC4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803DCCC: .4byte gUnknown_02004100
_0803DCD0: .4byte gUnknown_03004B00
_0803DCD4: .4byte gUnknown_0200F920
_0803DCD8: .4byte 0x040000B0
_0803DCDC: .4byte 0x0000C5FF
_0803DCE0: .4byte 0x00007FFF

	thumb_func_start sub_0803DCE4
sub_0803DCE4: @ 0x0803DCE4
	push {lr}
	ldr r1, _0803DD10 @ =gUnknown_0200F920
	movs r0, #0
	strb r0, [r1]
	bl sub_0804BD84
	bl sub_08049DC4
	bl sub_08046D90
	ldr r0, _0803DD14 @ =gUnknown_02004100
	ldrb r0, [r0]
	cmp r0, #4
	bne _0803DD06
	ldr r0, _0803DD18 @ =gUnknown_020225DC
	bl sub_0803E738
_0803DD06:
	bl sub_0803DE38
	pop {r0}
	bx r0
	.align 2, 0
_0803DD10: .4byte gUnknown_0200F920
_0803DD14: .4byte gUnknown_02004100
_0803DD18: .4byte gUnknown_020225DC

	thumb_func_start sub_0803DD1C
sub_0803DD1C: @ 0x0803DD1C
	push {lr}
	ldr r1, _0803DD38 @ =gUnknown_0200F920
	movs r0, #1
	strb r0, [r1]
	bl sub_0804C1E8
	bl sub_08049DC4
	bl sub_08046D90
	bl sub_0803DE38
	pop {r0}
	bx r0
	.align 2, 0
_0803DD38: .4byte gUnknown_0200F920

	thumb_func_start sub_0803DD3C
sub_0803DD3C: @ 0x0803DD3C
	push {lr}
	ldr r1, _0803DD58 @ =gUnknown_0200F920
	movs r0, #2
	strb r0, [r1]
	bl sub_0804C2E0
	bl sub_08049DC4
	bl sub_08046D90
	bl sub_0803DE38
	pop {r0}
	bx r0
	.align 2, 0
_0803DD58: .4byte gUnknown_0200F920

	thumb_func_start sub_0803DD5C
sub_0803DD5C: @ 0x0803DD5C
	push {r4, lr}
	ldr r0, _0803DD80 @ =gUnknown_0200F920
	movs r1, #3
	strb r1, [r0]
	bl sub_0804C3E0
	bl sub_08049DC4
	bl sub_08046D90
	ldr r0, _0803DD84 @ =gUnknown_02004100
	ldrb r0, [r0]
	cmp r0, #9
	beq _0803DD88
	cmp r0, #0xa
	beq _0803DDB4
	b _0803DDC6
	.align 2, 0
_0803DD80: .4byte gUnknown_0200F920
_0803DD84: .4byte gUnknown_02004100
_0803DD88:
	ldr r4, _0803DDA8 @ =gSomeBlend
	ldr r0, _0803DDAC @ =0x000041CC
	adds r1, r4, r0
	movs r0, #0x1d
	strh r0, [r1]
	movs r0, #0
	movs r1, #5
	bl sub_08053EEC
	ldr r1, _0803DDB0 @ =0x000041DA
	adds r4, r4, r1
	ldrb r0, [r4]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
	b _0803DDC6
	.align 2, 0
_0803DDA8: .4byte gSomeBlend
_0803DDAC: .4byte 0x000041CC
_0803DDB0: .4byte 0x000041DA
_0803DDB4:
	ldr r0, _0803DDD0 @ =gSomeBlend
	ldr r1, _0803DDD4 @ =0x000041CC
	adds r0, r0, r1
	movs r1, #0x20
	strh r1, [r0]
	movs r0, #0
	movs r1, #4
	bl sub_08053EEC
_0803DDC6:
	bl sub_0803DE38
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DDD0: .4byte gSomeBlend
_0803DDD4: .4byte 0x000041CC

	thumb_func_start sub_0803DDD8
sub_0803DDD8: @ 0x0803DDD8
	push {lr}
	ldr r2, _0803DE00 @ =gUnknown_0200F920
	ldr r0, _0803DE04 @ =gUnknown_02004100
	ldrb r0, [r0]
	movs r1, #5
	cmp r0, #0xb
	bne _0803DDE8
	movs r1, #4
_0803DDE8:
	strb r1, [r2]
	bl sub_0804C408
	bl sub_08049DC4
	bl sub_08046D90
	bl sub_0803DE38
	pop {r0}
	bx r0
	.align 2, 0
_0803DE00: .4byte gUnknown_0200F920
_0803DE04: .4byte gUnknown_02004100

	thumb_func_start sub_0803DE08
sub_0803DE08: @ 0x0803DE08
	push {lr}
	ldr r1, _0803DE30 @ =gUnknown_0200F920
	movs r0, #6
	strb r0, [r1]
	bl sub_0804C4B4
	bl sub_08049DC4
	bl sub_08046D90
	bl sub_0803DE38
	ldr r0, _0803DE34 @ =gUnknown_020051E8
	ldrb r0, [r0]
	cmp r0, #4
	bne _0803DE2C
	bl sub_0805614C
_0803DE2C:
	pop {r0}
	bx r0
	.align 2, 0
_0803DE30: .4byte gUnknown_0200F920
_0803DE34: .4byte gUnknown_020051E8

	thumb_func_start sub_0803DE38
sub_0803DE38: @ 0x0803DE38
	push {r4, r5, lr}
	sub sp, #4
	ldr r1, _0803DE7C @ =0x04000208
	movs r0, #0
	strh r0, [r1]
	mov r1, sp
	ldr r2, _0803DE80 @ =0x04000200
	ldrh r0, [r2]
	strh r0, [r1]
	mov r3, sp
	adds r3, #2
	ldr r0, _0803DE84 @ =0x04000006
	ldrh r0, [r0]
	strh r0, [r3]
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _0803DE88 @ =0x04000004
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0803DE8C @ =gUnknown_02004100
	ldrb r0, [r0]
	adds r5, r3, #0
	cmp r0, #0
	blt _0803DE98
	cmp r0, #6
	bgt _0803DE90
	movs r0, #0xbe
	bl sub_0803E46C
	b _0803DE98
	.align 2, 0
_0803DE7C: .4byte 0x04000208
_0803DE80: .4byte 0x04000200
_0803DE84: .4byte 0x04000006
_0803DE88: .4byte 0x04000004
_0803DE8C: .4byte gUnknown_02004100
_0803DE90:
	cmp r0, #8
	bgt _0803DE98
	bl sub_0803E4B8
_0803DE98:
	ldr r0, _0803DEBC @ =0x04000208
	movs r1, #1
	strh r1, [r0]
	bl sub_080401BC
	bl sub_0803E0EC
	bl sub_0803DF48
	bl sub_0803E16C
	ldr r0, _0803DEC0 @ =gUnknown_0200F920
	ldrb r0, [r0]
	cmp r0, #3
	beq _0803DEC4
	cmp r0, #4
	beq _0803DECA
	b _0803DED0
	.align 2, 0
_0803DEBC: .4byte 0x04000208
_0803DEC0: .4byte gUnknown_0200F920
_0803DEC4:
	bl sub_0800377C
	b _0803DED0
_0803DECA:
	movs r0, #0
	bl sub_080038A4
_0803DED0:
	bl sub_080037E4
	ldr r4, _0803DF2C @ =0x04000208
	movs r0, #0
	strh r0, [r4]
	ldr r3, _0803DF30 @ =0x04000200
	ldrh r1, [r3]
	ldr r0, _0803DF34 @ =0x0000FFFC
	ands r0, r1
	strh r0, [r3]
	ldr r2, _0803DF38 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _0803DF3C @ =0x0000FFE7
	ands r0, r1
	strh r0, [r2]
	mov r0, sp
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0803DF0A
	ldrh r1, [r3]
	ldr r0, _0803DF40 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r3]
	ldrh r1, [r2]
	ldr r0, _0803DF44 @ =0x0000FFDF
	ands r0, r1
	strh r0, [r2]
_0803DF0A:
	ldrh r1, [r2]
	movs r0, #0xff
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r5]
	lsls r0, r0, #8
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r4]
	bl sub_080018E4
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803DF2C: .4byte 0x04000208
_0803DF30: .4byte 0x04000200
_0803DF34: .4byte 0x0000FFFC
_0803DF38: .4byte 0x04000004
_0803DF3C: .4byte 0x0000FFE7
_0803DF40: .4byte 0x0000FFFB
_0803DF44: .4byte 0x0000FFDF

	thumb_func_start sub_0803DF48
sub_0803DF48: @ 0x0803DF48
	push {r4, lr}
	ldr r0, _0803DF8C @ =gUnknown_0200F920
	ldr r1, _0803DF90 @ =0x00006478
	adds r2, r0, r1
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0803DF74
	adds r4, r2, #0
_0803DF60:
	bx r0