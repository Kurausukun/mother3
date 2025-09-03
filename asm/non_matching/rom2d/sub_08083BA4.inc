	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r1, #0x24]
	adds r0, #0x3b
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_08077D8C
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
