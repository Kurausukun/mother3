	.syntax unified
sub_0807C614:
	push {r4, r5, lr}
	movs r3, #0x86
	lsls r3, r3, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r3, [r0, #0x1c]
	adds r3, #0xa8
	movs r5, #0
	ldrsh r4, [r3, r5]
	adds r0, r0, r4
	ldr r3, [r3, #4]
	bl _call_via_r3
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
