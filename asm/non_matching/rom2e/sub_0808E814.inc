	.syntax unified
sub_0808E814:
	push {lr}
	adds r2, r0, #0
	ldr r0, _0808E830
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808E82A
	adds r0, r2, #0
	bl __builtin_delete
_0808E82A:
	pop {r0}
	bx r0
	.align 2, 0
_0808E830: .4byte vt_09F85E70
	.syntax divided
