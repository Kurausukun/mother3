	.syntax unified
sub_080C0BCC:
	push {lr}
	ldr r2, _080C0BDC
	str r2, [r0, #0x1c]
	bl sub_08071B7C
	pop {r0}
	bx r0
	.align 2, 0
_080C0BDC: .4byte vt_09F7E988
	.syntax divided
