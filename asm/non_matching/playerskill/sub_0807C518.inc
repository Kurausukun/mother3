	.syntax unified
sub_0807C518:
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r4, [r1]
	ldr r3, [r4, #0x1c]
	adds r3, #0xe0
	movs r0, #0
	ldrsh r1, [r3, r0]
	adds r0, r5, #0
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
