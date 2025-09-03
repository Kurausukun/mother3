	.syntax unified
sub_08081A50:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r3, [r1]
	ldr r2, [r3, #0x1c]
	subs r0, #0x2c
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	adds r0, r4, #0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
