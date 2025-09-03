	.syntax unified
sub_080472BC:
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldrh r0, [r0, #0xa]
	bl sub_08054FE0
	adds r5, r0, #0
	bl sub_0805504C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080472D4
	b _080473DC
_080472D4:
	movs r4, #0
	adds r7, r5, #0
	adds r7, #0x34
	movs r6, #0xf
_080472DC:
	adds r1, r7, r4
	ldrb r0, [r1]
	cmp r0, #0
	bne _080472FE
	movs r0, #2
	bl sub_080486A0
	adds r2, r4, #5
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r6, [sp]
	movs r1, #0xc
	movs r3, #1
	rsbs r3, r3, #0
	bl sub_08047B9C
	b _08047316
_080472FE:
	ldrb r1, [r1]
	movs r0, #2
	bl get_misctext_msg
	adds r2, r4, #5
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r6, [sp]
	movs r1, #0xc
	movs r3, #9
	bl sub_08047B9C
_08047316:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _080472DC
	adds r0, r5, #0
	bl sub_08047B0C
	ldr r0, _080473E4
	ldr r1, _080473E8
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _080473DC
	movs r0, #0x47
	bl sub_080486A0
	movs r5, #1
	rsbs r5, r5, #0
	movs r4, #1
	str r4, [sp]
	movs r1, #1
	movs r2, #3
	adds r3, r5, #0
	bl sub_08047B9C
	movs r0, #0x48
	bl sub_080486A0
	str r4, [sp]
	movs r1, #1
	movs r2, #4
	adds r3, r5, #0
	bl sub_08047B9C
	movs r0, #0x49
	bl sub_080486A0
	str r4, [sp]
	movs r1, #1
	movs r2, #5
	adds r3, r5, #0
	bl sub_08047B9C
	movs r0, #0x4a
	bl sub_080486A0
	str r4, [sp]
	movs r1, #1
	movs r2, #6
	adds r3, r5, #0
	bl sub_08047B9C
	movs r0, #0x4b
	bl sub_080486A0
	str r4, [sp]
	movs r1, #1
	movs r2, #7
	adds r3, r5, #0
	bl sub_08047B9C
	movs r0, #0x4c
	bl sub_080486A0
	str r4, [sp]
	movs r1, #1
	movs r2, #8
	adds r3, r5, #0
	bl sub_08047B9C
	movs r0, #0x4d
	bl sub_080486A0
	str r4, [sp]
	movs r1, #1
	movs r2, #9
	adds r3, r5, #0
	bl sub_08047B9C
	movs r0, #0x4e
	bl sub_080486A0
	str r4, [sp]
	movs r1, #9
	movs r2, #3
	adds r3, r5, #0
	bl sub_08047B9C
	movs r0, #0x50
	bl sub_080486A0
	str r4, [sp]
	movs r1, #9
	movs r2, #4
	adds r3, r5, #0
	bl sub_08047B9C
_080473DC:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080473E4: .4byte gSomeBlend
_080473E8: .4byte 0x000044F3
	.syntax divided
