	.syntax unified
sub_0806DF88:
	adds r0, #0x38
	ldrb r0, [r0]
	lsrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	bx lr
	.syntax divided
