	.syntax unified
getTextAtOffset__3Msgi:
	lsls r1, r1, #1
	ldr r0, [r0]
	adds r0, r0, r1
	bx lr
	.syntax divided
