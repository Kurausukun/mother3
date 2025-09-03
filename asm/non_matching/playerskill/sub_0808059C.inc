	.syntax unified
	ldr r0, [r0, #0x48]
	ldrh r0, [r0, #0x14]
	bx lr
	.align 2, 0
	.syntax divided
