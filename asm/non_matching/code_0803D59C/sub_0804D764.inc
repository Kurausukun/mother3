	.syntax unified
	push {r4, r5, lr}
	sub sp, #0xc
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r5, _0804D788
	ldr r1, _0804D78C
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0804D7D6
	ldrh r1, [r2]
	cmp r1, #1
	bne _0804D790
	adds r0, r4, #0
	bl sub_0804F190
	b _0804D7D6
	.align 2, 0
_0804D788: .4byte gSomeBlend
_0804D78C: .4byte 0x000044F2
_0804D790:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804D7AC
	movs r0, #0xd3
	bl play_sound
	bl sub_0804C2E0
	bl sub_08049DC4
	bl sub_08046D90
	b _0804D7D6
_0804D7AC:
	adds r0, r4, #4
	ldrh r3, [r4, #2]
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0x80
	str r1, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r1, r2, #0
	movs r2, #0
	bl sub_080534C8
	ldrh r0, [r4, #4]
	bl sub_08053E98
	ldr r2, _0804D7E0
	adds r1, r5, r2
	strb r0, [r1]
_0804D7D6:
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804D7E0: .4byte 0x00004264
	.syntax divided
