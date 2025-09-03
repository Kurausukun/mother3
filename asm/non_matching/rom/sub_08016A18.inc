	.syntax unified
sub_08016A18:
	push {lr}
	bl sub_08015A64
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
