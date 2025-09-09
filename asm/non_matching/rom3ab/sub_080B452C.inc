	.syntax unified
sub_080B452C:
	push {lr}
	ldr r2, _080B453C
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B453C: .4byte vt_09F72120
	.syntax divided
