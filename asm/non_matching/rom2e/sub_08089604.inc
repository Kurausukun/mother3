	.syntax unified
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x28]
	cmp r0, #0
	bne _08089612
	str r1, [r3, #0x28]
	b _08089620
_08089612:
	adds r2, r0, #0
	b _08089618
_08089616:
	ldr r2, [r2, #0x24]
_08089618:
	ldr r0, [r2, #0x24]
	cmp r0, #0
	bne _08089616
	str r1, [r2, #0x24]
_08089620:
	str r3, [r1, #0x20]
	adds r0, r1, #0
	pop {r1}
	bx r1
	.syntax divided
