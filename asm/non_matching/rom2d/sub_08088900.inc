	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, r2, #0
	adds r5, r3, #0
	ldr r3, [r4, #4]
	str r3, [sp]
	adds r2, r4, #0
	ldm r1!, {r6, r7}
	stm r2!, {r6, r7}
	str r3, [r4, #4]
	bl sub_0806D648
	str r0, [r4, #8]
	adds r0, r5, #0
	bl sub_0806D53C
	str r0, [r4, #0xc]
	movs r0, #1
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
