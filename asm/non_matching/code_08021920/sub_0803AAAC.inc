	.syntax unified
	push {r4, r5, lr}
	ldrh r1, [r1, #4]
	cmp r1, #1
	beq _0803AB38
	cmp r1, #1
	bgt _0803AABE
	cmp r1, #0
	beq _0803AAC6
	b _0803AC94
_0803AABE:
	cmp r1, #2
	bne _0803AAC4
	b _0803ABD4
_0803AAC4:
	b _0803AC94
_0803AAC6:
	ldrh r0, [r0, #2]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r2, #0
	ands r1, r0
	adds r3, r0, #0
	cmp r1, r2
	bne _0803AADC
	movs r4, #0xfa
	lsls r4, r4, #2
	b _0803AAF8
_0803AADC:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r3
	cmp r0, #0
	beq _0803AAEA
	movs r4, #0xa
	b _0803AAF8
_0803AAEA:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r3
	movs r4, #1
	cmp r0, #0
	beq _0803AAF8
	movs r4, #0x64
_0803AAF8:
	movs r5, #1
	adds r0, r5, #0
	ands r0, r3
	cmp r0, #0
	beq _0803AB18
	movs r0, #0xd2
	bl play_sound
	ldr r0, _0803AB10
	ldr r1, _0803AB14
	b _0803AB7E
	.align 2, 0
_0803AB10: .4byte gSomeBlend
_0803AB14: .4byte 0x0000361C
_0803AB18:
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	bne _0803AB22
	b _0803AC94
_0803AB22:
	movs r0, #0xd2
	bl play_sound
	ldr r0, _0803AB30
	ldr r2, _0803AB34
	b _0803ABB2
	.align 2, 0
_0803AB30: .4byte gSomeBlend
_0803AB34: .4byte 0x0000361C
_0803AB38:
	ldrh r0, [r0, #2]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r2, #0
	ands r1, r0
	adds r3, r0, #0
	cmp r1, r2
	bne _0803AB4E
	movs r4, #0xfa
	lsls r4, r4, #2
	b _0803AB6A
_0803AB4E:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r3
	cmp r0, #0
	beq _0803AB5C
	movs r4, #0xa
	b _0803AB6A
_0803AB5C:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r3
	movs r4, #1
	cmp r0, #0
	beq _0803AB6A
	movs r4, #0x64
_0803AB6A:
	movs r5, #1
	adds r0, r5, #0
	ands r0, r3
	cmp r0, #0
	beq _0803ABA0
	movs r0, #0xd2
	bl play_sound
	ldr r0, _0803AB94
	ldr r1, _0803AB98
_0803AB7E:
	adds r2, r0, r1
	ldr r0, [r2]
	adds r0, r0, r4
	str r0, [r2]
	ldr r1, _0803AB9C
	cmp r0, r1
	bhi _0803AB8E
	b _0803AC94
_0803AB8E:
	str r5, [r2]
	b _0803AC94
	.align 2, 0
_0803AB94: .4byte gSomeBlend
_0803AB98: .4byte 0x00003620
_0803AB9C: .4byte 0x000F423E
_0803ABA0:
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _0803AC94
	movs r0, #0xd2
	bl play_sound
	ldr r0, _0803ABC8
	ldr r2, _0803ABCC
_0803ABB2:
	adds r1, r0, r2
	ldr r0, [r1]
	cmp r0, r4
	blo _0803ABC2
	subs r0, r0, r4
	str r0, [r1]
	cmp r0, #0
	bne _0803AC94
_0803ABC2:
	ldr r0, _0803ABD0
	str r0, [r1]
	b _0803AC94
	.align 2, 0
_0803ABC8: .4byte gSomeBlend
_0803ABCC: .4byte 0x00003620
_0803ABD0: .4byte 0x000F423E
_0803ABD4:
	ldrh r0, [r0, #2]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r2, #0
	ands r1, r0
	adds r3, r0, #0
	cmp r1, r2
	bne _0803ABEA
	movs r4, #0xfa
	lsls r4, r4, #2
	b _0803AC06
_0803ABEA:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r3
	cmp r0, #0
	beq _0803ABF8
	movs r4, #0xa
	b _0803AC06
_0803ABF8:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r3
	movs r4, #1
	cmp r0, #0
	beq _0803AC06
	movs r4, #0x64
_0803AC06:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #0x12
	lsrs r4, r0, #0x10
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _0803AC54
	movs r0, #0xd2
	bl play_sound
	ldr r3, _0803AC40
	ldr r0, _0803AC44
	adds r2, r3, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0803AC48
	adds r3, r3, r1
	ldr r0, [r3]
	adds r0, r0, r4
	str r0, [r3]
	ldr r1, _0803AC4C
	cmp r0, r1
	bls _0803AC94
	ldr r0, _0803AC50
	b _0803AC92
	.align 2, 0
_0803AC40: .4byte gSomeBlend
_0803AC44: .4byte 0x00003668
_0803AC48: .4byte 0x00003624
_0803AC4C: .4byte 0x0009E33F
_0803AC50: .4byte 0x0009E340
_0803AC54:
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _0803AC94
	movs r0, #0xd2
	bl play_sound
	ldr r3, _0803AC80
	ldr r0, _0803AC84
	adds r2, r3, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0803AC88
	adds r3, r3, r1
	ldr r0, [r3]
	cmp r0, r4
	bhs _0803AC90
	ldr r0, _0803AC8C
	b _0803AC92
	.align 2, 0
_0803AC80: .4byte gSomeBlend
_0803AC84: .4byte 0x00003668
_0803AC88: .4byte 0x00003624
_0803AC8C: .4byte 0x0009E340
_0803AC90:
	subs r0, r0, r4
_0803AC92:
	str r0, [r3]
_0803AC94:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
