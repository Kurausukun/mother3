	.syntax unified
sub_08033CFC:
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0
	bl get_obj_direct
	adds r2, r0, #0
	ldr r0, _08033D30
	ldr r1, _08033D34
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _08033D38
	cmp r1, r0
	bgt _08033D44
	subs r0, #1
	cmp r1, r0
	bge _08033D5E
	subs r0, #0x64
	cmp r1, r0
	bgt _08033D3C
	subs r0, #3
	cmp r1, r0
	bge _08033D5E
	cmp r1, #0xe8
	beq _08033D5A
	b _08033DA0
	.align 2, 0
_08033D30: .4byte gGame
_08033D34: .4byte 0x000067AC
_08033D38: .4byte 0x0000032A
_08033D3C:
	ldr r0, _08033D40
	b _08033D54
	.align 2, 0
_08033D40: .4byte 0x00000322
_08033D44:
	movs r0, #0xe0
	lsls r0, r0, #2
	cmp r1, r0
	blt _08033DA0
	adds r0, #1
	cmp r1, r0
	ble _08033D5E
	adds r0, #2
_08033D54:
	cmp r1, r0
	beq _08033D5E
	b _08033DA0
_08033D5A:
	movs r5, #9
	b _08033D60
_08033D5E:
	movs r5, #5
_08033D60:
	cmp r4, #0
	bne _08033D7E
	adds r0, r5, #0
	bl getCurrentTrack
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xd9
	bgt _08033D76
	cmp r4, #0xd8
	bge _08033DA0
_08033D76:
	adds r0, r5, #0
	bl musicPlayerStop_sfx
	b _08033DA0
_08033D7E:
	ldr r0, [r2, #0x18]
	bl sub_0801A6D8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08033DA0
	adds r0, r5, #0
	bl getCurrentTrack
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	beq _08033DA0
	adds r0, r4, #0
	bl play_sound
_08033DA0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
