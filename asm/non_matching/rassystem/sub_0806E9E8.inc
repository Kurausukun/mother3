	.syntax unified
	push {lr}
	adds r2, r0, #0
	adds r2, #0x40
	strb r1, [r2]
	adds r2, #9
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806EA06
	movs r0, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_0806EA06:
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
