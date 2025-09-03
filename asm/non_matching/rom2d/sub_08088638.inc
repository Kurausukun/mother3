	.syntax unified
	push {lr}
	adds r2, r0, #0
	ldr r0, _08088654
	str r0, [r2, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808864E
	adds r0, r2, #0
	bl __builtin_delete
_0808864E:
	pop {r0}
	bx r0
	.align 2, 0
_08088654: .4byte vt_09F85038
	.syntax divided
