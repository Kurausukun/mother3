	.syntax unified
sub_080B1144:
	push {lr}
	ldr r2, _080B1154
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B1154: .4byte vt_09F72120
	.syntax divided
