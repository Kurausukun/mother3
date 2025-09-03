	.syntax unified
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r0, [r0]
	bx lr
	.syntax divided
