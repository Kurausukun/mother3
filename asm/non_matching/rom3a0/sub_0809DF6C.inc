	.syntax unified
sub_0809DF6C:
	push {lr}
	ldr r2, _0809DF7C
	str r2, [r0, #0x1c]
	bl sub_08080424
	pop {r0}
	bx r0
	.align 2, 0
_0809DF7C: .4byte vt_09F4B6A8
	.syntax divided
