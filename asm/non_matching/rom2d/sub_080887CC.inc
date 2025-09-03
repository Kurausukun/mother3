	.syntax unified
	push {lr}
	adds r2, r0, #0
	ldr r0, _080887E8
	str r0, [r2, #0x18]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080887E2
	adds r0, r2, #0
	bl __builtin_delete
_080887E2:
	pop {r0}
	bx r0
	.align 2, 0
_080887E8: .4byte vt_09F85058
	.syntax divided
