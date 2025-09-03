	.syntax unified
sub_0801A3AC:
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r4, #0
	lsls r5, r2, #0x10
_0801A3BA:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	asrs r3, r5, #0x10
	bl sub_0801A3D8
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #2
	bls _0801A3BA
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
