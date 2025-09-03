	.syntax unified
sub_08052FC8:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08052678
	adds r0, r4, #0
	bl sub_0805255C
	adds r0, r4, #0
	bl sub_080552B8
	ldr r4, _08052FF8
	ldr r1, _08052FFC
	adds r0, r4, r1
	ldrh r0, [r0]
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r4, #4]
	cmp r0, r1
	blo _08053004
	cmp r1, #1
	bls _08053000
	subs r0, r1, #1
	b _08053002
	.align 2, 0
_08052FF8: .4byte gUnknown_02018F88
_08052FFC: .4byte 0x0000130C
_08053000:
	movs r0, #0
_08053002:
	strh r0, [r4, #4]
_08053004:
	ldrh r3, [r4, #8]
	adds r2, r3, #0
	cmp r2, #0
	beq _0805302E
	cmp r1, r2
	blo _0805302A
	subs r0, r1, r3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r4, #6]
	cmp r1, r0
	bhs _0805302E
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r2, r0
	bls _0805302A
	subs r0, r3, r0
	b _0805302C
_0805302A:
	movs r0, #0
_0805302C:
	strh r0, [r4, #8]
_0805302E:
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
