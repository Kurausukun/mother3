	.syntax unified
sub_08070B80:
	adds r0, #0x39
	ldrb r0, [r0]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	bx lr
	.syntax divided
