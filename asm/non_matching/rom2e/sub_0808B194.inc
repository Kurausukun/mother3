	.syntax unified
sub_0808B194:
	push {lr}
	ldr r2, _0808B1A4
	str r2, [r0, #0x1c]
	bl sub_0806D9A4
	pop {r0}
	bx r0
	.align 2, 0
_0808B1A4: .4byte vt_09F85A30
	.syntax divided
