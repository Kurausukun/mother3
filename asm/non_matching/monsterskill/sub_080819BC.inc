	.syntax unified
sub_080819BC:
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r4, [r1]
	ldr r3, [r4, #0x1c]
	subs r0, #0x1c
	adds r3, r3, r0
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
	.syntax divided
