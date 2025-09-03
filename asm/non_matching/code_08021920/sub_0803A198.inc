	.syntax unified
sub_0803A198:
	push {lr}
	ldrh r2, [r1, #4]
	cmp r2, #1
	beq _0803A1B6
	cmp r2, #1
	bgt _0803A1AA
	cmp r2, #0
	beq _0803A1B0
	b _0803A214
_0803A1AA:
	cmp r2, #2
	beq _0803A1E8
	b _0803A214
_0803A1B0:
	bl sub_0803A224
	b _0803A214
_0803A1B6:
	movs r0, #0xd2
	bl play_sound
	ldr r1, _0803A1DC
	ldr r0, _0803A1E0
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1]
	ldr r3, _0803A1E4
	ldrb r2, [r3, #8]
	lsls r0, r2, #0x1f
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	movs r0, #2
	rsbs r0, r0, #0
	b _0803A20E
	.align 2, 0
_0803A1DC: .4byte gSomeBlend
_0803A1E0: .4byte 0x00003668
_0803A1E4: .4byte gGame
_0803A1E8:
	movs r0, #0xd2
	bl play_sound
	ldr r1, _0803A218
	ldr r0, _0803A21C
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1]
	ldr r3, _0803A220
	ldrb r2, [r3, #8]
	lsls r0, r2, #0x1d
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #2
	movs r0, #5
	rsbs r0, r0, #0
_0803A20E:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #8]
_0803A214:
	pop {r0}
	bx r0
	.align 2, 0
_0803A218: .4byte gSomeBlend
_0803A21C: .4byte 0x00003668
_0803A220: .4byte gGame
	.syntax divided
