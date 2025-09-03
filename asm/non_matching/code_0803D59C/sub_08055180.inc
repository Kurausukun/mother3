	.syntax unified
sub_08055180:
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [r0, #0x38]
	lsrs r0, r1
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
	.syntax divided
