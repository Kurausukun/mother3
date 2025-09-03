	.syntax unified
sub_080064A8:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
	ldr r0, _08006568
	ldrh r0, [r0]
	cmp r0, #0
	beq _080064DA
	ldr r0, _0800656C
	ldr r1, _08006570
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0x1f
	bne _080064CE
	b _080066A4
_080064CE:
	cmp r0, #0x23
	bne _080064D4
	b _080066A4
_080064D4:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
_080064DA:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _080065CA
	ldr r3, _08006574
	ldr r0, _08006578
	mov sb, r0
	ldr r2, _0800657C
	adds r0, r3, #0
	movs r1, #0x20
	bl sub_08001A38
	ldr r4, _08006580
	mov r0, sb
	movs r1, #0x80
	adds r2, r4, #0
	bl sub_08001A38
	movs r0, #0xe0
	lsls r0, r0, #2
	add r0, sb
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r2, r4, #0
	bl sub_08001A38
	mov r0, sb
	adds r0, #0x80
	movs r1, #0xc0
	lsls r1, r1, #2
	bl sub_080019DC
	ldr r2, _08006584
	ldr r1, _08006588
	adds r0, r2, r1
	ldr r5, [r0]
	adds r1, #8
	adds r0, r2, r1
	ldr r3, [r0]
	subs r1, #4
	adds r0, r2, r1
	ldr r0, [r0]
	mov r8, r0
	adds r1, #8
	adds r0, r2, r1
	ldr r0, [r0]
	mov sb, r0
	adds r1, #6
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08006590
	ldr r1, _0800658C
	adds r0, r2, r1
	ldrb r6, [r0]
	subs r1, #1
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #6
	adds r5, r5, r0
	lsls r0, r1, #0xa
	adds r3, r3, r0
	lsls r1, r1, #6
	add r8, r1
	add sb, r1
	b _08006592
	.align 2, 0
_08006568: .4byte gUnknown_02000000
_0800656C: .4byte gGame
_08006570: .4byte 0x000067AC
_08006574: .4byte 0x06008020
_08006578: .4byte 0x06006000
_0800657C: .4byte 0x77777777
_08006580: .4byte 0xC001C001
_08006584: .4byte gSomeBlend
_08006588: .4byte 0x00011D04
_0800658C: .4byte 0x00011D15
_08006590:
	movs r6, #4
_08006592:
	movs r4, #0
	cmp r4, r6
	bhs _080065BC
	movs r7, #0xf0
	lsls r7, r7, #2
_0800659C:
	adds r0, r5, #0
	adds r1, r3, #0
	adds r2, r7, #0
	str r3, [sp, #4]
	bl sub_08001A14
	adds r5, r5, r7
	ldr r3, [sp, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r3, r3, r0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _0800659C
_080065BC:
	mov r0, r8
	mov r1, sb
	movs r2, #0x1e
	adds r3, r6, #0
	bl sub_08007318
	b _080066A4
_080065CA:
	ldr r3, _08006650
	ldr r1, _08006654
	mov sb, r1
	ldr r2, _08006658
	adds r0, r3, #0
	movs r1, #0x20
	bl sub_08001B54
	ldr r4, _0800665C
	mov r0, sb
	movs r1, #0x80
	adds r2, r4, #0
	bl sub_08001B54
	movs r0, #0xe0
	lsls r0, r0, #2
	add r0, sb
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r2, r4, #0
	bl sub_08001B54
	mov r0, sb
	adds r0, #0x80
	movs r1, #0xc0
	lsls r1, r1, #2
	bl memclear
	ldr r2, _08006660
	ldr r1, _08006664
	adds r0, r2, r1
	ldr r5, [r0]
	adds r1, #8
	adds r0, r2, r1
	ldr r3, [r0]
	subs r1, #4
	adds r0, r2, r1
	ldr r0, [r0]
	mov r8, r0
	adds r1, #8
	adds r0, r2, r1
	ldr r0, [r0]
	mov sb, r0
	adds r1, #6
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800666C
	ldr r1, _08006668
	adds r0, r2, r1
	ldrb r6, [r0]
	subs r1, #1
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #6
	adds r5, r5, r0
	lsls r0, r1, #0xa
	adds r3, r3, r0
	lsls r1, r1, #6
	add r8, r1
	add sb, r1
	b _0800666E
	.align 2, 0
_08006650: .4byte 0x06008020
_08006654: .4byte 0x06006000
_08006658: .4byte 0x77777777
_0800665C: .4byte 0xC001C001
_08006660: .4byte gSomeBlend
_08006664: .4byte 0x00011D04
_08006668: .4byte 0x00011D15
_0800666C:
	movs r6, #4
_0800666E:
	movs r4, #0
	cmp r4, r6
	bhs _08006698
	movs r7, #0xf0
	lsls r7, r7, #2
_08006678:
	adds r0, r5, #0
	adds r1, r3, #0
	adds r2, r7, #0
	str r3, [sp, #4]
	bl sub_08001B18
	adds r5, r5, r7
	ldr r3, [sp, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r3, r3, r0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _08006678
_08006698:
	mov r0, r8
	mov r1, sb
	movs r2, #0x1e
	adds r3, r6, #0
	bl sub_08007358
_080066A4:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
