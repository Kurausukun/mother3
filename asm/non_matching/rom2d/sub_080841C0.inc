	.syntax unified
sub_080841C0:
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2a]
	adds r0, #1
	movs r5, #0
	strh r0, [r4, #0x2a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _080841E0
	adds r0, r4, #0
	bl sub_08084204
	str r5, [r4, #0x30]
	movs r0, #1
	strh r0, [r4, #0x2a]
_080841E0:
	strh r5, [r4, #0x2c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
