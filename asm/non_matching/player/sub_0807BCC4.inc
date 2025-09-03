	.syntax unified
	adds r0, #0xfc
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	bx lr
	.syntax divided
