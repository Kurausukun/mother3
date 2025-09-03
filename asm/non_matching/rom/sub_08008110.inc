	.syntax unified
sub_08008110:
	push {r4, r5, r6, r7, lr}
	ldr r0, _080081D8
	movs r1, #0xe
	bl sub_0800289C
	ldr r1, _080081DC
	movs r2, #0xc0
	lsls r2, r2, #5
	bl sub_08001A14
	ldr r0, _080081E0
	ldr r1, _080081E4
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	movs r7, #0x1a
	cmp r0, #0
	beq _08008138
	movs r7, #0x16
_08008138:
	movs r5, #0
	movs r4, #0
	ldr r0, _080081E8
	ldr r1, _080081EC
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r5, r1
	bhs _08008174
	adds r6, r0, #0
_0800814A:
	adds r0, r4, #0
	bl get_char_stats
	adds r1, r0, #0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08008168
	bl sub_08001D2C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08008168
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08008168:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r0, [r6]
	cmp r4, r0
	blo _0800814A
_08008174:
	cmp r5, #0
	beq _0800817E
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0800817E:
	adds r0, r7, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08008200
	ldr r0, _080081E0
	ldr r1, _080081F0
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt _080081D2
	ldr r4, _080081D8
	ldr r0, _080081F4
	ldr r1, _080081F8
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #0xf
	adds r0, r4, #0
	bl sub_0800289C
	movs r1, #0xd
	movs r2, #0x20
	bl sub_08016F4C
	adds r0, r4, #0
	movs r1, #0x1e
	bl sub_0800289C
	ldr r1, _080081FC
	movs r2, #0xc0
	lsls r2, r2, #4
	bl sub_08001A14
	adds r0, r4, #0
	movs r1, #0x1f
	bl sub_0800289C
	movs r1, #0x1e
	movs r2, #0x20
	bl sub_08016F4C
_080081D2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080081D8: .4byte gUnknown_09AF3790
_080081DC: .4byte 0x0600D800
_080081E0: .4byte gSomeBlend
_080081E4: .4byte 0x000035BA
_080081E8: .4byte gGame
_080081EC: .4byte 0x00008299
_080081F0: .4byte 0x000121B9
_080081F4: .4byte gSave
_080081F8: .4byte 0x0000081E
_080081FC: .4byte 0x06014C00
	.syntax divided
