	.syntax unified
sub_080B3B7C:
	push {lr}
	ldr r2, _080B3B8C
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B3B8C: .4byte vt_09F72120
	.syntax divided
