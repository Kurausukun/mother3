	.syntax unified
	push {r4, lr}
	bl sub_08053234
	ldr r4, _080531EC
	ldr r1, _080531F0
	adds r0, r4, r1
	ldrh r0, [r0]
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r4, #4]
	cmp r0, r1
	blo _080531F8
	cmp r1, #1
	bls _080531F4
	subs r0, r1, #1
	b _080531F6
	.align 2, 0
_080531EC: .4byte gUnknown_02019008
_080531F0: .4byte 0x000012A2
_080531F4:
	movs r0, #0
_080531F6:
	strh r0, [r4, #4]
_080531F8:
	ldrh r3, [r4, #8]
	adds r2, r3, #0
	cmp r2, #0
	beq _0805322E
	cmp r1, r2
	blo _0805322A
	subs r0, r1, r3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r1, r0
	bhs _0805322E
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r2, r0
	bls _0805322A
	subs r1, r3, r0
	strh r1, [r4, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805322E
	adds r0, r1, #1
	b _0805322C
_0805322A:
	movs r0, #0
_0805322C:
	strh r0, [r4, #8]
_0805322E:
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
