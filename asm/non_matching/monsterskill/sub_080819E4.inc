	.syntax unified
	push {lr}
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
