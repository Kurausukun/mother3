	.syntax unified
sub_08083B94:
	ldr r0, [r0, #0x24]
	lsls r1, r1, #1
	adds r0, #0x20
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.syntax divided
