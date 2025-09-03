	.syntax unified
	push {r4, r5, r6, r7, lr}
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	movs r3, #0
	cmp r3, r6
	bhs _08054718
	adds r5, r0, #0
	adds r5, #0x3c
	adds r4, r0, #0
	adds r4, #0x4c
_080546F0:
	movs r0, #0
	adds r2, r3, #1
_080546F4:
	adds r3, r5, r0
	ldrb r1, [r3]
	cmp r1, #0
	bne _08054706
	strb r7, [r3]
	lsls r0, r0, #1
	adds r0, r4, r0
	strh r1, [r0]
	b _08054710
_08054706:
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _080546F4
_08054710:
	lsls r0, r2, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r6
	blo _080546F0
_08054718:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
