	.syntax unified
sub_0804DBE8:
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _0804DC18
	ldr r1, _0804DC1C
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0804DC54
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	bne _0804DC54
	ldrh r1, [r5]
	ldr r0, _0804DC20
	ands r0, r1
	cmp r0, #0
	beq _0804DC24
	adds r0, r4, #0
	bl sub_0804F4E4
	b _0804DC54
	.align 2, 0
_0804DC18: .4byte gSomeBlend
_0804DC1C: .4byte 0x000044F2
_0804DC20: .4byte 0x00000201
_0804DC24:
	movs r3, #2
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0804DC44
	ldrh r0, [r4, #4]
	cmp r0, #1
	beq _0804DC54
	movs r0, #0xd3
	bl play_sound
	movs r0, #1
	strh r0, [r4, #4]
	b _0804DC54
_0804DC44:
	adds r0, r4, #4
	str r3, [sp]
	str r2, [sp, #4]
	adds r1, r5, #0
	movs r2, #2
	movs r3, #1
	bl sub_08053804
_0804DC54:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
