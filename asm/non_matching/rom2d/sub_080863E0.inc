	.syntax unified
sub_080863E0:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08086404
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #2
	bl sub_08071334
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._5Combo
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08086404: .4byte vt_09F846C8
	.syntax divided
