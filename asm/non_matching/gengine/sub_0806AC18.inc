	.syntax unified
sub_0806AC18:
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, #0x38
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.syntax divided
