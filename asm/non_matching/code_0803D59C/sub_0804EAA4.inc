	.syntax unified
	push {r4, lr}
	ldrh r0, [r0, #4]
	lsls r0, r0, #2
	ldr r4, _0804EAC0
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0xcc
	beq _0804EAE0
	cmp r0, #0xcc
	bgt _0804EAC4
	cmp r0, #0xcb
	beq _0804EACE
	b _0804EB52
	.align 2, 0
_0804EAC0: .4byte gUnknown_020190A8
_0804EAC4:
	cmp r0, #0xe1
	beq _0804EAF2
	cmp r0, #0xe8
	beq _0804EB0E
	b _0804EB52
_0804EACE:
	movs r0, #0xd2
	bl play_sound
	movs r0, #0x1e
	bl sub_0803DF94
	movs r0, #0x4d
	movs r1, #3
	b _0804EB02
_0804EAE0:
	movs r0, #0xd2
	bl play_sound
	movs r0, #0x1e
	bl sub_0803DF94
	movs r0, #0x4d
	movs r1, #2
	b _0804EB02
_0804EAF2:
	movs r0, #0xd2
	bl play_sound
	movs r0, #0x1e
	bl sub_0803DF94
	movs r0, #0x4d
	movs r1, #1
_0804EB02:
	bl sub_080028F4
	movs r0, #2
	bl sub_080506CC
	b _0804EB52
_0804EB0E:
	ldr r1, _0804EB20
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0804EB24
	movs r0, #0xd6
	bl play_sound
	b _0804EB52
	.align 2, 0
_0804EB20: .4byte 0x000011FC
_0804EB24:
	movs r0, #0xd2
	bl play_sound
	bl sub_0804C050
	ldr r2, _0804EB58
	adds r0, r4, r2
	ldr r2, _0804EB5C
	adds r1, r4, r2
	movs r2, #1
	movs r3, #1
	bl sub_080012BC
	bl sub_08046D90
	ldr r0, _0804EB60
	ldr r2, _0804EB64
	adds r1, r4, r2
	ldr r1, [r1]
	movs r2, #0xe4
	lsls r2, r2, #1
	bl sub_08001A14
_0804EB52:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804EB58: .4byte 0xFFFFCFD0
_0804EB5C: .4byte 0x000011CC
_0804EB60: .4byte gUnknown_080C737A
_0804EB64: .4byte 0x0000959C
	.syntax divided
