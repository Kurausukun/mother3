	.syntax unified
	push {r4, r5, lr}
	adds r3, r0, #0
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _0803A2C0
	ldr r1, _0803A24C
	ldr r0, _0803A250
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1]
	ldrh r1, [r3, #2]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803A254
	movs r4, #0xa
	b _0803A262
	.align 2, 0
_0803A24C: .4byte gSomeBlend
_0803A250: .4byte 0x00003668
_0803A254:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	movs r4, #1
	cmp r0, #0
	beq _0803A262
	movs r4, #0x64
_0803A262:
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0803A298
	movs r0, #0xd2
	bl play_sound
	ldr r0, _0803A28C
	ldr r1, _0803A290
	adds r2, r0, r1
	ldrh r0, [r2]
	adds r0, r4, r0
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _0803A294
	cmp r0, r1
	bls _0803A2C0
	strh r5, [r2]
	b _0803A2C0
	.align 2, 0
_0803A28C: .4byte gSomeBlend
_0803A290: .4byte 0x00003614
_0803A294: .4byte 0x03E70000
_0803A298:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803A2C0
	movs r0, #0xd2
	bl play_sound
	ldr r0, _0803A2C8
	ldr r2, _0803A2CC
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, r4
	blo _0803A2BC
	subs r0, r0, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803A2C0
_0803A2BC:
	ldr r0, _0803A2D0
	strh r0, [r1]
_0803A2C0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803A2C8: .4byte gSomeBlend
_0803A2CC: .4byte 0x00003614
_0803A2D0: .4byte 0x000003E7
	.syntax divided
