	.syntax unified
sub_0806D55C:
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0806D57C
	str r0, [r4, #0x10]
	movs r0, #0
	strh r0, [r4]
	str r0, [r4, #4]
	strh r0, [r4, #8]
	str r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0806D5AC
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806D57C: .4byte vt_09F7FC40
	.syntax divided
