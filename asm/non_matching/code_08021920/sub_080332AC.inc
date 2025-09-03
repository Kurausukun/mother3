	.syntax unified
sub_080332AC:
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
	ldr r0, _08033370
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
	.syntax divided
