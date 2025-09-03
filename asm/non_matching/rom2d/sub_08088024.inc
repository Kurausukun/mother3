	.syntax unified
	push {lr}
	adds r2, r0, #0
	ldr r0, _08088040
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808803A
	adds r0, r2, #0
	bl __builtin_delete
_0808803A:
	pop {r0}
	bx r0
	.align 2, 0
_08088040: .4byte vt_09F85028
	.syntax divided
