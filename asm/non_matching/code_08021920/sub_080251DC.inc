	.syntax unified
sub_080251DC:
	ldrb r2, [r0, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0, #8]
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	bx lr
	.align 2, 0
	.syntax divided
