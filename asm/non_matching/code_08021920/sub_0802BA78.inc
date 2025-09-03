	.syntax unified
sub_0802BA78:
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r4, #1
	lsls r4, r1
	ldr r3, [r0, #0x38]
	bics r3, r4
	lsls r2, r1
	orrs r3, r2
	str r3, [r0, #0x38]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
