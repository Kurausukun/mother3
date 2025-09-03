	.syntax unified
	push {lr}
	adds r2, r0, #0
	ldr r0, _08077DB4
	str r0, [r2, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08077DAE
	adds r0, r2, #0
	bl __builtin_delete
_08077DAE:
	pop {r0}
	bx r0
	.align 2, 0
_08077DB4: .4byte vt_09F81DA0
	.syntax divided
