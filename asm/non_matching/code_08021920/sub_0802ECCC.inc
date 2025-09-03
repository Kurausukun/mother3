	.syntax unified
	movs r3, #2
	ldrsh r2, [r1, r3]
	adds r0, #0xbc
	movs r1, #1
	ands r2, r1
	lsls r2, r2, #6
	ldrb r3, [r0]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r0]
	ldr r1, _0802ECF0
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	bx lr
	.align 2, 0
_0802ECF0: .4byte gObjectContinue
	.syntax divided
