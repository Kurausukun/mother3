	.syntax unified
sub_08036A90:
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
	ldr r0, _08036B2C
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	ldr r0, [r3]
	ldr r1, _08036B30
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
	.syntax divided
