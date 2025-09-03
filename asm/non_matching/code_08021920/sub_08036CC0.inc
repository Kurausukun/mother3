	.syntax unified
	lsls r0, r0, #0x10
	ldr r1, _08036CCC
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0
_08036CCC: .4byte 0xFFFD0000
	.syntax divided
