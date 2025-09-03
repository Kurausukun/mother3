	.syntax unified
sub_08060E0C:
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [r0, #0x24]
	adds r0, #0x10
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
	.syntax divided
