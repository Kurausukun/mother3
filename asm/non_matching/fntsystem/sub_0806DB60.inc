	.syntax unified
sub_0806DB60:
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r0, #0x20]
	cmp r1, r2
	beq _0806DB70
	bl sub_0806DADC
_0806DB70:
	pop {r0}
	bx r0
	.syntax divided
