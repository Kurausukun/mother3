	.syntax unified
sub_080B2D88:
	push {lr}
	ldr r2, _080B2D98
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B2D98: .4byte vt_09F72120
	.syntax divided
