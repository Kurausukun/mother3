	.syntax unified
sub_0809E390:
	push {lr}
	ldr r2, _0809E3A0
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809E3A0: .4byte vt_09F4B6A8
	.syntax divided
