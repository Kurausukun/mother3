	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08052678
	adds r0, r4, #0
	bl sub_0805255C
	adds r0, r4, #0
	bl sub_080552B8
	adds r0, r4, #0
	movs r1, #0
	bl sub_08052AFC
	ldr r4, _08052520
	ldr r1, _08052524
	adds r0, r4, r1
	ldrh r1, [r0]
	ldrh r0, [r4, #4]
	cmp r0, r1
	blo _0805252C
	cmp r1, #1
	bls _08052528
	subs r0, r1, #1
	b _0805252A
	.align 2, 0
_08052520: .4byte gUnknown_02018E28
_08052524: .4byte 0x0000146C
_08052528:
	movs r0, #0
_0805252A:
	strh r0, [r4, #4]
_0805252C:
	ldrh r3, [r4, #8]
	adds r2, r3, #0
	cmp r2, #0
	beq _08052556
	cmp r1, r2
	blo _08052552
	subs r0, r1, r3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r1, r0
	bhs _08052556
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r2, r0
	bls _08052552
	subs r0, r3, r0
	b _08052554
_08052552:
	movs r0, #0
_08052554:
	strh r0, [r4, #8]
_08052556:
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
