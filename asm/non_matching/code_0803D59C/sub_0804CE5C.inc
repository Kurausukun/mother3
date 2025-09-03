	.syntax unified
sub_0804CE5C:
	push {r4, r5, lr}
	sub sp, #4
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r5, _0804CE80
	ldr r1, _0804CE84
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0804CF18
	ldrh r1, [r2]
	cmp r1, #1
	bne _0804CE88
	adds r0, r4, #0
	bl sub_0804EDFC
	b _0804CF18
	.align 2, 0
_0804CE80: .4byte gSomeBlend
_0804CE84: .4byte 0x000044F2
_0804CE88:
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _0804CEA2
	movs r0, #0xd3
	bl play_sound
	movs r0, #0
	bl sub_080506CC
	b _0804CF18
_0804CEA2:
	adds r0, r4, #0
	adds r0, #0xa
	ldrh r3, [r4, #2]
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r1, [sp]
	adds r1, r2, #0
	movs r2, #0
	bl sub_08053754
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804CF18
	ldrh r1, [r4, #0xa]
	ldr r2, _0804CEFC
	adds r0, r5, r2
	strb r1, [r0]
	ldrh r0, [r4, #0xa]
	bl sub_08054FE0
	adds r4, r0, #0
	bl sub_08052DBC
	ldr r0, _0804CF00
	adds r5, r5, r0
	ldrb r1, [r5]
	lsls r0, r1, #0x1c
	cmp r0, #0
	bge _0804CF04
	adds r0, r4, #0
	bl sub_0805504C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0804CEF4
	ldrb r1, [r5]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
_0804CEF4:
	bl sub_08046D90
	b _0804CF18
	.align 2, 0
_0804CEFC: .4byte 0x00004264
_0804CF00: .4byte 0x000044F3
_0804CF04:
	movs r0, #4
	orrs r0, r1
	strb r0, [r5]
	bl sub_08046D90
	ldrb r1, [r5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
_0804CF18:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
