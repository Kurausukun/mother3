	.syntax unified
sub_0804EFD4:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xd2
	bl play_sound
	ldrh r0, [r4, #4]
	bl sub_08053E98
	ldr r1, _0804EFFC
	ldr r3, _0804F000
	adds r2, r1, r3
	strb r0, [r2]
	ldr r0, _0804F004
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _0804F008
	bl sub_0804C254
	b _0804F00C
	.align 2, 0
_0804EFFC: .4byte gSomeBlend
_0804F000: .4byte 0x00004264
_0804F004: .4byte 0x00002F04
_0804F008:
	bl sub_0804C2A4
_0804F00C:
	bl sub_08049DC4
	bl sub_08046D90
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
