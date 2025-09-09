	.syntax unified
sub_0809E04C:
	push {lr}
	ldr r2, _0809E05C
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809E05C: .4byte vt_09F4B6A8
	.syntax divided
