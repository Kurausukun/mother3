	.syntax unified
sub_0804FF30:
	push {r4, r5, r6, r7, lr}
	ldr r6, _0804FF80
	ldrh r0, [r6, #0xa]
	bl sub_08054FE0
	adds r7, r0, #0
	ldr r0, _0804FF84
	adds r4, r6, r0
	ldrh r0, [r4]
	bl sub_08054FE0
	adds r5, r0, #0
	ldrh r0, [r4]
	bl sub_08054FF0
	adds r4, r0, #0
	ldr r2, _0804FF88
	ldr r1, _0804FF8C
	adds r0, r6, r1
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x18
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #1
	bne _0804FF94
	adds r0, r5, #0
	bl sub_08055038
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804FF94
	ldr r2, _0804FF90
	adds r0, r6, r2
	movs r1, #0x54
	bl memclear
	b _0804FFA6
	.align 2, 0
_0804FF80: .4byte gUnknown_02018E68
_0804FF84: .4byte 0x00001390
_0804FF88: .4byte gPsiData
_0804FF8C: .4byte 0x00001395
_0804FF90: .4byte 0x00009788
_0804FF94:
	ldr r0, _0804FFF0
	ldr r1, _0804FFF4
	adds r0, r0, r1
	ldrb r3, [r0]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080543E8
_0804FFA6:
	movs r0, #0
	bl sub_08055694
	ldr r4, _0804FFF0
	ldr r2, _0804FFF8
	adds r0, r4, r2
	ldrh r1, [r0]
	ldr r2, _0804FFFC
	adds r0, r4, r2
	strh r1, [r0]
	adds r0, r5, #0
	bl sub_080524EC
	ldrh r0, [r6, #0xa]
	bl sub_08052864
	bl sub_08046D90
	ldr r0, _08050000
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	ldr r0, _08050004
	bl sub_0803DF94
	ldrb r1, [r4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804FFF0: .4byte gSomeBlend
_0804FFF4: .4byte 0x000041D5
_0804FFF8: .4byte 0x000041CA
_0804FFFC: .4byte 0x000044EC
_08050000: .4byte 0x000041DA
_08050004: .4byte 0x0000FFFF
	.syntax divided
