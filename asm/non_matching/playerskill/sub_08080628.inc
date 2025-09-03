	.syntax unified
sub_08080628:
	ldr r0, [r0, #0x48]
	adds r0, #0x24
	ldrb r0, [r0]
	bx lr
	.syntax divided
