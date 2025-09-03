	.syntax unified
sub_08053598:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [sp, #0xc]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r4]
	cmp r0, #0
	bne _080535B2
	cmp r1, #0
	beq _08053616
_080535B2:
	ldrh r2, [r2, #2]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _080535E4
	ldrh r0, [r4]
	cmp r0, r3
	beq _08053616
	movs r0, #0xd0
	bl play_sound
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	ldrh r0, [r5, #6]
	cmp r0, #1
	bls _08053612
	ldrh r1, [r5, #8]
	ldrh r2, [r4]
	adds r0, r2, #1
	cmp r1, r0
	bne _08053612
	strh r2, [r5, #8]
	movs r0, #2
	b _08053618
_080535E4:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08053616
	ldrh r0, [r4]
	cmp r0, r1
	beq _08053616
	movs r0, #0xd0
	bl play_sound
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	ldrh r1, [r4]
	ldrh r2, [r5, #8]
	ldrh r0, [r5, #6]
	adds r0, r2, r0
	cmp r1, r0
	blt _08053612
	adds r0, r2, #1
	strh r0, [r5, #8]
	movs r0, #2
	b _08053618
_08053612:
	movs r0, #1
	b _08053618
_08053616:
	movs r0, #0
_08053618:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
