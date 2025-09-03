	.syntax unified
	push {r4, lr}
	sub sp, #0xc
	adds r2, r0, #0
	adds r4, r1, #0
	ldrh r1, [r2]
	cmp r1, #1
	bne _0804DEF8
	movs r0, #0xd2
	bl play_sound
	ldr r0, _0804DEF4
	ldrh r2, [r4, #4]
	movs r1, #0x90
	lsls r1, r1, #3
	adds r0, r0, r1
	movs r1, #0
	strb r2, [r0]
	strh r1, [r4, #0xa]
	strh r1, [r4, #4]
	b _0804DF26
	.align 2, 0
_0804DEF4: .4byte gSave
_0804DEF8:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804DF0E
	movs r0, #0xd3
	bl play_sound
	movs r0, #0
	strh r0, [r4, #0xa]
	strh r0, [r4, #4]
	b _0804DF26
_0804DF0E:
	adds r0, r4, #4
	movs r1, #0x80
	str r1, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r1, r2, #0
	movs r2, #0
	movs r3, #2
	bl sub_080534C8
_0804DF26:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
