	.syntax unified
	push {lr}
	ldr r2, _08080434
	str r2, [r0, #0x1c]
	bl _._6Action
	pop {r0}
	bx r0
	.align 2, 0
_08080434: .4byte vt_09F82A28
	.syntax divided
