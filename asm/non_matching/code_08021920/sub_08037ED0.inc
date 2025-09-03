	.syntax unified
	push {r4, r5, lr}
	sub sp, #8
	adds r3, r0, #0
	adds r4, r1, #0
	ldr r5, _08037F00
	ldr r1, _08037F04
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08037F68
	ldrh r2, [r4, #0xa]
	cmp r2, #1
	bne _08037F0C
	ldrh r0, [r3]
	cmp r0, #1
	bne _08037F68
	ldr r0, _08037F08
	ldrb r1, [r0, #3]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0, #3]
	b _08037F68
	.align 2, 0
_08037F00: .4byte gSomeBlend
_08037F04: .4byte 0x000035BA
_08037F08: .4byte gGame
_08037F0C:
	ldrh r1, [r3]
	cmp r1, #1
	bne _08037F34
	ldrh r0, [r4, #4]
	cmp r0, #0
	bne _08037F30
	adds r0, r2, #1
	strh r0, [r4, #0xa]
	ldr r0, _08037F2C
	adds r2, r5, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	b _08037F68
	.align 2, 0
_08037F2C: .4byte 0x000121B6
_08037F30:
	movs r0, #0xdd
	b _08037F3E
_08037F34:
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08037F54
	movs r0, #0xd3
_08037F3E:
	bl play_sound
	adds r0, r4, #0
	bl sub_080381B0
	ldr r0, _08037F50
	bl sub_0800A480
	b _08037F68
	.align 2, 0
_08037F50: .4byte gUnknown_080C1FF8
_08037F54:
	adds r0, r4, #4
	movs r1, #2
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	adds r1, r3, #0
	movs r2, #2
	movs r3, #1
	bl sub_080397D0
_08037F68:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
