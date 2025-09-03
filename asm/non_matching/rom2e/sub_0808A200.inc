	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0808A228
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x30
	movs r1, #2
	bl sub_0806DD48
	ldr r0, _0808A22C
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080895C0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808A228: .4byte vt_09F85410
_0808A22C: .4byte vt_09F85378
	.syntax divided
