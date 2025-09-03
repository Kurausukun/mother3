	.syntax unified
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x30
	adds r0, r5, #0
	bl sub_0806DF94
	adds r4, r0, #0
	adds r4, #1
	adds r0, r5, #0
	bl sub_0806DF98
	cmp r4, r0
	blt _0808A260
	cmp r6, #0
	beq _0808A260
	ldr r1, [r6, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0808A260:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
