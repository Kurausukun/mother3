	.syntax unified
	push {lr}
	ldr r1, [r1]
	str r1, [r0, #0x3c]
	adds r2, r0, #0
	adds r2, #0x49
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806E9E2
	movs r0, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_0806E9E2:
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
