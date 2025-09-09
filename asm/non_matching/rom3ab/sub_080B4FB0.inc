	.syntax unified
sub_080B4FB0:
	push {lr}
	ldr r2, _080B4FC0
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B4FC0: .4byte vt_09F72120
	.syntax divided
