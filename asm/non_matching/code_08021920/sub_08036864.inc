	.syntax unified
sub_08036864:
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	cmp r0, r4
	beq _080368FC
	bl get_obj_direct
	adds r5, r0, #0
	adds r0, r4, #0
	bl get_obj_direct
	adds r3, r0, #0
	adds r0, r5, #0
	adds r0, #0x8b
	ldrb r0, [r0]
	movs r2, #7
	ands r2, r0
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r4, #0
	ldrsh r0, [r3, r4]
	subs r0, r1, r0
	cmp r0, #0
	bge _0803689A
	rsbs r0, r0, #0
_0803689A:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #2
	ldrsh r1, [r5, r6]
	movs r6, #2
	ldrsh r0, [r3, r6]
	subs r0, r1, r0
	cmp r0, #0
	bge _080368AE
	rsbs r0, r0, #0
_080368AE:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bls _080368D6
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r1, r0
	ble _080368CC
	cmp r2, #7
	bgt _080368FC
	cmp r2, #5
	bge _080368F8
	b _080368FC
_080368CC:
	cmp r2, #3
	bgt _080368FC
	cmp r2, #1
	bge _080368F8
	b _080368FC
_080368D6:
	movs r6, #2
	ldrsh r1, [r5, r6]
	movs r4, #2
	ldrsh r0, [r3, r4]
	cmp r1, r0
	ble _080368F0
	cmp r2, #0
	blt _080368FC
	cmp r2, #1
	ble _080368F8
	cmp r2, #7
	beq _080368F8
	b _080368FC
_080368F0:
	cmp r2, #5
	bgt _080368FC
	cmp r2, #3
	blt _080368FC
_080368F8:
	movs r0, #1
	b _080368FE
_080368FC:
	movs r0, #0
_080368FE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided
