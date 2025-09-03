	.syntax unified
	push {lr}
	adds r1, r0, #0
	adds r1, #0x54
	ldrh r2, [r1]
	movs r1, #0x64
	muls r2, r1, r2
	adds r0, #0x50
	ldrh r1, [r0]
	adds r0, r2, #0
	bl sub_0807066C
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
