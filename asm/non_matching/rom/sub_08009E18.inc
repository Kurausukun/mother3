	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_0800A0A4
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009E38
	adds r0, r4, #0
	bl sub_08009F70
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
