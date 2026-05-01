	.syntax unified
sub_08082BA8:
	push {lr}
	ldr r2, _08082BB8 @ =_vt.3Psi
	str r2, [r0, #0x1c]
	bl _._6Action
	pop {r0}
	bx r0
	.align 2, 0
_08082BB8: .4byte _vt.3Psi
	.syntax divided
