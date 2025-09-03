	.syntax unified
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0x2c]
	adds r0, #1
	strh r0, [r1, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x15
	bls _08084200
	adds r0, r1, #0
	bl sub_080841C0
_08084200:
	pop {r0}
	bx r0
	.syntax divided
