	.syntax unified
sub_080BACF4:
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xec
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x3c]
	subs r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
