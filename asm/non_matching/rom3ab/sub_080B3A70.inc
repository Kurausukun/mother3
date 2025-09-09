	.syntax unified
sub_080B3A70:
	push {lr}
	ldr r2, _080B3A80
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B3A80: .4byte vt_09F72120
	.syntax divided
