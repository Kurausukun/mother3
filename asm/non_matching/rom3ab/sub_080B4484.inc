	.syntax unified
sub_080B4484:
	push {lr}
	ldr r2, _080B4494
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B4494: .4byte vt_09F72120
	.syntax divided
