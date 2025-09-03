	.syntax unified
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r0, #0x20]
	cmp r1, r2
	beq _0806DEFC
	bl sub_0806E098
_0806DEFC:
	pop {r0}
	bx r0
	.syntax divided
