	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x28]
	adds r0, #1
	movs r5, #0
	strh r0, [r4, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _080855AC
	adds r0, r4, #0
	bl sub_080855D0
	str r5, [r4, #0x2c]
	movs r0, #1
	strh r0, [r4, #0x28]
_080855AC:
	strh r5, [r4, #0x2a]
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
