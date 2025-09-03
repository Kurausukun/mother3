	.syntax unified
sub_080557C0:
	push {r4, r5, r6, lr}
	movs r5, #0xfa
	ldr r6, _080557F0
	movs r4, #0
_080557C8:
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
	bls _080557C8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080557F0: .4byte gUnknown_0201AE20
	.syntax divided
