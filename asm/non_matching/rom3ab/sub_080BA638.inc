	.syntax unified
sub_080BA638:
	push {lr}
	ldr r2, _080BA648
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BA648: .4byte vt_09F772F8
	.syntax divided
