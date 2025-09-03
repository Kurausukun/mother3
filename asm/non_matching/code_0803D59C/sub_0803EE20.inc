	.syntax unified
	push {lr}
	ldrh r1, [r0, #8]
	movs r1, #0x40
	strh r1, [r0, #8]
	movs r1, #0
	bl sub_0803EE34
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
