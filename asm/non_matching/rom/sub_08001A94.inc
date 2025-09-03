	.syntax unified
sub_08001A94:
	ldr r3, _08001AA8
	str r0, [r3]
	str r1, [r3, #4]
	lsrs r2, r2, #2
	movs r0, #0x84
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	bx lr
	.align 2, 0
_08001AA8: .4byte 0x040000B0
	.syntax divided
