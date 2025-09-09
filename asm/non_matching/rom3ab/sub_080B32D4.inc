	.syntax unified
sub_080B32D4:
	push {lr}
	ldr r2, _080B32E4
	str r2, [r0, #0x1c]
	bl sub_08082074
	pop {r0}
	bx r0
	.align 2, 0
_080B32E4: .4byte vt_09F72120
	.syntax divided
