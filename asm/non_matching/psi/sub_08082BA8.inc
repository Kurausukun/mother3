	.syntax unified
	push {lr}
	ldr r2, _08082BB8 @ =vt_09F83958
	str r2, [r0, #0x1c]
	bl _._6Action
	pop {r0}
	bx r0
	.align 2, 0
_08082BB8: .4byte vt_09F83958
	.syntax divided
