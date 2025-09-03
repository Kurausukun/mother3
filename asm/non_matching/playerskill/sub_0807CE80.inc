	.syntax unified
	push {lr}
	ldr r0, [r0, #0x78]
	ldr r1, [r0, #0x1c]
	adds r1, #0xc0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.syntax divided
