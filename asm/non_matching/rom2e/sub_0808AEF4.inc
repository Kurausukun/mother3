	.syntax unified
	push {lr}
	ldr r2, _0808AF04
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_0808AF04: .4byte vt_09F85880
	.syntax divided
