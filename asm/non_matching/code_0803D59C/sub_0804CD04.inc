	.syntax unified
sub_0804CD04:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r5, r1, #0
	ldr r0, _0804CD30
	mov r8, r0
	ldr r0, _0804CD34
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0804CD22
	b _0804CE4C
_0804CD22:
	ldrh r1, [r7]
	cmp r1, #1
	bne _0804CD38
	adds r0, r5, #0
	bl sub_0804ECC8
	b _0804CE4C
	.align 2, 0
_0804CD30: .4byte gSomeBlend
_0804CD34: .4byte 0x000044F2
_0804CD38:
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _0804CD52
	movs r0, #0xd3
	bl play_sound
	movs r0, #0
	bl sub_080506CC
	b _0804CE4C
_0804CD52:
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804CD94
	movs r0, #0xd2
	bl play_sound
	ldrh r0, [r5, #0xa]
	bl sub_08054FE0
	adds r3, r0, #0
	ldr r2, _0804CD90
	add r2, r8
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0804CD80
	strb r6, [r2]
_0804CD80:
	ldrh r1, [r5, #0xa]
	ldrb r2, [r2]
	adds r0, r3, #0
	bl sub_080532E0
	bl sub_08046D90
	b _0804CE4C
	.align 2, 0
_0804CD90: .4byte 0x00004266
_0804CD94:
	adds r0, r5, #0
	adds r0, #0xa
	ldrh r3, [r5, #2]
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r4, [sp]
	adds r1, r7, #0
	movs r2, #0
	bl sub_08053754
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804CDDC
	ldrh r1, [r5, #0xa]
	ldr r0, _0804CDD4
	add r0, r8
	strb r1, [r0]
	strh r4, [r5, #4]
	strh r4, [r5, #8]
	mov r0, r8
	adds r0, #0x50
	ldr r1, _0804CDD8
	add r1, r8
	movs r2, #1
	movs r3, #1
	bl sub_080012BC
	bl sub_08046D90
	b _0804CE4C
	.align 2, 0
_0804CDD4: .4byte 0x00004264
_0804CDD8: .4byte 0x0000423C
_0804CDDC:
	ldrh r0, [r5, #0xa]
	lsls r0, r0, #1
	ldr r1, _0804CE10
	add r1, r8
	adds r6, r0, r1
	ldrh r4, [r6]
	lsls r3, r4, #0x10
	lsrs r0, r3, #0x10
	cmp r0, #0
	beq _0804CE4C
	cmp r0, #0x10
	bhi _0804CE14
	adds r0, r5, #4
	lsrs r3, r3, #0x11
	movs r1, #1
	ands r1, r4
	adds r3, r3, r1
	ldrh r1, [r6]
	str r1, [sp]
	ldrh r1, [r5, #6]
	str r1, [sp, #4]
	adds r1, r7, #0
	movs r2, #2
	bl sub_08053AC8
	b _0804CE34
	.align 2, 0
_0804CE10: .4byte 0x00004270
_0804CE14:
	adds r0, r5, #4
	adds r1, r5, #0
	adds r1, #8
	lsrs r3, r3, #0x11
	movs r2, #1
	ands r2, r4
	adds r3, r3, r2
	str r3, [sp]
	ldrh r2, [r6]
	str r2, [sp, #4]
	ldrh r2, [r5, #6]
	str r2, [sp, #8]
	adds r2, r7, #0
	movs r3, #2
	bl sub_08053968
_0804CE34:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bne _0804CE4C
	bl sub_08046D90
	ldr r0, _0804CE58
	add r0, r8
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
_0804CE4C:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804CE58: .4byte 0x0000C5AD
	.syntax divided
