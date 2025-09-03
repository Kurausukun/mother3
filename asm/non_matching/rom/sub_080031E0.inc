	.syntax unified
	push {lr}
	bl sub_080030A4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
