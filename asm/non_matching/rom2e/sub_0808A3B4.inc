	.syntax unified
sub_0808A3B4:
	push {lr}
	ldr r2, _0808A3C4
	str r2, [r0, #0x1c]
	bl sub_080895C0
	pop {r0}
	bx r0
	.align 2, 0
_0808A3C4: .4byte vt_09F85378
	.syntax divided
