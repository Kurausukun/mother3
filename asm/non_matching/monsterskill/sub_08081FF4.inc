	.syntax unified
sub_08081FF4:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806D8EC
	ldr r0, _0808201C
	str r0, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x98
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	adds r0, r4, #0
	adds r0, #0x9c
	bl sub_0806D478
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0808201C: .4byte vt_09F83418
	.syntax divided
