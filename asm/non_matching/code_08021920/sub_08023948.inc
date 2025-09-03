	.syntax unified
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
	ldr r0, _080239C4
	ldr r1, _080239C8
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0802396C
	b _08023E26
_0802396C:
	ldr r2, _080239CC
	ldr r3, _080239D0
	adds r0, r2, r3
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802399A
	ldr r1, _080239D4
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
	ldr r2, _080239C4
	ldr r0, _080239D8
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
	ldr r0, _08023AF4
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
	ldr r2, _08023AF8
	adds r1, r0, r2
	asrs r1, r1, #0x10
	lsls r5, r5, #0x10
	str r5, [sp, #0x10]
	asrs r5, r5, #0x10
	mov sb, r5
	ldr r0, _08023AFC
	ldr r3, [sp, #0x10]
	adds r0, r3, r0
	str r0, [sp, #0x18]
	asrs r2, r0, #0x10
	str r2, [sp, #0x14]
	movs r6, #1
	str r6, [sp]
	movs r5, #0
	str r5, [sp, #4]
	ldr r0, _08023B00
	movs r3, #0x20
	bl sub_0803D678
	ldr r0, _08023B00
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
	ldr r0, _08023B00
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
	ldr r0, _08023B04
	adds r1, r4, #0
	mov r3, sl
	asrs r2, r3, #0x10
	movs r3, #0x20
	bl sub_0803D678
	mov r0, sb
	str r0, [sp]
	mov r1, r8
	str r1, [sp, #4]
	ldr r0, _08023B04
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
	ldr r0, _08023C1C
	cmp r1, r0
	bls _08023B10
	b _08023C60
_08023B10:
	ldr r0, _08023C20
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
	ldr r3, _08023C24
	adds r1, r2, r3
	asrs r1, r1, #0x10
	lsls r5, r5, #0x10
	str r5, [sp, #0x24]
	asrs r5, r5, #0x10
	mov sb, r5
	ldr r2, _08023C28
	ldr r0, [sp, #0x24]
	adds r2, r0, r2
	str r2, [sp, #0x2c]
	asrs r3, r2, #0x10
	str r3, [sp, #0x28]
	movs r6, #1
	str r6, [sp]
	movs r5, #0
	str r5, [sp, #4]
	ldr r0, _08023C2C
	adds r2, r3, #0
	movs r3, #0x20
	bl sub_0803D678
	ldr r0, _08023C2C
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
	ldr r0, _08023C2C
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
	ldr r3, _08023C2C
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
	ldr r0, _08023C54
	lsls r1, r4, #0x10
	ldr r2, _08023C58
	adds r1, r1, r2
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	ldr r3, _08023C5C
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
	ldr r0, _08023C7C
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
	ldr r0, _08023C88
	cmp r1, r0
	beq _08023CA0
	b _08023CAC
	.align 2, 0
_08023C88: .4byte 0x0000028A
_08023C8C:
	ldr r0, _08023C90
	b _08023CB8
	.align 2, 0
_08023C90: .4byte gUnknown_020042C2
_08023C94:
	ldr r1, _08023C9C
	str r1, [sp, #8]
	b _08023CBA
	.align 2, 0
_08023C9C: .4byte gUnknown_020041EA
_08023CA0:
	ldr r2, _08023CA8
	str r2, [sp, #8]
	b _08023CBA
	.align 2, 0
_08023CA8: .4byte gUnknown_0200417E
_08023CAC:
	ldr r3, _08023DD4
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
	ldr r2, _08023DD8
	adds r1, r0, r2
	asrs r1, r1, #0x10
	lsls r5, r5, #0x10
	str r5, [sp, #0x40]
	asrs r5, r5, #0x10
	mov sb, r5
	ldr r0, _08023DDC
	ldr r3, [sp, #0x40]
	adds r0, r3, r0
	str r0, [sp, #0x48]
	asrs r2, r0, #0x10
	str r2, [sp, #0x44]
	movs r6, #1
	str r6, [sp]
	movs r5, #0
	str r5, [sp, #4]
	ldr r0, _08023DE0
	movs r3, #0x20
	bl sub_0803D678
	ldr r0, _08023DE0
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
	ldr r0, _08023DE0
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
	ldr r0, _08023DE0
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
	ldr r0, _08023E38
	lsls r1, r4, #0x10
	ldr r2, _08023E3C
	adds r1, r1, r2
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	ldr r3, _08023E40
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
	.syntax divided
