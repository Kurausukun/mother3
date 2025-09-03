	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806BE14
	adds r4, #0x64
	movs r1, #4
	adds r2, r4, #0
	bl sub_0806C0B4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
