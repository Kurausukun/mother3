	.syntax unified
sub_08083B40:
	ldr r0, [r0, #0x24]
	ldrb r0, [r0, #0x19]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
	.syntax divided
