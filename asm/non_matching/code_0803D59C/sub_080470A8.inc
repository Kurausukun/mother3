	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #4
	ldrh r0, [r0, #0xa]
	bl sub_08054FE0
	adds r5, r0, #0
	bl sub_0805504C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080471A4
	movs r4, #0
	adds r6, r5, #0
	adds r6, #0x34
	movs r5, #0xf
_080470C6:
	adds r1, r6, r4
	ldrb r0, [r1]
	cmp r0, #0
	bne _080470EC
	movs r0, #2
	bl sub_080486A0
	lsls r2, r4, #0x11
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r2, r2, r1
	lsrs r2, r2, #0x10
	str r5, [sp]
	movs r1, #0xc
	movs r3, #1
	rsbs r3, r3, #0
	bl sub_08047B9C
	b _08047108
_080470EC:
	ldrb r1, [r1]
	movs r0, #2
	bl get_misctext_msg
	lsls r2, r4, #0x11
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r2, r2, r1
	lsrs r2, r2, #0x10
	str r5, [sp]
	movs r1, #0xc
	movs r3, #9
	bl sub_08047B9C
_08047108:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _080470C6
	ldr r0, _080471AC
	ldr r1, _080471B0
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _080471A4
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
	movs r0, #0x4f
	bl sub_080486A0
	str r4, [sp]
	movs r1, #1
	movs r2, #4
	adds r3, r5, #0
	bl sub_08047B9C
	movs r0, #0x51
	bl sub_080486A0
	str r4, [sp]
	movs r1, #1
	movs r2, #5
	adds r3, r5, #0
	bl sub_08047B9C
	movs r0, #0x48
	bl sub_080486A0
	str r4, [sp]
	movs r1, #1
	movs r2, #6
	adds r3, r5, #0
	bl sub_08047B9C
	movs r0, #0x49
	bl sub_080486A0
	str r4, [sp]
	movs r1, #1
	movs r2, #7
	adds r3, r5, #0
	bl sub_08047B9C
	movs r0, #0x4a
	bl sub_080486A0
	str r4, [sp]
	movs r1, #1
	movs r2, #8
	adds r3, r5, #0
	bl sub_08047B9C
	movs r0, #0x4b
	bl sub_080486A0
	str r4, [sp]
	movs r1, #1
	movs r2, #9
	adds r3, r5, #0
	bl sub_08047B9C
_080471A4:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080471AC: .4byte gSomeBlend
_080471B0: .4byte 0x000044F3
	.syntax divided
