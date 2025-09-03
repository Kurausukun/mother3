	.syntax unified
	push {r4, lr}
	movs r2, #0x86
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	adds r2, #0x98
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r0, r0, r3
	ldr r2, [r2, #4]
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
