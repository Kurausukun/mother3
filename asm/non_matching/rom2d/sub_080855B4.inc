	.syntax unified
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0x2a]
	adds r0, #1
	strh r0, [r1, #0x2a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xe
	bls _080855CC
	adds r0, r1, #0
	bl sub_0808558C
_080855CC:
	pop {r0}
	bx r0
	.syntax divided
