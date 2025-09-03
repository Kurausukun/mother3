	.syntax unified
sub_0803A3C8:
	push {lr}
	ldrh r2, [r1, #4]
	cmp r2, #1
	beq _0803A3E6
	cmp r2, #1
	bgt _0803A3DA
	cmp r2, #0
	beq _0803A3E0
	b _0803A448
_0803A3DA:
	cmp r2, #2
	beq _0803A41C
	b _0803A448
_0803A3E0:
	bl sub_0803A458
	b _0803A448
_0803A3E6:
	movs r0, #0xd2
	bl play_sound
	ldr r1, _0803A410
	ldr r0, _0803A414
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1]
	ldr r3, _0803A418
	ldrb r2, [r3, #8]
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #3
	movs r0, #9
	rsbs r0, r0, #0
	b _0803A442
	.align 2, 0
_0803A410: .4byte gSomeBlend
_0803A414: .4byte 0x00003668
_0803A418: .4byte gGame
_0803A41C:
	movs r0, #0xd2
	bl play_sound
	ldr r1, _0803A44C
	ldr r0, _0803A450
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1]
	ldr r3, _0803A454
	ldrb r2, [r3, #8]
	lsls r0, r2, #0x1b
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #4
	movs r0, #0x11
	rsbs r0, r0, #0
_0803A442:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #8]
_0803A448:
	pop {r0}
	bx r0
	.align 2, 0
_0803A44C: .4byte gSomeBlend
_0803A450: .4byte 0x00003668
_0803A454: .4byte gGame
	.syntax divided
