	.syntax unified
	push {lr}
	adds r1, r0, #0
	b _08089588
_08089586:
	ldr r1, [r1, #0x20]
_08089588:
	ldr r0, [r1, #0x20]
	cmp r0, #0
	bne _08089586
	adds r0, r1, #0
	pop {r1}
	bx r1
	.syntax divided
