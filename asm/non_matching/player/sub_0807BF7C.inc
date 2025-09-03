	.syntax unified
sub_0807BF7C:
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r1, r1, #1
	ldr r0, [r0, #8]
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.syntax divided
