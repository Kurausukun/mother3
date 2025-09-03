	.syntax unified
	push {lr}
	ldr r2, _08071B8C
	str r2, [r0, #0x1c]
	bl sub_0806D9A4
	pop {r0}
	bx r0
	.align 2, 0
_08071B8C: .4byte vt_09F80D18
	.syntax divided
