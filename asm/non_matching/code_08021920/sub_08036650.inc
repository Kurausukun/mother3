	.syntax unified
sub_08036650:
	push {r4, r5, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl get_obj_direct
	adds r5, r0, #0
	adds r0, r4, #0
	bl get_obj_direct
	adds r2, r0, #0
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r3, #0
	ldrsh r0, [r2, r3]
	subs r0, r1, r0
	cmp r0, #0
	bge _0803667A
	rsbs r0, r0, #0
_0803667A:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r4, #2
	ldrsh r1, [r5, r4]
	movs r4, #2
	ldrsh r0, [r2, r4]
	subs r0, r1, r0
	cmp r0, #0
	bge _0803668E
	rsbs r0, r0, #0
_0803668E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080366A8
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r3, #0
	ldrsh r0, [r2, r3]
	movs r2, #6
	cmp r1, r0
	ble _080366B8
	movs r2, #2
	b _080366B8
_080366A8:
	movs r4, #2
	ldrsh r1, [r5, r4]
	movs r3, #2
	ldrsh r0, [r2, r3]
	movs r2, #0
	cmp r1, r0
	ble _080366B8
	movs r2, #4
_080366B8:
	adds r0, r2, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
