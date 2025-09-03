	.syntax unified
sub_08071F14:
	push {lr}
	ldr r2, _08071F24
	str r2, [r0, #0x1c]
	bl sub_0806D9A4
	pop {r0}
	bx r0
	.align 2, 0
_08071F24: .4byte vt_09F81000
	.syntax divided
