	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	adds r0, r5, #0
	bl sub_08054F34
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08055152
	b _08055178
_0805514E:
	movs r0, #1
	b _0805517A
_08055152:
	movs r4, #0
	adds r7, r6, #0
	adds r7, #0x3c
_08055158:
	adds r0, r7, r4
	ldrb r0, [r0]
	cmp r0, r5
	bne _0805516E
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08055180
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805514E
_0805516E:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _08055158
_08055178:
	movs r0, #0
_0805517A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
