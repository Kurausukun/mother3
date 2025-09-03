	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0
	movs r2, #0
	cmp r3, r1
	bhs _080137A0
_08013788:
	ldm r4!, {r0}
	lsrs r0, r0, #0xe
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r1
	blo _08013788
_080137A0:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
