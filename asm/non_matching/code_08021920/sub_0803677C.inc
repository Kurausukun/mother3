	.syntax unified
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r4, #0
	ldrsh r0, [r3, r4]
	subs r0, r1, r0
	cmp r0, #0
	bge _08036792
	rsbs r0, r0, #0
_08036792:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r5, #2
	ldrsh r1, [r2, r5]
	movs r5, #2
	ldrsh r0, [r3, r5]
	subs r0, r1, r0
	cmp r0, #0
	bge _080367A6
	rsbs r0, r0, #0
_080367A6:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bls _080367C0
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r2, #0
	ldrsh r0, [r3, r2]
	movs r2, #6
	cmp r1, r0
	ble _080367D0
	movs r2, #2
	b _080367D0
_080367C0:
	movs r4, #2
	ldrsh r1, [r2, r4]
	movs r5, #2
	ldrsh r0, [r3, r5]
	movs r2, #0
	cmp r1, r0
	ble _080367D0
	movs r2, #4
_080367D0:
	adds r0, r2, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
