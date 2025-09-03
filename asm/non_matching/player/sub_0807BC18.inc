	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	bl setPP__4Uniti
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r5, r4, r0
	ldr r0, [r4, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_0808AF10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
