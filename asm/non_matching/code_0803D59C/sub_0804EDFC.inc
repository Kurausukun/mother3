	.syntax unified
sub_0804EDFC:
	push {r4, lr}
	ldrh r0, [r0, #0xa]
	bl sub_08054FE0
	bl sub_0805504C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0804EE1A
	ldr r4, _0804EE24
	ldr r1, _0804EE28
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0804EE2C
_0804EE1A:
	movs r0, #0xd6
	bl play_sound
	b _0804EE52
	.align 2, 0
_0804EE24: .4byte gSomeBlend
_0804EE28: .4byte 0x0000427A
_0804EE2C:
	movs r0, #0xd2
	bl play_sound
	bl sub_0804BF7C
	adds r0, r4, #0
	adds r0, #0x50
	ldr r2, _0804EE58
	adds r1, r4, r2
	movs r2, #1
	movs r3, #1
	bl sub_080012BC
	bl sub_08046D90
	ldr r1, _0804EE5C
	adds r0, r4, r1
	bl sub_08049AF8
_0804EE52:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804EE58: .4byte 0x0000423C
_0804EE5C: .4byte 0x00004ED0
	.syntax divided
