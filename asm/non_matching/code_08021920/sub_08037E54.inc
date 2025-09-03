	.syntax unified
sub_08037E54:
	push {r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r2, r1, #0
	ldr r0, _08037E7C
	ldr r1, _08037E80
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08037EC6
	ldrh r1, [r4]
	cmp r1, #1
	bne _08037E84
	adds r0, r2, #0
	bl sub_080380C0
	b _08037EC6
	.align 2, 0
_08037E7C: .4byte gSomeBlend
_08037E80: .4byte 0x000035BA
_08037E84:
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0
	bne _08037E96
	ldrh r1, [r4, #2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08037EA8
_08037E96:
	ldrh r0, [r2, #0xa]
	cmp r0, #2
	beq _08037EC6
	movs r0, #0xe0
	bl play_sound
	bl sub_080377B4
	b _08037EC6
_08037EA8:
	adds r0, r2, #4
	ldrh r3, [r2, #2]
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0x10
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r1, r4, #0
	movs r2, #0
	bl sub_08039544
_08037EC6:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
