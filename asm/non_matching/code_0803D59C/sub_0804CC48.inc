	.syntax unified
sub_0804CC48:
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r6, _0804CC6C
	ldr r1, _0804CC70
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0804CCFC
	ldrh r1, [r5]
	cmp r1, #1
	bne _0804CC74
	adds r0, r4, #0
	bl sub_0804EB68
	b _0804CCFC
	.align 2, 0
_0804CC6C: .4byte gSomeBlend
_0804CC70: .4byte 0x000044F2
_0804CC74:
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _0804CC8E
	movs r0, #0xd3
	bl play_sound
	movs r0, #0
	bl sub_080506CC
	b _0804CCFC
_0804CC8E:
	adds r0, r4, #0
	adds r0, #0xa
	ldrh r3, [r4, #2]
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r1, [sp]
	adds r1, r5, #0
	movs r2, #0
	bl sub_08053754
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804CCE4
	ldrh r1, [r4, #0xa]
	ldr r2, _0804CCD8
	adds r0, r6, r2
	strb r1, [r0]
	ldr r0, _0804CCDC
	adds r4, r6, r0
	ldrb r0, [r4]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
	bl sub_08046D90
	ldrb r1, [r4]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	ldr r1, _0804CCE0
	adds r0, r6, r1
	bl sub_08049AF8
	b _0804CCFC
	.align 2, 0
_0804CCD8: .4byte 0x00004264
_0804CCDC: .4byte 0x000044F3
_0804CCE0: .4byte 0x00004ED0
_0804CCE4:
	adds r0, r4, #4
	movs r1, #0x80
	str r1, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r1, r5, #0
	.syntax divided
