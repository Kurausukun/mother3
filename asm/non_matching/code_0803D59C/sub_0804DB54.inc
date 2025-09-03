	.syntax unified
sub_0804DB54:
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r4, _0804DB90
	ldr r1, _0804DB94
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0804DBE0
	adds r1, #0xf
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r5, #2
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0804DBE0
	ldr r1, _0804DB98
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0804DB9C
	adds r0, r2, #0
	adds r1, r3, #0
	bl sub_0804DC5C
	b _0804DBE0
	.align 2, 0
_0804DB90: .4byte gSomeBlend
_0804DB94: .4byte 0x000044F2
_0804DB98: .4byte 0x00004ECF
_0804DB9C:
	ldr r1, _0804DBB0
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #8
	bne _0804DBB4
	adds r0, r2, #0
	adds r1, r3, #0
	bl sub_0804DE00
	b _0804DBE0
	.align 2, 0
_0804DBB0: .4byte 0x00004A30
_0804DBB4:
	cmp r0, #9
	bne _0804DBC2
	adds r0, r2, #0
	adds r1, r3, #0
	bl sub_0804DFE4
	b _0804DBE0
_0804DBC2:
	ldrh r1, [r2]
	cmp r1, #1
	bne _0804DBD4
	movs r0, #0xd2
	bl play_sound
	bl sub_0804C68C
	b _0804DBE0
_0804DBD4:
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0804DBE0
	bl sub_08050628
_0804DBE0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
