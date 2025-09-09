	.syntax unified
sub_080BB9EC:
	push {lr}
	ldr r2, _080BB9FC
	str r2, [r0, #0x1c]
	bl sub_0808264C
	pop {r0}
	bx r0
	.align 2, 0
_080BB9FC: .4byte vt_09F772F8
	.syntax divided
