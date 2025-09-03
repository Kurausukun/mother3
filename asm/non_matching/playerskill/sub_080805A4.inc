	.syntax unified
	ldr r0, [r0, #0x48]
	ldrb r0, [r0, #0x16]
	bx lr
	.align 2, 0
	.syntax divided
