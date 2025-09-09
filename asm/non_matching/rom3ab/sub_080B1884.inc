	.syntax unified
sub_080B1884:
	push {lr}
	ldr r2, _080B1894
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B1894: .4byte vt_09F72120
	.syntax divided
