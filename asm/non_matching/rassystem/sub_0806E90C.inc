	.syntax unified
sub_0806E90C:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x49
	ldrb r4, [r5]
	movs r3, #0xfe
	ands r3, r4
	strb r3, [r5]
	adds r0, #0x20
	bl sub_08088E4C__15Struct_09F85088PPUcP7Setting
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806E934
	ldrb r0, [r5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r5]
	movs r0, #1
	b _0806E936
_0806E934:
	movs r0, #0
_0806E936:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
