	.syntax unified
	ldr r0, [r0, #0x48]
	adds r0, #0x29
	ldrb r0, [r0]
	bx lr
	.syntax divided
