	.syntax unified
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08065148
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
