	.syntax unified
	push {lr}
	ldr r2, _080867D0
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080867D0: .4byte vt_09F84948
	.syntax divided
