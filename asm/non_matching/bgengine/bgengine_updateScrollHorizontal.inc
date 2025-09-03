	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	bl sub_0806BC3C
	movs r7, #0
	ldr r0, [r6, #0x2c]
	cmp r7, r0
	bge _0806BBE4
	ldr r5, _0806BBB4
	adds r4, r6, #0
	adds r4, #0x30
_0806BB60:
	ldrh r1, [r4, #0x34]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806BB8E
	ldrh r0, [r4]
	lsls r0, r0, #0xb
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r2, r0, r1
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #8]
	lsls r0, r0, #1
	cmp r0, #0
	ble _0806BB8E
	str r1, [r5]
	str r2, [r5, #4]
	asrs r0, r0, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #8]
_0806BB8E:
	ldrh r0, [r4, #0x34]
	ldr r2, _0806BBB8
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4, #0x34]
	ldrh r0, [r4, #0x16]
	lsls r0, r0, #5
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r3, r0, r1
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0806BBBC
	ldr r1, [r4, #0x1c]
	lsls r1, r1, #4
	ldr r2, [r4, #0x20]
	bl sub_0806A67C__11BattleFaderiPUsT2
	b _0806BBDA
	.align 2, 0
_0806BBB4: .4byte 0x040000D4
_0806BBB8: .4byte 0x0000FFFD
_0806BBBC:
	adds r0, r4, #0
	adds r0, #0x18
	ldr r1, [r0, #8]
	ldr r0, [r0, #4]
	lsls r0, r0, #5
	cmp r0, #0
	ble _0806BBDA
	str r1, [r5]
	str r3, [r5, #4]
	asrs r0, r0, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #8]
_0806BBDA:
	adds r4, #0x38
	adds r7, #1
	ldr r0, [r6, #0x2c]
	cmp r7, r0
	blt _0806BB60
_0806BBE4:
	ldr r4, [r6, #0x24]
	cmp r4, #0
	beq _0806BC16
	adds r2, r6, #0
	adds r2, #0x20
	ldrb r1, [r2]
	lsrs r1, r1, #3
	ldrb r0, [r2, #1]
	lsrs r0, r0, #3
	lsls r0, r0, #5
	orrs r1, r0
	ldrb r0, [r2, #2]
	lsrs r0, r0, #3
	lsls r0, r0, #0xa
	orrs r1, r0
	mov r0, sp
	strh r1, [r0]
	movs r3, #0xa0
	lsls r3, r3, #0x13
	adds r0, r4, #0
	movs r1, #1
	mov r2, sp
	bl sub_0806A67C__11BattleFaderiPUsT2
	b _0806BC34
_0806BC16:
	adds r2, r6, #0
	adds r2, #0x20
	ldrb r1, [r2]
	lsrs r1, r1, #3
	ldrb r0, [r2, #1]
	lsrs r0, r0, #3
	lsls r0, r0, #5
	orrs r1, r0
	ldrb r0, [r2, #2]
	lsrs r0, r0, #3
	lsls r0, r0, #0xa
	orrs r1, r0
	movs r0, #0xa0
	lsls r0, r0, #0x13
	strh r1, [r0]
_0806BC34:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
