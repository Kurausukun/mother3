	.syntax unified
	push {lr}
	ldr r2, _0808AE34
	str r2, [r0, #0x1c]
	bl sub_0806E8BC
	pop {r0}
	bx r0
	.align 2, 0
_0808AE34: .4byte vt_09F857A0
	.syntax divided
