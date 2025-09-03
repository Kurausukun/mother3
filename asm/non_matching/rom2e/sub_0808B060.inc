	.syntax unified
	push {lr}
	ldr r2, _0808B070
	str r2, [r0, #0x1c]
	bl sub_0806D9A4
	pop {r0}
	bx r0
	.align 2, 0
_0808B070: .4byte vt_09F85938
	.syntax divided
