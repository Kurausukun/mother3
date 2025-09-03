	.syntax unified
sub_08083B78:
	ldr r0, [r0, #0x24]
	adds r0, #0x36
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
	.syntax divided
