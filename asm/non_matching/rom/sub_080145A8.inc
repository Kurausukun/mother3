	.syntax unified
sub_080145A8:
	ldr r2, _080145B8
	ldrb r1, [r2, #2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #2]
	bx lr
	.align 2, 0
_080145B8: .4byte gGame
	.syntax divided
