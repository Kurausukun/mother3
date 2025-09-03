	.syntax unified
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08064574
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
