	.syntax unified
sub_0803AD50:
	push {r4, lr}
	ldr r4, _0803AD94
	ldr r1, _0803AD98
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803AD8E
	ldr r3, _0803AD9C
	adds r1, r4, r3
	ldrh r0, [r1]
	cmp r0, #5
	bhi _0803AD86
	ldr r0, _0803ADA0
	ldrh r1, [r1]
	lsls r2, r1, #2
	adds r2, r2, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r3, #0x56
	adds r1, r4, r3
	adds r0, r0, r1
	ldr r1, [r2]
	bl _call_via_r1
_0803AD86:
	ldr r1, _0803ADA4
	adds r0, r4, r1
	bl sub_080393D8
_0803AD8E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803AD94: .4byte gSomeBlend
_0803AD98: .4byte 0x00003668
_0803AD9C: .4byte 0x00003612
_0803ADA0: .4byte gUnknown_08D2E1A8
_0803ADA4: .4byte 0x00003604
	.syntax divided
