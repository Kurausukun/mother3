	.syntax unified
	push {lr}
	ldr r2, _0806FA10
	str r2, [r0, #0x1c]
	bl sub_080894DC
	pop {r0}
	bx r0
	.align 2, 0
_0806FA10: .4byte vt_09F80470
	.syntax divided
