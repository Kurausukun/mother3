	.syntax unified
_._7PkFlash:
	push {lr}
	ldr r2, _080BCFA8
	str r2, [r0, #0x1c]
	bl  _._3Psi
	pop {r0}
	bx r0
	.align 2, 0
_080BCFA8: .4byte _vt.10DefaultPsi
	.syntax divided
