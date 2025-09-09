	.syntax unified
sub_080BC15C:
	push {lr}
	ldr r2, _080BC16C
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BC16C: .4byte vt_09F772F8
	.syntax divided
