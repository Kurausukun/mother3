	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0806D4AC
	str r0, [r4, #8]
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_0806D4D0
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806D4AC: .4byte vt_09F7FC30
	.syntax divided
