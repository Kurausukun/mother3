	.syntax unified
sub_0809E6EC:
	push {lr}
	ldr r2, _0809E6FC
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809E6FC: .4byte vt_09F4B6A8
	.syntax divided
