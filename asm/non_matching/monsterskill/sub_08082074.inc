	.syntax unified
sub_08082074:
	push {lr}
	ldr r2, _08082084
	str r2, [r0, #0x1c]
	bl _._6Action
	pop {r0}
	bx r0
	.align 2, 0
_08082084: .4byte vt_09F83548
	.syntax divided
