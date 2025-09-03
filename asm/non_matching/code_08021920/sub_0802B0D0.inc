	.syntax unified
sub_0802B0D0:
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
	ldr r1, _0802B0F4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802B0F4: .4byte _0802B0F8
_0802B0F8:
	.4byte _0802B10C
	.4byte _0802B11E
	.4byte _0802B130
	.4byte _0802B142
	.4byte _0802B154
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
	.syntax divided
