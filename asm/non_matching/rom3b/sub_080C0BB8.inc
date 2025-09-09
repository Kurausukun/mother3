	.syntax unified
sub_080C0BB8:
	push {lr}
	ldr r2, _080C0BC8
	str r2, [r0, #0x1c]
	bl sub_0806D9A4
	pop {r0}
	bx r0
	.align 2, 0
_080C0BC8: .4byte vt_09F7E890
	.syntax divided
