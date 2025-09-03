	.syntax unified
sub_08053148:
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
	ldr r4, _08053180
	ldr r1, _08053184
	adds r0, r4, r1
	ldrh r0, [r0]
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r4, #4]
	cmp r0, r1
	blo _0805318C
	cmp r1, #1
	bls _08053188
	subs r0, r1, #1
	b _0805318A
	.align 2, 0
_08053180: .4byte gUnknown_02018FE8
_08053184: .4byte 0x000012AC
_08053188:
	movs r0, #0
_0805318A:
	strh r0, [r4, #4]
_0805318C:
	ldrh r3, [r4, #8]
	adds r2, r3, #0
	cmp r2, #0
	beq _080531C2
	cmp r1, r2
	blo _080531BE
	subs r0, r1, r3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r1, r0
	bhs _080531C2
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r2, r0
	bls _080531BE
	subs r1, r3, r0
	strh r1, [r4, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080531C2
	adds r0, r1, #1
	b _080531C0
_080531BE:
	movs r0, #0
_080531C0:
	strh r0, [r4, #8]
_080531C2:
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
