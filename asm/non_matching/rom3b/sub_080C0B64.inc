	.syntax unified
sub_080C0B64:
	push {lr}
	ldr r2, _080C0B74
	str r2, [r0, #0x1c]
	bl sub_08083144
	pop {r0}
	bx r0
	.align 2, 0
_080C0B74: .4byte vt_09F7DD98
	.syntax divided
