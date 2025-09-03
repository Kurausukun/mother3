	.syntax unified
	push {r4, r5, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	strh r0, [r4]
	adds r4, #2
	bl sub_0804865C
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r1, #0
	cmp r1, r2
	bhs _0804820A
_080481F8:
	ldrh r0, [r5]
	strh r0, [r4]
	adds r5, #2
	adds r4, #2
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	blo _080481F8
_0804820A:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
