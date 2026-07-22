	.syntax unified
_._8HealingB:
	push {lr}
	ldr r2, _080BC698
	str r2, [r0, #0x1c]
	bl  _._3Psi
	pop {r0}
	bx r0
	.align 2, 0
_080BC698: .4byte _vt.10DefaultPsi
	.syntax divided
