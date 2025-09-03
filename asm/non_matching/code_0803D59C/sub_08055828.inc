	.syntax unified
	push {r4, r5, r6, lr}
	movs r5, #0x87
	lsls r5, r5, #1
	ldr r6, _08055858
	movs r4, #0
_08055832:
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
	bls _08055832
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08055858: .4byte gUnknown_0201AE20
	.syntax divided
