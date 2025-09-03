	.syntax unified
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	movs r4, #0x80
	lsls r4, r4, #0x11
	adds r1, r1, r4
	lsrs r1, r1, #0x10
	cmp r1, #0x1f
	bls _08022A06
	movs r0, #0
	b _08022A10
_08022A06:
	adds r1, r3, #0
	bl sub_08022A18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_08022A10:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
