	.syntax unified
sub_080293C8:
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r0, _08029414
	ldr r1, _08029418
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r6, r1
	bhs _0802940E
	adds r7, r0, #0
_080293DA:
	adds r0, r6, #0
	bl get_char_stats
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_0802B874
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0802941C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080294DC
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080295E8
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrb r0, [r7]
	cmp r6, r0
	blo _080293DA
_0802940E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029414: .4byte gGame
_08029418: .4byte 0x00008299
	.syntax divided
