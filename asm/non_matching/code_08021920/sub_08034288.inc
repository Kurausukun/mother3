	.syntax unified
sub_08034288:
	push {r4, lr}
	movs r0, #0x41
	bl sub_08002998
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bhi _08034334
	lsls r0, r0, #2
	ldr r1, _080342A4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080342A4: .4byte _080342A8
_080342A8:
	.4byte _080342BC
	.4byte _080342E0
	.4byte _080342E0
	.4byte _08034308
	.4byte _080342E0
_080342BC:
	ldr r0, _080342D4
	ldr r1, _080342D8
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1c
	ldr r4, _080342DC
	cmp r0, #0
	bne _0803431C
	subs r4, #1
	b _08034320
	.align 2, 0
_080342D4: .4byte gGame
_080342D8: .4byte 0x000082B6
_080342DC: .4byte 0x0000031F
_080342E0:
	ldr r0, _080342F8
	ldr r1, _080342FC
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1c
	cmp r0, #0
	bne _08034300
	movs r0, #5
	bl sub_08003BA8
	b _08034334
	.align 2, 0
_080342F8: .4byte gGame
_080342FC: .4byte 0x000082B6
_08034300:
	ldr r4, _08034304
	b _08034320
	.align 2, 0
_08034304: .4byte 0x000006A3
_08034308:
	ldr r0, _0803433C
	ldr r1, _08034340
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1c
	ldr r4, _08034344
	cmp r0, #0
	bne _0803431C
	subs r4, #1
_0803431C:
	cmp r4, #0
	beq _08034334
_08034320:
	movs r0, #5
	bl sub_08003D14
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	beq _08034334
	adds r0, r4, #0
	bl play_sound
_08034334:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803433C: .4byte gGame
_08034340: .4byte 0x000082B6
_08034344: .4byte 0x00000577
	.syntax divided
