	.syntax unified
sub_0804F0D4:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #0xa]
	bl sub_08054FE0
	adds r4, r0, #0
	bl sub_08055038
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0804F106
	adds r0, r4, #0
	bl sub_0805504C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0804F106
	ldrh r0, [r5, #4]
	lsls r0, r0, #2
	ldr r6, _0804F110
	adds r4, r0, r6
	ldr r0, [r4]
	lsls r0, r0, #0xa
	cmp r0, #0
	blt _0804F114
_0804F106:
	movs r0, #0xd6
	bl play_sound
	b _0804F14A
	.align 2, 0
_0804F110: .4byte gUnknown_020194A8
_0804F114:
	movs r0, #0xd2
	bl play_sound
	adds r0, r5, #0
	movs r1, #0xd
	bl sub_08053EEC
	ldrb r1, [r4]
	ldr r2, _0804F150
	adds r0, r6, r2
	strb r1, [r0]
	ldrh r1, [r5, #4]
	adds r2, #2
	adds r0, r6, r2
	strb r1, [r0]
	ldrb r0, [r4]
	bl sub_08054F34
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804F14A
	ldrb r0, [r4]
	bl sub_08054EF4
	ldr r2, _0804F154
	adds r1, r6, r2
	strb r0, [r1]
_0804F14A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804F150: .4byte 0x00000D55
_0804F154: .4byte 0x00000D56
	.syntax divided
