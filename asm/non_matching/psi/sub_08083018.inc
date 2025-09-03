	.syntax unified
	ldr r0, [r0, #0x48]
	adds r0, #0x34
	ldrb r1, [r0]
	movs r0, #0x64
	subs r0, r0, r1
	bx lr
	.syntax divided
