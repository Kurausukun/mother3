	.syntax unified
sub_0809B398:
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
	.syntax divided
