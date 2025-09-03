	.syntax unified
sub_0802FF90:
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
	ldr r0, _0803004C
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
	ldr r1, _080300C4
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
	ldr r1, _080300C8
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
	.syntax divided
