	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0xfa
	lsls r0, r0, #2
	bl sub_08036D60
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #5
	adds r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
