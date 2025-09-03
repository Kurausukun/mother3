	.syntax unified
sub_080707C4:
	push {r4, lr}
	adds r4, r0, #0
	bl get__13SystemManager
	ldr r1, [r0, #0x1c]
	adds r1, #0x98
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
