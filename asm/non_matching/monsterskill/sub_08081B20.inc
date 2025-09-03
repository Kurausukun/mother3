	.syntax unified
	push {r4, r5, lr}
	movs r3, #0x9e
	lsls r3, r3, #1
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r3, [r0, #0x1c]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r3, r3, r4
	movs r5, #0
	ldrsh r4, [r3, r5]
	adds r0, r0, r4
	ldr r3, [r3, #4]
	bl _call_via_r3
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
