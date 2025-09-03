	.syntax unified
sub_08083B34:
	ldr r0, [r0, #0x24]
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
	.syntax divided
