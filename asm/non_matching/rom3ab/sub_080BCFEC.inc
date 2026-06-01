	.syntax unified
sub_080BCFEC:
	push {lr}
	ldr r2, _080BCFFC
	str r2, [r0, #0x1c]
	bl  _._3Psi
	pop {r0}
	bx r0
	.align 2, 0
_080BCFFC: .4byte _vt.10DefaultPsi
	.syntax divided
