	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _080888FC
	str r0, [r5, #0x10]
	adds r0, r5, #0
	movs r1, #2
	bl sub_08088638
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _080888F4
	adds r0, r5, #0
	bl __builtin_delete
_080888F4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080888FC: .4byte vt_09F85068
	.syntax divided
