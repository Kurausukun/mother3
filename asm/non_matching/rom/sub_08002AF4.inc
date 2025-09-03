	.syntax unified
sub_08002AF4:
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	adds r1, r0, #2
	movs r3, #0
_08002AFE:
	adds r2, r1, #0
	adds r0, r2, #4
	ldrh r1, [r2]
	lsls r1, r1, #2
	adds r1, r0, r1
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r4
	bls _08002AFE
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
