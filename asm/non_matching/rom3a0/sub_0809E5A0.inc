	.syntax unified
sub_0809E5A0:
	push {lr}
	ldr r2, _0809E5B0
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809E5B0: .4byte vt_09F4B6A8
	.syntax divided
