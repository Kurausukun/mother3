	.syntax unified
	push {r4, r5, lr}
	adds r3, r0, #0
	ldrh r5, [r1, #4]
	cmp r5, #0
	bne _0803A4C8
	ldr r4, _0803A498
	ldr r0, _0803A49C
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	ldrh r1, [r3, #2]
	ands r0, r1
	cmp r0, #0
	beq _0803A4A4
	movs r0, #0xd2
	bl play_sound
	ldr r0, _0803A4A0
	adds r2, r4, r0
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bls _0803A4C8
	strh r5, [r2]
	b _0803A4C8
	.align 2, 0
_0803A498: .4byte gSomeBlend
_0803A49C: .4byte 0x00003668
_0803A4A0: .4byte 0x00003616
_0803A4A4:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803A4C8
	movs r0, #0xd2
	bl play_sound
	ldr r0, _0803A4C0
	adds r2, r4, r0
	ldrh r0, [r2]
	cmp r0, #1
	bhs _0803A4C4
	movs r0, #4
	b _0803A4C6
	.align 2, 0
_0803A4C0: .4byte 0x00003616
_0803A4C4:
	subs r0, #1
_0803A4C6:
	strh r0, [r2]
_0803A4C8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
