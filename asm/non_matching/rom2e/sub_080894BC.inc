	.syntax unified
sub_080894BC:
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080894D8
	str r0, [r4, #0x1c]
	movs r0, #0
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080894D8: .4byte vt_09F850A8
	.syntax divided
