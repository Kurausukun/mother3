	.syntax unified
sub_080B1760:
	push {lr}
	ldr r2, _080B1770
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B1770: .4byte vt_09F72120
	.syntax divided
