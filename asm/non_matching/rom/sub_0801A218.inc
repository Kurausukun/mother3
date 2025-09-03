	.syntax unified
sub_0801A218:
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0801A21E:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0801A238
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #2
	bls _0801A21E
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
