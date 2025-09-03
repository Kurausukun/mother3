	.syntax unified
sub_0807DCC4:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	adds r4, #0xb0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	bl sub_08072858
	ldrb r1, [r0, #0xe]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
