	.syntax unified
sub_0804EE64:
	push {lr}
	ldrh r0, [r0, #4]
	lsls r0, r0, #2
	ldr r1, _0804EE8C
	adds r0, r0, r1
	ldrb r1, [r0, #2]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x60
	bne _0804EEDC
	movs r0, #0xd2
	bl play_sound
	ldr r1, _0804EE90
	ldrh r0, [r1, #2]
	cmp r0, #0
	bne _0804EE94
	movs r0, #1
	b _0804EE96
	.align 2, 0
_0804EE8C: .4byte gUnknown_02019828
_0804EE90: .4byte gUnknown_02005090
_0804EE94:
	movs r0, #0
_0804EE96:
	strh r0, [r1, #2]
	bl sub_0805CE74
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804EECC
	ldr r2, _0804EEC0
	ldr r0, _0804EEC4
	adds r3, r2, r0
	ldrb r0, [r3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	ldr r1, _0804EEC8
	adds r2, r2, r1
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	b _0804EEDC
	.align 2, 0
_0804EEC0: .4byte gSomeBlend
_0804EEC4: .4byte 0x0000C5B5
_0804EEC8: .4byte 0x000044F2
_0804EECC:
	ldr r0, _0804EEE0
	ldr r1, _0804EEE4
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
_0804EEDC:
	pop {r0}
	bx r0
	.align 2, 0
_0804EEE0: .4byte gSomeBlend
_0804EEE4: .4byte 0x000044F2
	.syntax divided
