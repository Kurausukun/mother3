	.syntax unified
sub_0809E120:
	push {lr}
	ldr r2, _0809E130
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809E130: .4byte vt_09F4B6A8
	.syntax divided
