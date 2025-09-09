	.syntax unified
sub_0809E674:
	push {lr}
	adds r0, r1, #0
	ldr r1, [r0, #0x1c]
	movs r2, #0xa8
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0xf
	bl _call_via_r2
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
