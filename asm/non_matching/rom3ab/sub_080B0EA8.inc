	.syntax unified
sub_080B0EA8:
	push {lr}
	ldr r2, _080B0EB8
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B0EB8: .4byte vt_09F72120
	.syntax divided
