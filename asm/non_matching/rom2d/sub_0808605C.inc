	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08086080
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x44
	movs r1, #2
	bl sub_08071334
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080708A8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08086080: .4byte vt_09F843E8
	.syntax divided
