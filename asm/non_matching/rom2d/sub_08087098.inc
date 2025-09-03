	.syntax unified
sub_08087098:
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, #0x2c
	bl sub_0806DB38
	pop {r0}
	bx r0
	.syntax divided
