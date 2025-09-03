	.syntax unified
sub_0807DDCC:
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08072858
	adds r5, r0, #0
	ldr r0, [r4, #0x1c]
	adds r0, #0xc0
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	strb r0, [r5, #0xe]
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
