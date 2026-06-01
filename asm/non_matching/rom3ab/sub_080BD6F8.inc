	.syntax unified
sub_080BD6F8:
	push {lr}
	ldr r2, _080BD708
	str r2, [r0, #0x1c]
	bl  _._3Psi
	pop {r0}
	bx r0
	.align 2, 0
_080BD708: .4byte _vt.10DefaultPsi
	.syntax divided
