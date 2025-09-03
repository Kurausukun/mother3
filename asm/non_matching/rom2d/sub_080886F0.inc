	.syntax unified
	push {lr}
	adds r2, r0, #0
	ldr r0, _0808870C
	str r0, [r2, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08088706
	adds r0, r2, #0
	bl __builtin_delete
_08088706:
	pop {r0}
	bx r0
	.align 2, 0
_0808870C: .4byte vt_09F85048
	.syntax divided
