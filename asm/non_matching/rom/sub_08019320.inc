	.syntax unified
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0xf0
	ldr r6, _08019378
	movs r5, #0x78
	cmp r1, #3
	bne _08019380
	movs r1, #0
	ldr r2, _0801937C
_08019338:
	lsls r0, r1, #1
	adds r0, r0, r2
	strh r3, [r0]
	adds r0, r1, #0
	adds r0, #0x50
	lsls r0, r0, #1
	adds r0, r0, r2
	strh r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x4f
	bls _08019338
	movs r1, #0
	cmp r1, r4
	bhs _080193C2
	ldr r2, _0801937C
_0801935A:
	lsls r0, r1, #1
	adds r0, r0, r2
	strh r6, [r0]
	adds r0, r1, #0
	adds r0, #0x50
	lsls r0, r0, #1
	adds r0, r0, r2
	strh r5, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r4
	blo _0801935A
	b _080193C2
	.align 2, 0
_08019378: .4byte 0x000078F0
_0801937C: .4byte gUnknown_02029238
_08019380:
	movs r1, #0
	ldr r2, _080193C8
_08019384:
	lsls r0, r1, #1
	adds r0, r0, r2
	strh r6, [r0]
	adds r0, r1, #0
	adds r0, #0x50
	lsls r0, r0, #1
	adds r0, r0, r2
	strh r5, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x4f
	bls _08019384
	movs r1, #0
	cmp r1, r4
	bhs _080193C2
	ldr r3, _080193C8
	movs r2, #0
_080193A8:
	lsls r0, r1, #1
	adds r0, r0, r3
	strh r2, [r0]
	adds r0, r1, #0
	adds r0, #0x50
	lsls r0, r0, #1
	adds r0, r0, r3
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r4
	blo _080193A8
_080193C2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080193C8: .4byte gUnknown_02029238
	.syntax divided
