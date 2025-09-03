	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080887C8
	str r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0808881C
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080887C8: .4byte vt_09F85058
	.syntax divided
