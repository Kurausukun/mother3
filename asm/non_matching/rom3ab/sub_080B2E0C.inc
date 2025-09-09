	.syntax unified
sub_080B2E0C:
	push {lr}
	ldr r2, _080B2E1C
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B2E1C: .4byte vt_09F72120
	.syntax divided
