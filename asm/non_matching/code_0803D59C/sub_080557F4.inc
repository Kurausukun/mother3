	.syntax unified
sub_080557F4:
	push {r4, r5, r6, lr}
	movs r5, #0x82
	lsls r5, r5, #1
	ldr r6, _08055824
	movs r4, #0
_080557FE:
	adds r0, r5, #0
	bl sub_080486A0
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_08055890
	adds r6, #0x1e
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r4, #6
	bls _080557FE
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08055824: .4byte gUnknown_0201AE20
	.syntax divided
