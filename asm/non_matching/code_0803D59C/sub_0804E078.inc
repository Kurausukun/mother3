	.syntax unified
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r1, #0
	ldr r4, _0804E0D4
	ldr r1, _0804E0D8
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0804E108
	ldrh r0, [r3]
	cmp r0, #2
	bne _0804E0EC
	movs r0, #0xd3
	bl play_sound
	ldr r0, _0804E0DC
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0804E0E0
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #3
	bgt _0804E0C8
	cmp r0, #0
	blt _0804E0C8
	adds r0, r4, #0
	adds r0, #0x50
	ldr r2, _0804E0E4
	adds r1, r4, r2
	movs r2, #1
	movs r3, #1
	bl sub_080012BC
	bl sub_08049DC4
_0804E0C8:
	bl sub_08046D90
	ldr r0, _0804E0E8
	bl sub_08049AF8
	b _0804E108
	.align 2, 0
_0804E0D4: .4byte gSomeBlend
_0804E0D8: .4byte 0x000044F2
_0804E0DC: .4byte 0x000041C6
_0804E0E0: .4byte 0x000041BC
_0804E0E4: .4byte 0x00004244
_0804E0E8: .4byte gUnknown_0201AEF8
_0804E0EC:
	ldr r0, _0804E110
	adds r1, r4, r0
	ldrh r0, [r1]
	cmp r0, #3
	bhi _0804E108
	ldr r0, _0804E114
	ldrh r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r3, #0
	adds r1, r5, #0
	bl _call_via_r2
_0804E108:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804E110: .4byte 0x000041BC
_0804E114: .4byte gUnknown_09B8FF14
	.syntax divided
