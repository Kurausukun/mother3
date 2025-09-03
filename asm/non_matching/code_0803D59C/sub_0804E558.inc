	.syntax unified
sub_0804E558:
	push {r4, lr}
	ldrh r0, [r0]
	cmp r0, #1
	bne _0804E5B8
	ldr r4, _0804E594
	ldr r1, _0804E598
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #0x20
	bne _0804E5A4
	ldr r1, _0804E59C
	ldr r2, _0804E5A0
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0804E5B8
	subs r2, #4
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0x78
	bls _0804E5B8
	movs r0, #0xd2
	bl play_sound
	movs r0, #5
	bl sub_080506CC
	b _0804E5B8
	.align 2, 0
_0804E594: .4byte gSomeBlend
_0804E598: .4byte 0x000041CC
_0804E59C: .4byte gUnknown_0200F920
_0804E5A0: .4byte 0x00006478
_0804E5A4:
	movs r0, #0xd2
	bl play_sound
	ldr r0, _0804E5C0
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0804E5B8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804E5C0: .4byte 0x000041DA
	.syntax divided
