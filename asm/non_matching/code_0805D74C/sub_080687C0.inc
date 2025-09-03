	.syntax unified
sub_080687C0:
	ldrb r2, [r0]
	strb r2, [r1]
	ldr r2, [r0, #0x18]
	movs r3, #0
	strh r2, [r1, #2]
	ldrh r2, [r0, #0x1c]
	strh r2, [r1, #4]
	strb r3, [r1, #6]
	strb r3, [r1, #7]
	strb r3, [r1, #8]
	ldr r0, [r0, #0x30]
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
	.syntax divided
