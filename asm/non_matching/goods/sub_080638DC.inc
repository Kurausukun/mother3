	.syntax unified
sub_080638DC:
	lsls r1, r1, #2
	ldr r0, [r0, #0x78]
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
	.syntax divided
