	.syntax unified
	push {lr}
	sub sp, #0xc
	adds r3, r0, #0
	ldr r0, _0804D728
	ldr r2, _0804D72C
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0804D75E
	ldrh r2, [r3]
	cmp r2, #1
	bne _0804D730
	adds r0, r1, #0
	bl sub_0804F158
	b _0804D75E
	.align 2, 0
_0804D728: .4byte gSomeBlend
_0804D72C: .4byte 0x000044F2
_0804D730:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0804D746
	movs r0, #0xd3
	bl play_sound
	movs r0, #0
	bl sub_080506CC
	b _0804D75E
_0804D746:
	adds r0, r1, #4
	movs r1, #0x80
	str r1, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r1, r3, #0
	movs r2, #0
	movs r3, #2
	bl sub_080534C8
_0804D75E:
	add sp, #0xc
	pop {r0}
	bx r0
	.syntax divided
