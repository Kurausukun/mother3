	.syntax unified
heal_hp:
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
	.syntax divided
