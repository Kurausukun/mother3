	.syntax unified
sub_0804FE84:
	push {r4, r5, r6, r7, lr}
	ldr r5, _0804FEA8
	ldr r1, _0804FEAC
	adds r0, r5, r1
	ldrh r0, [r0]
	cmp r0, #1
	bne _0804FEB4
	movs r0, #0xdd
	bl play_sound
	ldr r0, _0804FEB0
	adds r2, r5, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _0804FF14
	.align 2, 0
_0804FEA8: .4byte gSomeBlend
_0804FEAC: .4byte 0x000041CA
_0804FEB0: .4byte 0x000041DA
_0804FEB4:
	movs r1, #0xb8
	lsls r1, r1, #6
	adds r4, r5, r1
	ldrh r0, [r4, #0xa]
	bl sub_08054FE0
	adds r6, r0, #0
	ldrh r0, [r4, #0xa]
	bl sub_08054FF0
	adds r4, r0, #0
	movs r0, #0xd2
	bl play_sound
	ldr r1, _0804FF1C
	ldr r0, _0804FF20
	adds r7, r5, r0
	ldrb r2, [r7]
	movs r0, #0x6c
	muls r0, r2, r0
	adds r0, r0, r1
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _0804FEF8
	ldr r1, _0804FF24
	adds r0, r5, r1
	ldrb r3, [r0]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0805486C
	adds r0, r6, #0
	bl sub_080524EC
_0804FEF8:
	bl sub_08046D90
	ldr r0, _0804FF28
	bl sub_0803DF94
	ldr r0, _0804FF2C
	adds r2, r5, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0
	strb r0, [r7]
_0804FF14:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804FF1C: .4byte gGoodsInfo
_0804FF20: .4byte 0x000041D5
_0804FF24: .4byte 0x000041D7
_0804FF28: .4byte 0x0000FFFF
_0804FF2C: .4byte 0x000041DA
	.syntax divided
