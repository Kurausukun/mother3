	.syntax unified
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #3
	bl scriptstack_peek
	ldr r4, _08021794
	movs r5, #1
	ands r0, r5
	ldrb r2, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #8]
	adds r0, r6, #0
	movs r1, #2
	bl scriptstack_peek
	ands r0, r5
	lsls r0, r0, #2
	ldrb r2, [r4, #8]
	movs r1, #5
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #8]
	adds r0, r6, #0
	movs r1, #1
	bl scriptstack_peek
	ands r0, r5
	lsls r0, r0, #3
	ldrb r2, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #8]
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08021794: .4byte gGame
	.syntax divided
