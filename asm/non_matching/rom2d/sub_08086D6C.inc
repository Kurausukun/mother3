	.syntax unified
sub_08086D6C:
	push {lr}
	ldr r2, _08086D7C
	str r2, [r0, #0x1c]
	bl sub_0806FFA8
	pop {r0}
	bx r0
	.align 2, 0
_08086D7C: .4byte vt_09F84AE8
	.syntax divided
