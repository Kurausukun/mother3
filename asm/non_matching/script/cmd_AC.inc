	.syntax unified
cmd_AC:
	push {lr}
	movs r1, #0
	bl scriptstack_peek
	ldr r2, _080217B0
	ldrb r0, [r2, #1]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #1]
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_080217B0: .4byte gGame
	.syntax divided
