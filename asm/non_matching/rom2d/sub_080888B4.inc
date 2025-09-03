	.syntax unified
sub_080888B4:
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080888D0
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_08088628
	movs r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080888D0: .4byte vt_09F85068
	.syntax divided
