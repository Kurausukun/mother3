	.syntax unified
sub_0807C108:
	movs r1, #0xc2
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
	.syntax divided
