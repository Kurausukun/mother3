	.syntax unified
sub_0804D3F4:
	push {r4, r5, lr}
	sub sp, #0xc
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r5, _0804D418
	ldr r1, _0804D41C
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0804D466
	ldrh r1, [r2]
	cmp r1, #1
	bne _0804D420
	adds r0, r4, #0
	bl sub_0804EFD4
	b _0804D466
	.align 2, 0
_0804D418: .4byte gSomeBlend
_0804D41C: .4byte 0x000044F2
_0804D420:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804D43C
	movs r0, #0xd3
	bl play_sound
	bl sub_0804C1E8
	bl sub_08049DC4
	bl sub_08046D90
	b _0804D466
_0804D43C:
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
	ldr r2, _0804D470
	adds r1, r5, r2
	strb r0, [r1]
_0804D466:
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804D470: .4byte 0x00004264
	.syntax divided
