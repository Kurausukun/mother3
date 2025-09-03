	.syntax unified
sub_08080620:
	ldr r0, [r0, #0x48]
	adds r0, #0x23
	ldrb r0, [r0]
	bx lr
	.syntax divided
