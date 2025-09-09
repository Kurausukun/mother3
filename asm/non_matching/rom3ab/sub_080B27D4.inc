	.syntax unified
sub_080B27D4:
	push {lr}
	ldr r2, _080B27E4
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B27E4: .4byte vt_09F72120
	.syntax divided
