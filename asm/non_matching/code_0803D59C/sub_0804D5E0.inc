	.syntax unified
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r2, r1, #0
	ldr r4, _0804D60C
	ldr r1, _0804D610
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0804D6EC
	ldrh r1, [r5]
	cmp r1, #1
	bne _0804D614
	ldrh r0, [r2, #2]
	cmp r0, #0
	beq _0804D6EC
	adds r0, r2, #0
	bl sub_0804F0D4
	b _0804D6EC
	.align 2, 0
_0804D60C: .4byte gSomeBlend
_0804D610: .4byte 0x000044F2
_0804D614:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804D644
	movs r0, #0xd3
	bl play_sound
	bl sub_0804C228
	adds r0, r4, #0
	adds r0, #0x50
	ldr r2, _0804D640
	adds r1, r4, r2
	movs r2, #1
	movs r3, #1
	bl sub_080012BC
	bl sub_08049DC4
	bl sub_08046D90
	b _0804D6EC
	.align 2, 0
_0804D640: .4byte 0x00004254
_0804D644:
	ldrh r3, [r2, #2]
	adds r0, r3, #0
	cmp r0, #0
	beq _0804D6A0
	cmp r0, #6
	bls _0804D684
	adds r1, r2, #4
	subs r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	adds r0, r2, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_08053598
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bne _0804D6A0
	bl sub_08046D90
	ldr r1, _0804D680
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	b _0804D6EC
	.align 2, 0
_0804D680: .4byte 0x0000C5AD
_0804D684:
	adds r0, r2, #4
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0x80
	str r1, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r1, r5, #0
	movs r2, #0
	bl sub_080534C8
_0804D6A0:
	ldr r4, _0804D6F4
	adds r0, r4, #4
	ldrh r3, [r4, #2]
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0
	str r1, [sp]
	adds r1, r5, #0
	movs r2, #0
	bl sub_08053754
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804D6EC
	ldrh r0, [r4, #4]
	bl sub_08053E98
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _0804D6F8
	adds r2, r4, r0
	ldrb r0, [r2]
	cmp r0, r1
	beq _0804D6EC
	strb r1, [r2]
	ldr r1, _0804D6FC
	adds r0, r4, r1
	ldr r2, _0804D700
	adds r1, r4, r2
	movs r2, #1
	movs r3, #1
	bl sub_080012BC
	bl sub_0804C2A4
	bl sub_08046D90
_0804D6EC:
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804D6F4: .4byte gUnknown_02018F48
_0804D6F8: .4byte 0x00001344
_0804D6FC: .4byte 0xFFFFD130
_0804D700: .4byte 0x00001334
	.syntax divided
