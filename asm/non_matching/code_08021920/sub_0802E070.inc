	.syntax unified
sub_0802E070:
	adds r0, #0xc6
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
	.syntax divided
