	.syntax unified
sub_08027C20:
	push {r4, r5, lr}
	ldr r5, _08027C3C
	ldrb r3, [r5, #8]
	movs r4, #1
	orrs r3, r4
	strb r3, [r5, #8]
	movs r3, #0
	strh r0, [r5]
	strh r1, [r5, #2]
	strh r2, [r5, #4]
	strh r3, [r5, #6]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027C3C: .4byte gUnknown_0201B794
	.syntax divided
